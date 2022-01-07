
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vector_str {size_t size; } ;
struct cpp_demangle_data {struct vector_str output; } ;


 int cpp_demangle_read_expression (struct cpp_demangle_data*) ;
 int free (char*) ;
 int vector_str_pop (struct vector_str*) ;
 char* vector_str_substr (struct vector_str*,size_t,int,size_t*) ;

__attribute__((used)) static int
cpp_demangle_read_expression_flat(struct cpp_demangle_data *ddata, char **str)
{
 struct vector_str *output;
 size_t i, p_idx, idx, exp_len;
 char *exp;

 output = &ddata->output;

 p_idx = output->size;

 if (!cpp_demangle_read_expression(ddata))
  return (0);

 if ((exp = vector_str_substr(output, p_idx, output->size - 1,
     &exp_len)) == ((void*)0))
  return (0);

 idx = output->size;
 for (i = p_idx; i < idx; ++i) {
  if (!vector_str_pop(output)) {
   free(exp);
   return (0);
  }
 }

 *str = exp;

 return (1);
}
