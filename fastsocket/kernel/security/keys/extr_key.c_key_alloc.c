
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uid_t ;
struct key_user {int qnkeys; size_t qnbytes; int lock; int nkeys; } ;
struct key_type {size_t def_datalen; } ;
struct TYPE_4__ {int * data; } ;
struct key {size_t quotalen; size_t datalen; int flags; int description; int magic; int type_data; int * security; TYPE_2__ payload; scalar_t__ expiry; int perm; int gid; scalar_t__ uid; struct key_user* user; struct key_type* type; int sem; int usage; } ;
struct cred {TYPE_1__* user; } ;
typedef int key_perm_t ;
typedef int gid_t ;
struct TYPE_3__ {int user_ns; } ;


 int EDQUOT ;
 int EINVAL ;
 int ENOMEM ;
 struct key* ERR_PTR (int) ;
 int GFP_KERNEL ;
 unsigned long KEY_ALLOC_NOT_IN_QUOTA ;
 unsigned long KEY_ALLOC_QUOTA_OVERRUN ;
 int KEY_DEBUG_MAGIC ;
 int KEY_FLAG_IN_QUOTA ;
 int atomic_inc (int *) ;
 int atomic_set (int *,int) ;
 int init_rwsem (int *) ;
 int key_alloc_serial (struct key*) ;
 int key_jar ;
 unsigned int key_quota_maxbytes ;
 unsigned int key_quota_maxkeys ;
 unsigned int key_quota_root_maxbytes ;
 unsigned int key_quota_root_maxkeys ;
 struct key_user* key_user_lookup (scalar_t__,int ) ;
 int key_user_put (struct key_user*) ;
 int kfree (int ) ;
 struct key* kmem_cache_alloc (int ,int ) ;
 int kmem_cache_free (int ,struct key*) ;
 int kmemdup (char const*,size_t,int ) ;
 int memset (int *,int ,int) ;
 int security_key_alloc (struct key*,struct cred const*,unsigned long) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int strlen (char const*) ;

struct key *key_alloc(struct key_type *type, const char *desc,
        uid_t uid, gid_t gid, const struct cred *cred,
        key_perm_t perm, unsigned long flags)
{
 struct key_user *user = ((void*)0);
 struct key *key;
 size_t desclen, quotalen;
 int ret;

 key = ERR_PTR(-EINVAL);
 if (!desc || !*desc)
  goto error;

 desclen = strlen(desc) + 1;
 quotalen = desclen + type->def_datalen;


 user = key_user_lookup(uid, cred->user->user_ns);
 if (!user)
  goto no_memory_1;



 if (!(flags & KEY_ALLOC_NOT_IN_QUOTA)) {
  unsigned maxkeys = (uid == 0) ?
   key_quota_root_maxkeys : key_quota_maxkeys;
  unsigned maxbytes = (uid == 0) ?
   key_quota_root_maxbytes : key_quota_maxbytes;

  spin_lock(&user->lock);
  if (!(flags & KEY_ALLOC_QUOTA_OVERRUN)) {
   if (user->qnkeys + 1 >= maxkeys ||
       user->qnbytes + quotalen >= maxbytes ||
       user->qnbytes + quotalen < user->qnbytes)
    goto no_quota;
  }

  user->qnkeys++;
  user->qnbytes += quotalen;
  spin_unlock(&user->lock);
 }


 key = kmem_cache_alloc(key_jar, GFP_KERNEL);
 if (!key)
  goto no_memory_2;

 if (desc) {
  key->description = kmemdup(desc, desclen, GFP_KERNEL);
  if (!key->description)
   goto no_memory_3;
 }

 atomic_set(&key->usage, 1);
 init_rwsem(&key->sem);
 key->type = type;
 key->user = user;
 key->quotalen = quotalen;
 key->datalen = type->def_datalen;
 key->uid = uid;
 key->gid = gid;
 key->perm = perm;
 key->flags = 0;
 key->expiry = 0;
 key->payload.data = ((void*)0);
 key->security = ((void*)0);

 if (!(flags & KEY_ALLOC_NOT_IN_QUOTA))
  key->flags |= 1 << KEY_FLAG_IN_QUOTA;

 memset(&key->type_data, 0, sizeof(key->type_data));






 ret = security_key_alloc(key, cred, flags);
 if (ret < 0)
  goto security_error;


 atomic_inc(&user->nkeys);
 key_alloc_serial(key);

error:
 return key;

security_error:
 kfree(key->description);
 kmem_cache_free(key_jar, key);
 if (!(flags & KEY_ALLOC_NOT_IN_QUOTA)) {
  spin_lock(&user->lock);
  user->qnkeys--;
  user->qnbytes -= quotalen;
  spin_unlock(&user->lock);
 }
 key_user_put(user);
 key = ERR_PTR(ret);
 goto error;

no_memory_3:
 kmem_cache_free(key_jar, key);
no_memory_2:
 if (!(flags & KEY_ALLOC_NOT_IN_QUOTA)) {
  spin_lock(&user->lock);
  user->qnkeys--;
  user->qnbytes -= quotalen;
  spin_unlock(&user->lock);
 }
 key_user_put(user);
no_memory_1:
 key = ERR_PTR(-ENOMEM);
 goto error;

no_quota:
 spin_unlock(&user->lock);
 key_user_put(user);
 key = ERR_PTR(-EDQUOT);
 goto error;
}
