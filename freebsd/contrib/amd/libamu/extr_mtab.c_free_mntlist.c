
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mntlist ;


 int discard_mntlist (int *) ;
 int unlock_mntlist () ;

void
free_mntlist(mntlist *mp)
{
  discard_mntlist(mp);



}
