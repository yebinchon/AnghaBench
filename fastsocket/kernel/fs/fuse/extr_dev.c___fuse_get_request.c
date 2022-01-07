
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_req {int count; } ;


 int atomic_inc (int *) ;

void __fuse_get_request(struct fuse_req *req)
{
 atomic_inc(&req->count);
}
