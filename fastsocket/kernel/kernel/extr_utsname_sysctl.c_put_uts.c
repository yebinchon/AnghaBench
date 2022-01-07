
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ctl_table ;


 int up_read (int *) ;
 int up_write (int *) ;
 int uts_sem ;

__attribute__((used)) static void put_uts(ctl_table *table, int write, void *which)
{
 if (!write)
  up_read(&uts_sem);
 else
  up_write(&uts_sem);
}
