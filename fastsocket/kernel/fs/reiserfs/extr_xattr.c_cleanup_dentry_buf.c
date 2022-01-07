
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reiserfs_dentry_buf {int count; scalar_t__* dentries; } ;


 int dput (scalar_t__) ;

__attribute__((used)) static void
cleanup_dentry_buf(struct reiserfs_dentry_buf *buf)
{
 int i;
 for (i = 0; i < buf->count; i++)
  if (buf->dentries[i])
   dput(buf->dentries[i]);
}
