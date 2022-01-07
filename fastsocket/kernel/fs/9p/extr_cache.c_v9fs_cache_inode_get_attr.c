
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct v9fs_cookie {int inode; } ;


 int P9_DEBUG_FSC ;
 int P9_DPRINTK (int ,char*,int *,int ) ;
 int i_size_read (int *) ;

__attribute__((used)) static void v9fs_cache_inode_get_attr(const void *cookie_netfs_data,
          uint64_t *size)
{
 const struct v9fs_cookie *vcookie = cookie_netfs_data;
 *size = i_size_read(&vcookie->inode);

 P9_DPRINTK(P9_DEBUG_FSC, "inode %p get attr %llu", &vcookie->inode,
     *size);
}
