
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct fuse_conn {int reqctr; } ;



__attribute__((used)) static u64 fuse_get_unique(struct fuse_conn *fc)
{
 fc->reqctr++;

 if (fc->reqctr == 0)
  fc->reqctr = 1;

 return fc->reqctr;
}
