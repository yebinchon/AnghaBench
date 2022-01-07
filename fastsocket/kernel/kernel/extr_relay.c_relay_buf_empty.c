
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rchan_buf {scalar_t__ subbufs_consumed; scalar_t__ subbufs_produced; } ;



__attribute__((used)) static int relay_buf_empty(struct rchan_buf *buf)
{
 return (buf->subbufs_produced - buf->subbufs_consumed) ? 0 : 1;
}
