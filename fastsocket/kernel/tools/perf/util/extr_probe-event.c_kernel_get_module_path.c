
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dso {char const* long_name; } ;


 struct dso* kernel_get_module_dso (char const*) ;

const char *kernel_get_module_path(const char *module)
{
 struct dso *dso = kernel_get_module_dso(module);
 return (dso) ? dso->long_name : ((void*)0);
}
