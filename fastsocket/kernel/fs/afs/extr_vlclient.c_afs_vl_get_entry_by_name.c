
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key {int dummy; } ;
struct in_addr {int dummy; } ;
struct afs_wait_mode {int dummy; } ;
struct afs_call {int * request; int port; int service_id; struct afs_cache_vlocation* reply; struct key* key; } ;
struct afs_cache_vlocation {int dummy; } ;
typedef int __be32 ;


 int AFS_VL_PORT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 size_t VLGETENTRYBYNAME ;
 int VL_SERVICE ;
 int _enter (char*) ;
 int afs_RXVLGetEntryByName ;
 struct afs_call* afs_alloc_flat_call (int *,size_t,int) ;
 int afs_make_call (struct in_addr*,struct afs_call*,int ,struct afs_wait_mode const*) ;
 void* htonl (size_t) ;
 int htons (int ) ;
 int memcpy (int *,char const*,size_t) ;
 int memset (void*,int ,size_t) ;
 size_t strlen (char const*) ;

int afs_vl_get_entry_by_name(struct in_addr *addr,
        struct key *key,
        const char *volname,
        struct afs_cache_vlocation *entry,
        const struct afs_wait_mode *wait_mode)
{
 struct afs_call *call;
 size_t volnamesz, reqsz, padsz;
 __be32 *bp;

 _enter("");

 volnamesz = strlen(volname);
 padsz = (4 - (volnamesz & 3)) & 3;
 reqsz = 8 + volnamesz + padsz;

 call = afs_alloc_flat_call(&afs_RXVLGetEntryByName, reqsz, 384);
 if (!call)
  return -ENOMEM;

 call->key = key;
 call->reply = entry;
 call->service_id = VL_SERVICE;
 call->port = htons(AFS_VL_PORT);


 bp = call->request;
 *bp++ = htonl(VLGETENTRYBYNAME);
 *bp++ = htonl(volnamesz);
 memcpy(bp, volname, volnamesz);
 if (padsz > 0)
  memset((void *) bp + volnamesz, 0, padsz);


 return afs_make_call(addr, call, GFP_KERNEL, wait_mode);
}
