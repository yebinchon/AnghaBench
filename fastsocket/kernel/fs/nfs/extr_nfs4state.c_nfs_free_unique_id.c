
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb_root {int dummy; } ;
struct nfs_unique_id {int rb_node; } ;


 int rb_erase (int *,struct rb_root*) ;

__attribute__((used)) static void nfs_free_unique_id(struct rb_root *root, struct nfs_unique_id *id)
{
 rb_erase(&id->rb_node, root);
}
