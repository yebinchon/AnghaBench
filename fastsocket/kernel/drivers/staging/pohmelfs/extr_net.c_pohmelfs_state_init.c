
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pohmelfs_sb {int dummy; } ;


 int ENOMEM ;
 int pohmelfs_copy_config (struct pohmelfs_sb*) ;
 int pohmelfs_state_exit (struct pohmelfs_sb*) ;

int pohmelfs_state_init(struct pohmelfs_sb *psb)
{
 int err = -ENOMEM;

 err = pohmelfs_copy_config(psb);
 if (err) {
  pohmelfs_state_exit(psb);
  return err;
 }

 return 0;
}
