
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct autofs_dirhash {struct autofs_dir_ent** h; } ;
struct autofs_dir_ent {int * dentry; struct autofs_dir_ent* next; } ;


 int AUTOFS_HASH_SIZE ;
 int dput (int *) ;

void autofs_hash_dputall(struct autofs_dirhash *dh)
{
 int i;
 struct autofs_dir_ent *ent;

 for ( i = 0 ; i < AUTOFS_HASH_SIZE ; i++ ) {
  for ( ent = dh->h[i] ; ent ; ent = ent->next ) {
   if ( ent->dentry ) {
    dput(ent->dentry);
    ent->dentry = ((void*)0);
   }
  }
 }
}
