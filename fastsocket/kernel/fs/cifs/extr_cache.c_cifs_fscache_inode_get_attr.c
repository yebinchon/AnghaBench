
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int i_size; } ;
struct cifsInodeInfo {TYPE_1__ vfs_inode; } ;



__attribute__((used)) static void
cifs_fscache_inode_get_attr(const void *cookie_netfs_data, uint64_t *size)
{
 const struct cifsInodeInfo *cifsi = cookie_netfs_data;

 *size = cifsi->vfs_inode.i_size;
}
