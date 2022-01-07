
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key {int dummy; } ;
struct in_addr {int dummy; } ;
struct afs_wait_mode {int dummy; } ;
struct afs_call {void** request; int port; int service_id; struct afs_cache_vlocation* reply; struct key* key; } ;
struct afs_cache_vlocation {int dummy; } ;
typedef int afs_voltype_t ;
typedef int afs_volid_t ;
typedef void* __be32 ;


 int AFS_VL_PORT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int VLGETENTRYBYID ;
 int VL_SERVICE ;
 int _enter (char*) ;
 int afs_RXVLGetEntryById ;
 struct afs_call* afs_alloc_flat_call (int *,int,int) ;
 int afs_make_call (struct in_addr*,struct afs_call*,int ,struct afs_wait_mode const*) ;
 void* htonl (int ) ;
 int htons (int ) ;

int afs_vl_get_entry_by_id(struct in_addr *addr,
      struct key *key,
      afs_volid_t volid,
      afs_voltype_t voltype,
      struct afs_cache_vlocation *entry,
      const struct afs_wait_mode *wait_mode)
{
 struct afs_call *call;
 __be32 *bp;

 _enter("");

 call = afs_alloc_flat_call(&afs_RXVLGetEntryById, 12, 384);
 if (!call)
  return -ENOMEM;

 call->key = key;
 call->reply = entry;
 call->service_id = VL_SERVICE;
 call->port = htons(AFS_VL_PORT);


 bp = call->request;
 *bp++ = htonl(VLGETENTRYBYID);
 *bp++ = htonl(volid);
 *bp = htonl(voltype);


 return afs_make_call(addr, call, GFP_KERNEL, wait_mode);
}
