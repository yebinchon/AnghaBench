
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rchan_buf {int early_bytes; struct dentry* dentry; } ;
struct dentry {TYPE_1__* d_inode; } ;
struct TYPE_2__ {int i_size; } ;



__attribute__((used)) static inline void relay_set_buf_dentry(struct rchan_buf *buf,
     struct dentry *dentry)
{
 buf->dentry = dentry;
 buf->dentry->d_inode->i_size = buf->early_bytes;
}
