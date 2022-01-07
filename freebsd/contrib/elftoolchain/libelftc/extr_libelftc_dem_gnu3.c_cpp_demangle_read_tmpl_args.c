
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vector_str {size_t size; int * container; } ;
struct cpp_demangle_data {char* cur; int is_tmpl; int cmd; int tmpl; struct vector_str output; } ;


 int CPP_DEMANGLE_TRY_LIMIT ;
 int DEM_PUSH_STR (struct cpp_demangle_data*,char*) ;
 int READ_TMPL ;
 int assert (int) ;
 int cpp_demangle_read_tmpl_arg (struct cpp_demangle_data*) ;
 int free (char*) ;
 int strncmp (int ,char*,int) ;
 int vector_read_cmd_pop (int *) ;
 int vector_read_cmd_push (int *,int ,int *) ;
 int vector_str_find (int *,char*,size_t) ;
 int vector_str_push (int *,char*,size_t) ;
 char* vector_str_substr (struct vector_str*,size_t,int,size_t*) ;

__attribute__((used)) static int
cpp_demangle_read_tmpl_args(struct cpp_demangle_data *ddata)
{
 struct vector_str *v;
 size_t arg_len, idx, limit, size;
 char *arg;

 if (ddata == ((void*)0) || *ddata->cur == '\0')
  return (0);

 ++ddata->cur;

 if (!vector_read_cmd_push(&ddata->cmd, READ_TMPL, ((void*)0)))
  return (0);

 if (!DEM_PUSH_STR(ddata, "<"))
  return (0);

 limit = 0;
 v = &ddata->output;
 for (;;) {
  idx = v->size;
  if (!cpp_demangle_read_tmpl_arg(ddata))
   return (0);
  if ((arg = vector_str_substr(v, idx, v->size - 1, &arg_len)) ==
      ((void*)0))
   return (0);
  if (!vector_str_find(&ddata->tmpl, arg, arg_len) &&
      !vector_str_push(&ddata->tmpl, arg, arg_len)) {
   free(arg);
   return (0);
  }

  free(arg);

  if (*ddata->cur == 'E') {
   ++ddata->cur;
   size = v->size;
   assert(size > 0);
   if (!strncmp(v->container[size - 1], ">", 1)) {
    if (!DEM_PUSH_STR(ddata, " >"))
     return (0);
   } else if (!DEM_PUSH_STR(ddata, ">"))
    return (0);
   ddata->is_tmpl = 1;
   break;
  } else if (*ddata->cur != 'I' &&
      !DEM_PUSH_STR(ddata, ", "))
   return (0);

  if (limit++ > CPP_DEMANGLE_TRY_LIMIT)
   return (0);
 }

 return (vector_read_cmd_pop(&ddata->cmd));
}
