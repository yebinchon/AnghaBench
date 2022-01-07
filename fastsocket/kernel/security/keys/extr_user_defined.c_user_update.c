
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct user_key_payload {size_t datalen; int rcu; int data; } ;
struct TYPE_2__ {struct user_key_payload* data; } ;
struct key {scalar_t__ expiry; TYPE_1__ payload; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int call_rcu (int *,int ) ;
 int key_payload_reserve (struct key*,size_t) ;
 struct user_key_payload* kmalloc (int,int ) ;
 int memcpy (int ,void const*,size_t) ;
 int rcu_assign_keypointer (struct key*,struct user_key_payload*) ;
 int user_update_rcu_disposal ;

int user_update(struct key *key, const void *data, size_t datalen)
{
 struct user_key_payload *upayload, *zap;
 int ret;

 ret = -EINVAL;
 if (datalen <= 0 || datalen > 32767 || !data)
  goto error;


 ret = -ENOMEM;
 upayload = kmalloc(sizeof(*upayload) + datalen, GFP_KERNEL);
 if (!upayload)
  goto error;

 upayload->datalen = datalen;
 memcpy(upayload->data, data, datalen);


 zap = upayload;

 ret = key_payload_reserve(key, datalen);

 if (ret == 0) {

  zap = key->payload.data;
  rcu_assign_keypointer(key, upayload);
  key->expiry = 0;
 }

 if (zap)
  call_rcu(&zap->rcu, user_update_rcu_disposal);

error:
 return ret;
}
