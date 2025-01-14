
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct request_key_auth {TYPE_2__* target_key; } ;
struct TYPE_3__ {struct request_key_auth* data; } ;
struct key {TYPE_1__ payload; } ;
struct iovec {int dummy; } ;
struct cred {struct key* request_key_auth; } ;
typedef scalar_t__ key_serial_t ;
struct TYPE_4__ {scalar_t__ serial; } ;


 long EINVAL ;
 long ENOMEM ;
 long EPERM ;
 int GFP_KERNEL ;
 size_t PAGE_SIZE ;
 long copy_from_user_iovec (void*,struct iovec const*,unsigned int) ;
 struct cred* current_cred () ;
 long get_instantiation_keyring (scalar_t__,struct request_key_auth*,struct key**) ;
 int kenter (char*,scalar_t__,size_t,scalar_t__) ;
 long key_instantiate_and_link (TYPE_2__*,void*,size_t,struct key*,struct key*) ;
 int key_put (struct key*) ;
 int keyctl_change_reqkey_auth (int *) ;
 int kfree (void*) ;
 void* kmalloc (size_t,int ) ;
 int vfree (void*) ;
 void* vmalloc (size_t) ;

long keyctl_instantiate_key_common(key_serial_t id,
       const struct iovec *payload_iov,
       unsigned ioc,
       size_t plen,
       key_serial_t ringid)
{
 const struct cred *cred = current_cred();
 struct request_key_auth *rka;
 struct key *instkey, *dest_keyring;
 void *payload;
 long ret;
 bool vm = 0;

 kenter("%d,,%zu,%d", id, plen, ringid);

 ret = -EINVAL;
 if (plen > 1024 * 1024 - 1)
  goto error;



 ret = -EPERM;
 instkey = cred->request_key_auth;
 if (!instkey)
  goto error;

 rka = instkey->payload.data;
 if (rka->target_key->serial != id)
  goto error;


 payload = ((void*)0);

 if (payload_iov) {
  ret = -ENOMEM;
  payload = kmalloc(plen, GFP_KERNEL);
  if (!payload) {
   if (plen <= PAGE_SIZE)
    goto error;
   vm = 1;
   payload = vmalloc(plen);
   if (!payload)
    goto error;
  }

  ret = copy_from_user_iovec(payload, payload_iov, ioc);
  if (ret < 0)
   goto error2;
 }



 ret = get_instantiation_keyring(ringid, rka, &dest_keyring);
 if (ret < 0)
  goto error2;


 ret = key_instantiate_and_link(rka->target_key, payload, plen,
           dest_keyring, instkey);

 key_put(dest_keyring);



 if (ret == 0)
  keyctl_change_reqkey_auth(((void*)0));

error2:
 if (!vm)
  kfree(payload);
 else
  vfree(payload);
error:
 return ret;
}
