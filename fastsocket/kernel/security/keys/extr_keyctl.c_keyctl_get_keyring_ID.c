
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int key_serial_t ;
typedef int key_ref_t ;
struct TYPE_2__ {long serial; } ;


 scalar_t__ IS_ERR (int ) ;
 unsigned long KEY_LOOKUP_CREATE ;
 int KEY_SEARCH ;
 long PTR_ERR (int ) ;
 int key_ref_put (int ) ;
 TYPE_1__* key_ref_to_ptr (int ) ;
 int lookup_user_key (int ,unsigned long,int ) ;

long keyctl_get_keyring_ID(key_serial_t id, int create)
{
 key_ref_t key_ref;
 unsigned long lflags;
 long ret;

 lflags = create ? KEY_LOOKUP_CREATE : 0;
 key_ref = lookup_user_key(id, lflags, KEY_SEARCH);
 if (IS_ERR(key_ref)) {
  ret = PTR_ERR(key_ref);
  goto error;
 }

 ret = key_ref_to_ptr(key_ref)->serial;
 key_ref_put(key_ref);
error:
 return ret;
}
