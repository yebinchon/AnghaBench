
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpp_demangle_data {int subst; } ;


 int vector_str_find (int *,char const*,size_t) ;
 int vector_str_push (int *,char const*,size_t) ;

__attribute__((used)) static int
cpp_demangle_push_subst(struct cpp_demangle_data *ddata, const char *str,
    size_t len)
{

 if (ddata == ((void*)0) || str == ((void*)0) || len == 0)
  return (0);

 if (!vector_str_find(&ddata->subst, str, len))
  return (vector_str_push(&ddata->subst, str, len));

 return (1);
}
