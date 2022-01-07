
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_conn {int count; } ;


 int atomic_inc (int *) ;

struct fuse_conn *fuse_conn_get(struct fuse_conn *fc)
{
 atomic_inc(&fc->count);
 return fc;
}
