
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mon_bus {int * dent_s; int * dent_t; int * dent_u; } ;


 int debugfs_remove (int *) ;

void mon_text_del(struct mon_bus *mbus)
{
 debugfs_remove(mbus->dent_u);
 if (mbus->dent_t != ((void*)0))
  debugfs_remove(mbus->dent_t);
 debugfs_remove(mbus->dent_s);
}
