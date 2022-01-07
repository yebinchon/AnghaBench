
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct trace_probe {TYPE_1__* args; int nr_args; } ;
struct TYPE_3__ {int name; } ;


 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct trace_probe*) ;
 char* KPROBE_EVENT_SYSTEM ;
 int MAX_EVENT_NAME_LEN ;
 int MAX_TRACE_ARGS ;
 int PTR_ERR (struct trace_probe*) ;
 struct trace_probe* alloc_trace_probe (char*,char*,void*,char*,unsigned long,int,int) ;
 scalar_t__ conflict_field_name (int,TYPE_1__*,int) ;
 struct trace_probe* find_trace_probe (char*,char*) ;
 int free_trace_probe (struct trace_probe*) ;
 int is_good_name (int) ;
 scalar_t__ isdigit (char) ;
 void* kstrdup (char*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int parse_probe_arg (char*,struct trace_probe*,TYPE_1__*,int) ;
 int pr_info (char*,...) ;
 int probe_lock ;
 int register_trace_probe (struct trace_probe*) ;
 int snprintf (char*,int,char*,int,...) ;
 int split_symbol_offset (char*,unsigned long*) ;
 char* strchr (char*,char) ;
 int strict_strtoul (char*,int ,unsigned long*) ;
 scalar_t__ strlen (char*) ;
 int unregister_trace_probe (struct trace_probe*) ;

__attribute__((used)) static int create_trace_probe(int argc, char **argv)
{
 struct trace_probe *tp;
 int i, ret = 0;
 bool is_return = 0, is_delete = 0;
 char *symbol = ((void*)0), *event = ((void*)0), *group = ((void*)0);
 char *arg;
 unsigned long offset = 0;
 void *addr = ((void*)0);
 char buf[MAX_EVENT_NAME_LEN];


 if (argv[0][0] == 'p')
  is_return = 0;
 else if (argv[0][0] == 'r')
  is_return = 1;
 else if (argv[0][0] == '-')
  is_delete = 1;
 else {
  pr_info("Probe definition must be started with 'p', 'r' or"
   " '-'.\n");
  return -EINVAL;
 }

 if (argv[0][1] == ':') {
  event = &argv[0][2];
  if (strchr(event, '/')) {
   group = event;
   event = strchr(group, '/') + 1;
   event[-1] = '\0';
   if (strlen(group) == 0) {
    pr_info("Group name is not specified\n");
    return -EINVAL;
   }
  }
  if (strlen(event) == 0) {
   pr_info("Event name is not specified\n");
   return -EINVAL;
  }
 }
 if (!group)
  group = KPROBE_EVENT_SYSTEM;

 if (is_delete) {
  if (!event) {
   pr_info("Delete command needs an event name.\n");
   return -EINVAL;
  }
  mutex_lock(&probe_lock);
  tp = find_trace_probe(event, group);
  if (!tp) {
   mutex_unlock(&probe_lock);
   pr_info("Event %s/%s doesn't exist.\n", group, event);
   return -ENOENT;
  }

  ret = unregister_trace_probe(tp);
  if (ret == 0)
   free_trace_probe(tp);
  mutex_unlock(&probe_lock);
  return ret;
 }

 if (argc < 2) {
  pr_info("Probe point is not specified.\n");
  return -EINVAL;
 }
 if (isdigit(argv[1][0])) {
  if (is_return) {
   pr_info("Return probe point must be a symbol.\n");
   return -EINVAL;
  }

  ret = strict_strtoul(&argv[1][0], 0, (unsigned long *)&addr);
  if (ret) {
   pr_info("Failed to parse address.\n");
   return ret;
  }
 } else {

  symbol = argv[1];

  ret = split_symbol_offset(symbol, &offset);
  if (ret) {
   pr_info("Failed to parse symbol.\n");
   return ret;
  }
  if (offset && is_return) {
   pr_info("Return probe must be used without offset.\n");
   return -EINVAL;
  }
 }
 argc -= 2; argv += 2;


 if (!event) {

  if (symbol)
   snprintf(buf, MAX_EVENT_NAME_LEN, "%c_%s_%ld",
     is_return ? 'r' : 'p', symbol, offset);
  else
   snprintf(buf, MAX_EVENT_NAME_LEN, "%c_0x%p",
     is_return ? 'r' : 'p', addr);
  event = buf;
 }
 tp = alloc_trace_probe(group, event, addr, symbol, offset, argc,
          is_return);
 if (IS_ERR(tp)) {
  pr_info("Failed to allocate trace_probe.(%d)\n",
   (int)PTR_ERR(tp));
  return PTR_ERR(tp);
 }


 ret = 0;
 for (i = 0; i < argc && i < MAX_TRACE_ARGS; i++) {

  tp->nr_args++;


  arg = strchr(argv[i], '=');
  if (arg) {
   *arg++ = '\0';
   tp->args[i].name = kstrdup(argv[i], GFP_KERNEL);
  } else {
   arg = argv[i];

   snprintf(buf, MAX_EVENT_NAME_LEN, "arg%d", i + 1);
   tp->args[i].name = kstrdup(buf, GFP_KERNEL);
  }

  if (!tp->args[i].name) {
   pr_info("Failed to allocate argument[%d] name.\n", i);
   ret = -ENOMEM;
   goto error;
  }

  if (!is_good_name(tp->args[i].name)) {
   pr_info("Invalid argument[%d] name: %s\n",
    i, tp->args[i].name);
   ret = -EINVAL;
   goto error;
  }

  if (conflict_field_name(tp->args[i].name, tp->args, i)) {
   pr_info("Argument[%d] name '%s' conflicts with "
    "another field.\n", i, argv[i]);
   ret = -EINVAL;
   goto error;
  }


  ret = parse_probe_arg(arg, tp, &tp->args[i], is_return);
  if (ret) {
   pr_info("Parse error at argument[%d]. (%d)\n", i, ret);
   goto error;
  }
 }

 ret = register_trace_probe(tp);
 if (ret)
  goto error;
 return 0;

error:
 free_trace_probe(tp);
 return ret;
}
