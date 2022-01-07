
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct inode {int i_sb; int i_ctime; } ;
struct TYPE_6__ {scalar_t__ key; scalar_t__ bh; scalar_t__* p; } ;
typedef TYPE_1__ Indirect ;


 int CURRENT_TIME_SEC ;
 int EAGAIN ;
 scalar_t__ IS_SYNC (struct inode*) ;
 int bforget (scalar_t__) ;
 int dirty_indirect (scalar_t__,struct inode*) ;
 int mark_inode_dirty (struct inode*) ;
 int pointers_lock ;
 int sysv_free_block (int ,scalar_t__) ;
 int sysv_sync_inode (struct inode*) ;
 int verify_chain (TYPE_1__*,TYPE_1__*) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

__attribute__((used)) static inline int splice_branch(struct inode *inode,
    Indirect chain[],
    Indirect *where,
    int num)
{
 int i;


 write_lock(&pointers_lock);
 if (!verify_chain(chain, where-1) || *where->p)
  goto changed;
 *where->p = where->key;
 write_unlock(&pointers_lock);

 inode->i_ctime = CURRENT_TIME_SEC;


 if (where->bh)
  dirty_indirect(where->bh, inode);

 if (IS_SYNC(inode))
  sysv_sync_inode(inode);
 else
  mark_inode_dirty(inode);
 return 0;

changed:
 write_unlock(&pointers_lock);
 for (i = 1; i < num; i++)
  bforget(where[i].bh);
 for (i = 0; i < num; i++)
  sysv_free_block(inode->i_sb, where[i].key);
 return -EAGAIN;
}
