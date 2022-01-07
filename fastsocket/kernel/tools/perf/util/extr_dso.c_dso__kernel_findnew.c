
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct machine {int kernel_dsos; } ;
struct dso {int kernel; } ;


 struct dso* __dsos__findnew (int *,char const*) ;
 int dso__set_short_name (struct dso*,char const*) ;

struct dso *dso__kernel_findnew(struct machine *machine, const char *name,
      const char *short_name, int dso_type)
{



 struct dso *dso = __dsos__findnew(&machine->kernel_dsos, name);





 if (dso != ((void*)0)) {
  dso__set_short_name(dso, short_name);
  dso->kernel = dso_type;
 }

 return dso;
}
