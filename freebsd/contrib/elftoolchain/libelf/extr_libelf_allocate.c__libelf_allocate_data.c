
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _Libelf_Data {int * d_scn; } ;
typedef int Elf_Scn ;


 int LIBELF_SET_ERROR (int ,int ) ;
 int RESOURCE ;
 struct _Libelf_Data* calloc (size_t,int) ;

struct _Libelf_Data *
_libelf_allocate_data(Elf_Scn *s)
{
 struct _Libelf_Data *d;

 if ((d = calloc((size_t) 1, sizeof(*d))) == ((void*)0)) {
  LIBELF_SET_ERROR(RESOURCE, 0);
  return (((void*)0));
 }

 d->d_scn = s;

 return (d);
}
