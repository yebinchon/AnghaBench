
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int data; } ;
struct user_key_payload {int perm; size_t datalen; int data; TYPE_1__ payload; } ;
struct key {int perm; size_t datalen; int data; TYPE_1__ payload; } ;
struct cred {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 scalar_t__ IS_ERR (struct user_key_payload*) ;
 scalar_t__ IS_ERR_OR_NULL (struct user_key_payload*) ;
 int KEY_USR_VIEW ;
 int KEY_USR_WRITE ;
 size_t PTR_ERR (struct user_key_payload*) ;
 int id_resolver_cache ;
 int key_put (struct user_key_payload*) ;
 int key_type_id_resolver ;
 size_t key_validate (struct user_key_payload*) ;
 int kfree (char*) ;
 int memcpy (void*,int ,size_t) ;
 size_t nfs_idmap_get_desc (char const*,size_t,char const*,int ,char**) ;
 struct cred* override_creds (int ) ;
 struct user_key_payload* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct user_key_payload* request_key (int *,char*,char*) ;
 int revert_creds (struct cred const*) ;
 int strlen (char const*) ;

__attribute__((used)) static ssize_t nfs_idmap_request_key(const char *name, size_t namelen,
  const char *type, void *data, size_t data_size)
{
 const struct cred *saved_cred;
 struct key *rkey;
 char *desc;
 struct user_key_payload *payload;
 ssize_t ret;

 ret = nfs_idmap_get_desc(name, namelen, type, strlen(type), &desc);
 if (ret <= 0)
  goto out;

 saved_cred = override_creds(id_resolver_cache);
 rkey = request_key(&key_type_id_resolver, desc, "");
 revert_creds(saved_cred);
 kfree(desc);
 if (IS_ERR(rkey)) {
  ret = PTR_ERR(rkey);
  goto out;
 }

 rcu_read_lock();
 rkey->perm |= KEY_USR_VIEW|KEY_USR_WRITE;

 ret = key_validate(rkey);
 if (ret < 0)
  goto out_up;

 payload = rcu_dereference(rkey->payload.data);
 if (IS_ERR_OR_NULL(payload)) {
  ret = PTR_ERR(payload);
  goto out_up;
 }

 ret = payload->datalen;
 if (ret > 0 && ret <= data_size)
  memcpy(data, payload->data, ret);
 else
  ret = -EINVAL;

out_up:
 rcu_read_unlock();
 key_put(rkey);
out:
 return ret;
}
