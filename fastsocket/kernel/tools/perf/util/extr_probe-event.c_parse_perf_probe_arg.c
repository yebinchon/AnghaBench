
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_probe_arg_field {int ref; char* name; struct perf_probe_arg_field* next; int index; } ;
struct perf_probe_arg {char* var; int * name; struct perf_probe_arg_field* field; int * type; } ;


 int EINVAL ;
 int ENOMEM ;
 int is_c_varname (char*) ;
 int pr_debug (char*,char*,...) ;
 int semantic_error (char*,...) ;
 char* strchr (char*,char) ;
 void* strdup (char*) ;
 void* strndup (char*,int) ;
 char* strpbrk (char*,char*) ;
 int strtol (char*,char**,int ) ;
 struct perf_probe_arg_field* zalloc (int) ;

__attribute__((used)) static int parse_perf_probe_arg(char *str, struct perf_probe_arg *arg)
{
 char *tmp, *goodname;
 struct perf_probe_arg_field **fieldp;

 pr_debug("parsing arg: %s into ", str);

 tmp = strchr(str, '=');
 if (tmp) {
  arg->name = strndup(str, tmp - str);
  if (arg->name == ((void*)0))
   return -ENOMEM;
  pr_debug("name:%s ", arg->name);
  str = tmp + 1;
 }

 tmp = strchr(str, ':');
 if (tmp) {
  *tmp = '\0';
  arg->type = strdup(tmp + 1);
  if (arg->type == ((void*)0))
   return -ENOMEM;
  pr_debug("type:%s ", arg->type);
 }

 tmp = strpbrk(str, "-.[");
 if (!is_c_varname(str) || !tmp) {

  arg->var = strdup(str);
  if (arg->var == ((void*)0))
   return -ENOMEM;
  pr_debug("%s\n", arg->var);
  return 0;
 }


 arg->var = strndup(str, tmp - str);
 if (arg->var == ((void*)0))
  return -ENOMEM;
 goodname = arg->var;
 pr_debug("%s, ", arg->var);
 fieldp = &arg->field;

 do {
  *fieldp = zalloc(sizeof(struct perf_probe_arg_field));
  if (*fieldp == ((void*)0))
   return -ENOMEM;
  if (*tmp == '[') {
   str = tmp;
   (*fieldp)->index = strtol(str + 1, &tmp, 0);
   (*fieldp)->ref = 1;
   if (*tmp != ']' || tmp == str + 1) {
    semantic_error("Array index must be a"
      " number.\n");
    return -EINVAL;
   }
   tmp++;
   if (*tmp == '\0')
    tmp = ((void*)0);
  } else {
   if (*tmp == '.') {
    str = tmp + 1;
    (*fieldp)->ref = 0;
   } else if (tmp[1] == '>') {
    str = tmp + 2;
    (*fieldp)->ref = 1;
   } else {
    semantic_error("Argument parse error: %s\n",
            str);
    return -EINVAL;
   }
   tmp = strpbrk(str, "-.[");
  }
  if (tmp) {
   (*fieldp)->name = strndup(str, tmp - str);
   if ((*fieldp)->name == ((void*)0))
    return -ENOMEM;
   if (*str != '[')
    goodname = (*fieldp)->name;
   pr_debug("%s(%d), ", (*fieldp)->name, (*fieldp)->ref);
   fieldp = &(*fieldp)->next;
  }
 } while (tmp);
 (*fieldp)->name = strdup(str);
 if ((*fieldp)->name == ((void*)0))
  return -ENOMEM;
 if (*str != '[')
  goodname = (*fieldp)->name;
 pr_debug("%s(%d)\n", (*fieldp)->name, (*fieldp)->ref);


 if (!arg->name) {
  arg->name = strdup(goodname);
  if (arg->name == ((void*)0))
   return -ENOMEM;
 }
 return 0;
}
