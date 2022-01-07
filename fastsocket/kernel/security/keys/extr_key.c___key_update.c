
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct key {int sem; int flags; TYPE_1__* type; } ;
typedef int key_ref_t ;
struct TYPE_2__ {int (* update ) (struct key*,void const*,size_t) ;} ;


 int EEXIST ;
 int ERR_PTR (int) ;
 int KEY_FLAG_NEGATIVE ;
 int KEY_WRITE ;
 int clear_bit (int ,int *) ;
 int down_write (int *) ;
 int key_permission (int ,int ) ;
 int key_put (struct key*) ;
 struct key* key_ref_to_ptr (int ) ;
 int stub1 (struct key*,void const*,size_t) ;
 int up_write (int *) ;

__attribute__((used)) static inline key_ref_t __key_update(key_ref_t key_ref,
         const void *payload, size_t plen)
{
 struct key *key = key_ref_to_ptr(key_ref);
 int ret;


 ret = key_permission(key_ref, KEY_WRITE);
 if (ret < 0)
  goto error;

 ret = -EEXIST;
 if (!key->type->update)
  goto error;

 down_write(&key->sem);

 ret = key->type->update(key, payload, plen);
 if (ret == 0)

  clear_bit(KEY_FLAG_NEGATIVE, &key->flags);

 up_write(&key->sem);

 if (ret < 0)
  goto error;
out:
 return key_ref;

error:
 key_put(key);
 key_ref = ERR_PTR(ret);
 goto out;
}
