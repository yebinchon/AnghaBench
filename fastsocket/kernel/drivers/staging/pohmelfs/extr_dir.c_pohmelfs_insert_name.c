
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pohmelfs_name {int sync_create_entry; scalar_t__ len; } ;
struct pohmelfs_inode {int sync_create_list; int total_len; } ;


 int EEXIST ;
 int list_add_tail (int *,int *) ;
 struct pohmelfs_name* pohmelfs_insert_hash (struct pohmelfs_inode*,struct pohmelfs_name*) ;

__attribute__((used)) static int pohmelfs_insert_name(struct pohmelfs_inode *parent, struct pohmelfs_name *n)
{
 struct pohmelfs_name *name;

 name = pohmelfs_insert_hash(parent, n);
 if (name)
  return -EEXIST;

 parent->total_len += n->len;
 list_add_tail(&n->sync_create_entry, &parent->sync_create_list);

 return 0;
}
