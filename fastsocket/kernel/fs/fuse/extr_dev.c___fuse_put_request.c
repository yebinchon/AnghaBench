
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_req {int count; } ;


 int BUG_ON (int) ;
 int atomic_dec (int *) ;
 int atomic_read (int *) ;

__attribute__((used)) static void __fuse_put_request(struct fuse_req *req)
{
 BUG_ON(atomic_read(&req->count) < 2);
 atomic_dec(&req->count);
}
