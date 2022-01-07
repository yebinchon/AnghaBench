
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_ops {int dummy; } ;


 int auto_solib_add ;
 int coff_solib_add (char*,int ,struct target_ops*,int ) ;

void
coff_solib_create_inferior_hook (void)
{
  coff_solib_add ((char *) 0, 0, (struct target_ops *) 0, auto_solib_add);
}
