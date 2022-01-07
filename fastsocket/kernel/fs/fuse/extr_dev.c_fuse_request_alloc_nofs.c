
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_req {int dummy; } ;


 int GFP_NOFS ;
 struct fuse_req* __fuse_request_alloc (unsigned int,int ) ;

struct fuse_req *fuse_request_alloc_nofs(unsigned npages)
{
 return __fuse_request_alloc(npages, GFP_NOFS);
}
