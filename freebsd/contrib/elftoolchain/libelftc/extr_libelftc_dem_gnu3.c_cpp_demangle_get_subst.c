
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t size; int * container; } ;
struct cpp_demangle_data {int cur; TYPE_1__ subst; } ;


 int cpp_demangle_push_str (struct cpp_demangle_data*,int ,size_t) ;
 size_t strlen (int ) ;

__attribute__((used)) static int
cpp_demangle_get_subst(struct cpp_demangle_data *ddata, size_t idx)
{
 size_t len;

 if (ddata == ((void*)0) || ddata->subst.size <= idx)
  return (0);
 if ((len = strlen(ddata->subst.container[idx])) == 0)
  return (0);
 if (!cpp_demangle_push_str(ddata, ddata->subst.container[idx], len))
  return (0);


 ++ddata->cur;

 return (1);
}
