
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpp_demangle_data {char* cur; } ;


 int cpp_demangle_read_nv_offset (struct cpp_demangle_data*) ;
 int cpp_demangle_read_v_offset (struct cpp_demangle_data*) ;

__attribute__((used)) static int
cpp_demangle_read_offset(struct cpp_demangle_data *ddata)
{

 if (ddata == ((void*)0))
  return (0);

 if (*ddata->cur == 'h') {
  ++ddata->cur;
  return (cpp_demangle_read_nv_offset(ddata));
 } else if (*ddata->cur == 'v') {
  ++ddata->cur;
  return (cpp_demangle_read_v_offset(ddata));
 }

 return (0);
}
