
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpp_demangle_data {int dummy; } ;


 int DEM_PUSH_STR (struct cpp_demangle_data*,char*) ;
 int cpp_demangle_read_offset_number (struct cpp_demangle_data*) ;

__attribute__((used)) static int
cpp_demangle_read_v_offset(struct cpp_demangle_data *ddata)
{

 if (ddata == ((void*)0))
  return (0);

 if (!DEM_PUSH_STR(ddata, "offset : "))
  return (0);

 if (!cpp_demangle_read_offset_number(ddata))
  return (0);

 if (!DEM_PUSH_STR(ddata, "virtual offset : "))
  return (0);

 return (!cpp_demangle_read_offset_number(ddata));
}
