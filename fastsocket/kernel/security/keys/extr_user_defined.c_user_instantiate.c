
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_key_payload {size_t datalen; int data; } ;
struct key {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int key_payload_reserve (struct key*,size_t) ;
 struct user_key_payload* kmalloc (int,int ) ;
 int memcpy (int ,void const*,size_t) ;
 int rcu_assign_keypointer (struct key*,struct user_key_payload*) ;

int user_instantiate(struct key *key, const void *data, size_t datalen)
{
 struct user_key_payload *upayload;
 int ret;

 ret = -EINVAL;
 if (datalen <= 0 || datalen > 32767 || !data)
  goto error;

 ret = key_payload_reserve(key, datalen);
 if (ret < 0)
  goto error;

 ret = -ENOMEM;
 upayload = kmalloc(sizeof(*upayload) + datalen, GFP_KERNEL);
 if (!upayload)
  goto error;


 upayload->datalen = datalen;
 memcpy(upayload->data, data, datalen);
 rcu_assign_keypointer(key, upayload);
 ret = 0;

error:
 return ret;
}
