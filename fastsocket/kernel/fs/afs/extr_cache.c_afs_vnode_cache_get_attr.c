
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {int size; int data_version; } ;
struct TYPE_3__ {int unique; int vnode; } ;
struct afs_vnode {TYPE_2__ status; TYPE_1__ fid; } ;


 int _enter (char*,int ,int ,int ) ;

__attribute__((used)) static void afs_vnode_cache_get_attr(const void *cookie_netfs_data,
         uint64_t *size)
{
 const struct afs_vnode *vnode = cookie_netfs_data;

 _enter("{%x,%x,%llx},",
        vnode->fid.vnode, vnode->fid.unique,
        vnode->status.data_version);

 *size = vnode->status.size;
}
