
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_req {int dummy; } ;
struct fuse_conn {int dummy; } ;


 struct fuse_req* fuse_get_req (struct fuse_conn*,int ) ;

__attribute__((used)) static inline struct fuse_req *fuse_get_req_nopages(struct fuse_conn *fc)
{
 return fuse_get_req(fc, 0);
}
