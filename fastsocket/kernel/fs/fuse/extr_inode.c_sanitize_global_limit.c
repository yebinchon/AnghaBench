
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_req {int dummy; } ;


 int PAGE_SHIFT ;
 int num_physpages ;

__attribute__((used)) static void sanitize_global_limit(unsigned *limit)
{
 if (*limit == 0)
  *limit = ((num_physpages << PAGE_SHIFT) >> 13) /
    sizeof(struct fuse_req);

 if (*limit >= 1 << 16)
  *limit = (1 << 16) - 1;
}
