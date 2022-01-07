
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* ev_name; char ev_type; char* ev_predicate; int * ev_acquire; } ;
typedef TYPE_1__ ls_event_info_t ;
typedef int hrtime_t ;


 scalar_t__ LS_HIST ;
 scalar_t__ LS_STACK (int) ;
 int dprog_add (char*,...) ;
 TYPE_1__* g_event_info ;
 char* g_ipredicate ;
 int * g_min_duration ;
 char* g_predicate ;
 scalar_t__ g_recsize ;
 scalar_t__ g_tracing ;
 int predicate_add (char**,char*,char*,int ) ;
 int predicate_destroy (char**) ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static void
dprog_addevent(int event)
{
 ls_event_info_t *info = &g_event_info[event];
 char *pred = ((void*)0);
 char stack[20];
 const char *arg0, *caller;
 char *arg1 = "arg1";
 char buf[80];
 hrtime_t dur;
 int depth;

 if (info->ev_name[0] == '\0')
  return;

 if (info->ev_type == 'I') {
  arg0 = "(uintptr_t)(curthread->td_oncpu << 16) + \n"
      "\t    0x01000000 + curthread->td_pri_class";

  caller = "(uintptr_t)arg0";
  arg1 = "arg2";
 } else {



  arg0 = "stringof(args[0]->lock_object.lo_name)";

  caller = "caller";
 }

 if (g_recsize > LS_HIST) {
  for (depth = 0; g_recsize > LS_STACK(depth); depth++)
   continue;

  if (g_tracing) {
   (void) sprintf(stack, "\tstack(%d);\n", depth);
  } else {
   (void) sprintf(stack, ", stack(%d)", depth);
  }
 } else {
  (void) sprintf(stack, "");
 }

 if (info->ev_acquire != ((void*)0)) {





  dprog_add("%s\n", info->ev_acquire);
  predicate_add(&pred, info->ev_predicate, ((void*)0), 0);
  predicate_add(&pred, g_predicate, ((void*)0), 0);
  if (pred != ((void*)0))
   dprog_add("/%s/\n", pred);

  dprog_add("{\n");
  (void) sprintf(buf, "self->ev%d[(uintptr_t)arg0]", event);

  if (info->ev_type == 'H') {
   dprog_add("\t%s = timestamp;\n", buf);
  } else {





   dprog_add("\t%s++;\n", buf);
  }

  dprog_add("}\n\n");
  predicate_destroy(&pred);
  pred = ((void*)0);

  if (info->ev_type == 'E') {







   dprog_add("%s\n", info->ev_name);
   dprog_add("/%s/\n{\n\t%s--;\n}\n\n", buf, buf);
  }

  predicate_add(&pred, buf, ((void*)0), 0);

  if (info->ev_type == 'H') {
   (void) sprintf(buf, "timestamp -\n\t    "
       "self->ev%d[(uintptr_t)arg0]", event);
  }

  arg1 = buf;
 } else {
  predicate_add(&pred, info->ev_predicate, ((void*)0), 0);
  if (info->ev_type != 'I')
   predicate_add(&pred, g_predicate, ((void*)0), 0);
  else
   predicate_add(&pred, g_ipredicate, ((void*)0), 0);
 }

 if ((dur = g_min_duration[event]) != 0)
  predicate_add(&pred, arg1, ">=", dur);

 dprog_add("%s\n", info->ev_name);

 if (pred != ((void*)0))
  dprog_add("/%s/\n", pred);
 predicate_destroy(&pred);

 dprog_add("{\n");

 if (g_tracing) {
  dprog_add("\ttrace(%dULL);\n", event);
  dprog_add("\ttrace(%s);\n", arg0);
  dprog_add("\ttrace(%s);\n", caller);
  dprog_add(stack);
 } else {







  dprog_add("\t@avg[%dULL, %s, %s%s] = avg(%s);\n",
      event, arg0, caller, stack, arg1);

  if (g_recsize >= LS_HIST) {
   dprog_add("\t@hist[%dULL, %s, %s%s] = quantize"
       "(%s);\n", event, arg0, caller, stack, arg1);
  }
 }

 if (info->ev_acquire != ((void*)0))
  dprog_add("\tself->ev%d[arg0] = 0;\n", event);

 dprog_add("}\n\n");
}
