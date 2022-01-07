
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int version ;
typedef int unique ;
typedef int uint16_t ;
struct TYPE_4__ {int data_version; } ;
struct TYPE_3__ {int unique; int vnode; } ;
struct afs_vnode {TYPE_2__ status; TYPE_1__ fid; } ;
typedef enum fscache_checkaux { ____Placeholder_fscache_checkaux } fscache_checkaux ;
typedef unsigned int afs_dataversion_t ;


 int FSCACHE_CHECKAUX_OBSOLETE ;
 int FSCACHE_CHECKAUX_OKAY ;
 int _enter (char*,int ,int ,int ,void const*,int) ;
 int _leave (char*,...) ;
 scalar_t__ memcmp (void const*,int *,int) ;
 int memcpy (unsigned int*,void const*,int) ;

__attribute__((used)) static enum fscache_checkaux afs_vnode_cache_check_aux(void *cookie_netfs_data,
             const void *buffer,
             uint16_t buflen)
{
 struct afs_vnode *vnode = cookie_netfs_data;
 uint16_t dlen;

 _enter("{%x,%x,%llx},%p,%u",
        vnode->fid.vnode, vnode->fid.unique, vnode->status.data_version,
        buffer, buflen);


 dlen = sizeof(vnode->fid.unique) + sizeof(vnode->status.data_version);
 if (dlen != buflen) {
  _leave(" = OBSOLETE [len %hx != %hx]", dlen, buflen);
  return FSCACHE_CHECKAUX_OBSOLETE;
 }

 if (memcmp(buffer,
     &vnode->fid.unique,
     sizeof(vnode->fid.unique)
     ) != 0) {
  unsigned unique;

  memcpy(&unique, buffer, sizeof(unique));

  _leave(" = OBSOLETE [uniq %x != %x]",
         unique, vnode->fid.unique);
  return FSCACHE_CHECKAUX_OBSOLETE;
 }

 if (memcmp(buffer + sizeof(vnode->fid.unique),
     &vnode->status.data_version,
     sizeof(vnode->status.data_version)
     ) != 0) {
  afs_dataversion_t version;

  memcpy(&version, buffer + sizeof(vnode->fid.unique),
         sizeof(version));

  _leave(" = OBSOLETE [vers %llx != %llx]",
         version, vnode->status.data_version);
  return FSCACHE_CHECKAUX_OBSOLETE;
 }

 _leave(" = SUCCESS");
 return FSCACHE_CHECKAUX_OKAY;
}
