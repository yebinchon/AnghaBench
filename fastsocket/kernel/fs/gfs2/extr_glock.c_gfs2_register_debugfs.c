
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 scalar_t__ debugfs_create_dir (char*,int *) ;
 scalar_t__ gfs2_root ;

int gfs2_register_debugfs(void)
{
 gfs2_root = debugfs_create_dir("gfs2", ((void*)0));
 return gfs2_root ? 0 : -ENOMEM;
}
