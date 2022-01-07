
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {int vnode; int unique; } ;
struct TYPE_3__ {int data_version; } ;
struct afs_vnode {TYPE_2__ fid; TYPE_1__ status; } ;


 int _enter (char*,int ,int ,int ,void*,int) ;
 int _leave (char*,int) ;
 int memcpy (void*,int *,int) ;

__attribute__((used)) static uint16_t afs_vnode_cache_get_key(const void *cookie_netfs_data,
     void *buffer, uint16_t bufmax)
{
 const struct afs_vnode *vnode = cookie_netfs_data;
 uint16_t klen;

 _enter("{%x,%x,%llx},%p,%u",
        vnode->fid.vnode, vnode->fid.unique, vnode->status.data_version,
        buffer, bufmax);

 klen = sizeof(vnode->fid.vnode);
 if (klen > bufmax)
  return 0;

 memcpy(buffer, &vnode->fid.vnode, sizeof(vnode->fid.vnode));

 _leave(" = %u", klen);
 return klen;
}
