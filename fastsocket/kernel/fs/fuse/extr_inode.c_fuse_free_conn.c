
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_conn {int dummy; } ;


 int kfree (struct fuse_conn*) ;

__attribute__((used)) static void fuse_free_conn(struct fuse_conn *fc)
{
 kfree(fc);
}
