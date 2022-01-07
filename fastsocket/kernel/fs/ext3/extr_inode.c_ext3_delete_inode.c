
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_8__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct inode {scalar_t__ i_blocks; scalar_t__ i_size; int i_data; } ;
struct TYPE_9__ {int h_sync; } ;
typedef TYPE_1__ handle_t ;
struct TYPE_10__ {int i_dtime; } ;


 TYPE_8__* EXT3_I (struct inode*) ;
 scalar_t__ IS_ERR (TYPE_1__*) ;
 scalar_t__ IS_SYNC (struct inode*) ;
 int clear_inode (struct inode*) ;
 int ext3_free_inode (TYPE_1__*,struct inode*) ;
 int ext3_journal_stop (TYPE_1__*) ;
 scalar_t__ ext3_mark_inode_dirty (TYPE_1__*,struct inode*) ;
 int ext3_orphan_del (TYPE_1__*,struct inode*) ;
 int ext3_truncate (struct inode*) ;
 int get_seconds () ;
 scalar_t__ is_bad_inode (struct inode*) ;
 TYPE_1__* start_transaction (struct inode*) ;
 int trace_ext3_delete_inode (struct inode*) ;
 int truncate_inode_pages (int *,int ) ;

void ext3_delete_inode (struct inode * inode)
{
 handle_t *handle;

 truncate_inode_pages(&inode->i_data, 0);

 if (is_bad_inode(inode))
  goto no_delete;

 trace_ext3_delete_inode(inode);
 handle = start_transaction(inode);
 if (IS_ERR(handle)) {





  ext3_orphan_del(((void*)0), inode);
  goto no_delete;
 }

 if (IS_SYNC(inode))
  handle->h_sync = 1;
 inode->i_size = 0;
 if (inode->i_blocks)
  ext3_truncate(inode);
 ext3_orphan_del(handle, inode);
 EXT3_I(inode)->i_dtime = get_seconds();
 if (ext3_mark_inode_dirty(handle, inode))

  clear_inode(inode);
 else
  ext3_free_inode(handle, inode);
 ext3_journal_stop(handle);
 return;
no_delete:
 clear_inode(inode);
}
