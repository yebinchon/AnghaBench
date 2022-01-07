
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objfile {int dummy; } ;


 struct objfile* allocate_objfile (int *,int ) ;
 struct objfile* dynamics_objfile ;

__attribute__((used)) static struct objfile *
get_dynamics_objfile (void)
{
  if (dynamics_objfile == ((void*)0))
    {
      dynamics_objfile = allocate_objfile (((void*)0), 0);
    }
  return dynamics_objfile;
}
