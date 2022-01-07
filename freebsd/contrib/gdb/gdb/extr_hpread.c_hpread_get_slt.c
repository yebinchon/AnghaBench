
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union sltentry {int dummy; } sltentry ;
struct objfile {int dummy; } ;


 int * SLT (struct objfile*) ;

__attribute__((used)) static union sltentry *
hpread_get_slt (int index, struct objfile *objfile)
{
  return (union sltentry *) &(SLT (objfile)[index * sizeof (union sltentry)]);
}
