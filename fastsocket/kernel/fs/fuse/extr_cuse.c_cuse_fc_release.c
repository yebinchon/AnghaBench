
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_conn {int dummy; } ;
struct cuse_conn {int dummy; } ;


 struct cuse_conn* fc_to_cc (struct fuse_conn*) ;
 int kfree (struct cuse_conn*) ;

__attribute__((used)) static void cuse_fc_release(struct fuse_conn *fc)
{
 struct cuse_conn *cc = fc_to_cc(fc);
 kfree(cc);
}
