
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int path; } ;
struct TYPE_4__ {TYPE_1__ release; } ;
struct fuse_req {TYPE_2__ misc; } ;
struct fuse_conn {int dummy; } ;


 int path_put (int *) ;

__attribute__((used)) static void fuse_release_end(struct fuse_conn *fc, struct fuse_req *req)
{
 path_put(&req->misc.release.path);
}
