
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct key_type {int match; } ;
typedef int key_ref_t ;
struct TYPE_2__ {int cred; } ;


 int ENOKEY ;
 int ERR_PTR (int ) ;
 TYPE_1__* current ;
 int keyring_search_aux (int ,int ,struct key_type*,char const*,int ,int) ;

key_ref_t keyring_search(key_ref_t keyring,
    struct key_type *type,
    const char *description)
{
 if (!type->match)
  return ERR_PTR(-ENOKEY);

 return keyring_search_aux(keyring, current->cred,
      type, description, type->match, 0);
}
