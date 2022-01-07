
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int link; } ;
struct key {TYPE_1__ type_data; scalar_t__ description; } ;
struct TYPE_6__ {int next; } ;


 int INIT_LIST_HEAD (TYPE_2__*) ;
 int keyring_hash (scalar_t__) ;
 TYPE_2__* keyring_name_hash ;
 int keyring_name_lock ;
 int list_add_tail (int *,TYPE_2__*) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

__attribute__((used)) static void keyring_publish_name(struct key *keyring)
{
 int bucket;

 if (keyring->description) {
  bucket = keyring_hash(keyring->description);

  write_lock(&keyring_name_lock);

  if (!keyring_name_hash[bucket].next)
   INIT_LIST_HEAD(&keyring_name_hash[bucket]);

  list_add_tail(&keyring->type_data.link,
         &keyring_name_hash[bucket]);

  write_unlock(&keyring_name_lock);
 }
}
