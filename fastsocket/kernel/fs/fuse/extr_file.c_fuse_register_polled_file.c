
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb_node {int dummy; } ;
struct fuse_file {int polled_node; int kh; } ;
struct fuse_conn {int lock; int polled_files; } ;


 int BUG_ON (struct rb_node*) ;
 scalar_t__ RB_EMPTY_NODE (int *) ;
 struct rb_node** fuse_find_polled_node (struct fuse_conn*,int ,struct rb_node**) ;
 int rb_insert_color (int *,int *) ;
 int rb_link_node (int *,struct rb_node*,struct rb_node**) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void fuse_register_polled_file(struct fuse_conn *fc,
          struct fuse_file *ff)
{
 spin_lock(&fc->lock);
 if (RB_EMPTY_NODE(&ff->polled_node)) {
  struct rb_node **link, *parent;

  link = fuse_find_polled_node(fc, ff->kh, &parent);
  BUG_ON(*link);
  rb_link_node(&ff->polled_node, parent, link);
  rb_insert_color(&ff->polled_node, &fc->polled_files);
 }
 spin_unlock(&fc->lock);
}
