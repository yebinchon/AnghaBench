
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adfs_dir {int nr_buffers; int * sb; int * bh; } ;


 int brelse (int ) ;

__attribute__((used)) static void
adfs_fplus_free(struct adfs_dir *dir)
{
 int i;

 for (i = 0; i < dir->nr_buffers; i++)
  brelse(dir->bh[i]);
 dir->sb = ((void*)0);
}
