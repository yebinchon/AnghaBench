
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_inode {int * i_hash_cache; int * i_res; int i_trunc_list; int i_rw_mutex; int i_inode; } ;


 int INIT_LIST_HEAD (int *) ;
 int init_rwsem (int *) ;
 int inode_init_once (int *) ;

__attribute__((used)) static void gfs2_init_inode_once(void *foo)
{
 struct gfs2_inode *ip = foo;

 inode_init_once(&ip->i_inode);
 init_rwsem(&ip->i_rw_mutex);
 INIT_LIST_HEAD(&ip->i_trunc_list);
 ip->i_res = ((void*)0);
 ip->i_hash_cache = ((void*)0);
}
