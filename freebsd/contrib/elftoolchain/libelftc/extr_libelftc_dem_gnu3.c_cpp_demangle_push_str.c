
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpp_demangle_data {int is_tmpl; int cur_output; } ;


 int vector_str_push (int ,char const*,size_t) ;

__attribute__((used)) static int
cpp_demangle_push_str(struct cpp_demangle_data *ddata, const char *str,
    size_t len)
{

 if (ddata == ((void*)0) || str == ((void*)0) || len == 0)
  return (0);






 ddata->is_tmpl = 0;

 return (vector_str_push(ddata->cur_output, str, len));
}
