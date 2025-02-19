
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t size; } ;
struct cpp_demangle_data {char* cur; TYPE_1__ output; } ;


 int DEM_PUSH_STR (struct cpp_demangle_data*,char*) ;
 scalar_t__ ELFTC_ISDIGIT (char) ;
 int assert (int) ;
 int cpp_demangle_push_str (struct cpp_demangle_data*,char const*,size_t) ;
 int cpp_demangle_read_expression (struct cpp_demangle_data*) ;
 int cpp_demangle_read_type (struct cpp_demangle_data*,int *) ;
 int free (char*) ;
 int vector_str_pop (TYPE_1__*) ;
 char* vector_str_substr (TYPE_1__*,size_t,int,size_t*) ;

__attribute__((used)) static int
cpp_demangle_read_array(struct cpp_demangle_data *ddata)
{
 size_t i, num_len, exp_len, p_idx, idx;
 const char *num;
 char *exp;

 if (ddata == ((void*)0) || *(++ddata->cur) == '\0')
  return (0);

 if (*ddata->cur == '_') {
  if (*(++ddata->cur) == '\0')
   return (0);

  if (!cpp_demangle_read_type(ddata, ((void*)0)))
   return (0);

  if (!DEM_PUSH_STR(ddata, "[]"))
   return (0);
 } else {
  if (ELFTC_ISDIGIT(*ddata->cur) != 0) {
   num = ddata->cur;
   while (ELFTC_ISDIGIT(*ddata->cur) != 0)
    ++ddata->cur;
   if (*ddata->cur != '_')
    return (0);
   num_len = ddata->cur - num;
   assert(num_len > 0);
   if (*(++ddata->cur) == '\0')
    return (0);
   if (!cpp_demangle_read_type(ddata, ((void*)0)))
    return (0);
   if (!DEM_PUSH_STR(ddata, "["))
    return (0);
   if (!cpp_demangle_push_str(ddata, num, num_len))
    return (0);
   if (!DEM_PUSH_STR(ddata, "]"))
    return (0);
  } else {
   p_idx = ddata->output.size;
   if (!cpp_demangle_read_expression(ddata))
    return (0);
   if ((exp = vector_str_substr(&ddata->output, p_idx,
     ddata->output.size - 1, &exp_len)) == ((void*)0))
    return (0);
   idx = ddata->output.size;
   for (i = p_idx; i < idx; ++i)
    if (!vector_str_pop(&ddata->output)) {
     free(exp);
     return (0);
    }
   if (*ddata->cur != '_') {
    free(exp);
    return (0);
   }
   ++ddata->cur;
   if (*ddata->cur == '\0') {
    free(exp);
    return (0);
   }
   if (!cpp_demangle_read_type(ddata, ((void*)0))) {
    free(exp);
    return (0);
   }
   if (!DEM_PUSH_STR(ddata, "[")) {
    free(exp);
    return (0);
   }
   if (!cpp_demangle_push_str(ddata, exp, exp_len)) {
    free(exp);
    return (0);
   }
   if (!DEM_PUSH_STR(ddata, "]")) {
    free(exp);
    return (0);
   }
   free(exp);
  }
 }

 return (1);
}
