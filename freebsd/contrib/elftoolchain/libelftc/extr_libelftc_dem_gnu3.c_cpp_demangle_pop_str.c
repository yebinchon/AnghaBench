
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpp_demangle_data {int cur_output; } ;


 int vector_str_pop (int ) ;

__attribute__((used)) static int
cpp_demangle_pop_str(struct cpp_demangle_data *ddata)
{

 if (ddata == ((void*)0))
  return (0);

 return (vector_str_pop(ddata->cur_output));
}
