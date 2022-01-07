
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int xfs_inode_t ;
struct TYPE_6__ {int resynch; int flags; char* alist; int bufsize; int firstu; int put_listent; TYPE_2__* cursor; int * dp; } ;
typedef TYPE_1__ xfs_attr_list_context_t ;
struct attrlist {int* al_offset; scalar_t__ al_more; scalar_t__ al_count; } ;
typedef int context ;
struct TYPE_7__ {scalar_t__ initted; scalar_t__ offset; scalar_t__ blkno; scalar_t__ hashval; scalar_t__ pad2; scalar_t__ pad1; } ;
typedef TYPE_2__ attrlist_cursor_kern_t ;


 int ASSERT (int) ;
 int ATTR_KERNOVAL ;
 int EFAULT ;
 int EINVAL ;
 int XFS_ERROR (int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int xfs_attr_list_int (TYPE_1__*) ;
 int xfs_attr_put_listent ;

int
xfs_attr_list(
 xfs_inode_t *dp,
 char *buffer,
 int bufsize,
 int flags,
 attrlist_cursor_kern_t *cursor)
{
 xfs_attr_list_context_t context;
 struct attrlist *alist;
 int error;




 if (cursor->pad1 || cursor->pad2)
  return(XFS_ERROR(EINVAL));
 if ((cursor->initted == 0) &&
     (cursor->hashval || cursor->blkno || cursor->offset))
  return XFS_ERROR(EINVAL);




 if (((long)buffer) & (sizeof(int)-1))
  return XFS_ERROR(EFAULT);
 if (flags & ATTR_KERNOVAL)
  bufsize = 0;




 memset(&context, 0, sizeof(context));
 context.dp = dp;
 context.cursor = cursor;
 context.resynch = 1;
 context.flags = flags;
 context.alist = buffer;
 context.bufsize = (bufsize & ~(sizeof(int)-1));
 context.firstu = context.bufsize;
 context.put_listent = xfs_attr_put_listent;

 alist = (struct attrlist *)context.alist;
 alist->al_count = 0;
 alist->al_more = 0;
 alist->al_offset[0] = context.bufsize;

 error = xfs_attr_list_int(&context);
 ASSERT(error >= 0);
 return error;
}
