
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int inotify_mutex; } ;
struct audit_tree {int same_root; struct audit_chunk* root; int chunks; scalar_t__ goner; } ;
struct audit_chunk {int dead; int trees; TYPE_1__* owners; int watch; } ;
struct TYPE_2__ {unsigned int index; int list; struct audit_tree* owner; } ;


 int ENOMEM ;
 int ENOSPC ;
 int IN_DELETE_SELF ;
 int IN_IGNORED ;
 struct audit_chunk* alloc_chunk (int) ;
 int free_chunk (struct audit_chunk*) ;
 int get_tree (struct audit_tree*) ;
 int hash_lock ;
 scalar_t__ inotify_add_watch (int ,int *,struct inode*,int) ;
 int inotify_evict_watch (int *) ;
 int insert_hash (struct audit_chunk*) ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_inotify_watch (int *) ;
 int rtree_ih ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int create_chunk(struct inode *inode, struct audit_tree *tree)
{
 struct audit_chunk *chunk = alloc_chunk(1);
 if (!chunk)
  return -ENOMEM;

 if (inotify_add_watch(rtree_ih, &chunk->watch, inode, IN_IGNORED | IN_DELETE_SELF) < 0) {
  free_chunk(chunk);
  return -ENOSPC;
 }

 mutex_lock(&inode->inotify_mutex);
 spin_lock(&hash_lock);
 if (tree->goner) {
  spin_unlock(&hash_lock);
  chunk->dead = 1;
  inotify_evict_watch(&chunk->watch);
  mutex_unlock(&inode->inotify_mutex);
  put_inotify_watch(&chunk->watch);
  return 0;
 }
 chunk->owners[0].index = (1U << 31);
 chunk->owners[0].owner = tree;
 get_tree(tree);
 list_add(&chunk->owners[0].list, &tree->chunks);
 if (!tree->root) {
  tree->root = chunk;
  list_add(&tree->same_root, &chunk->trees);
 }
 insert_hash(chunk);
 spin_unlock(&hash_lock);
 mutex_unlock(&inode->inotify_mutex);
 return 0;
}
