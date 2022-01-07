
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct autofs_dirhash {int expiry_head; int h; } ;
struct autofs_dir_ent {int dummy; } ;


 int AUTOFS_HASH_SIZE ;
 int INIT_LIST_HEAD (int *) ;
 int memset (int *,int ,int) ;

void autofs_initialize_hash(struct autofs_dirhash *dh) {
 memset(&dh->h, 0, AUTOFS_HASH_SIZE*sizeof(struct autofs_dir_ent *));
 INIT_LIST_HEAD(&dh->expiry_head);
}
