
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int unlink (int ) ;
 int vdso_file ;
 scalar_t__ vdso_found ;

void vdso__exit(void)
{
 if (vdso_found)
  unlink(vdso_file);
}
