
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct autofs_dir_ent** h; } ;
struct autofs_sb_info {TYPE_1__ dirhash; } ;
struct autofs_dir_ent {struct autofs_dir_ent* name; scalar_t__ dentry; struct autofs_dir_ent* next; } ;


 int AUTOFS_HASH_SIZE ;
 int dput (scalar_t__) ;
 int kfree (struct autofs_dir_ent*) ;

void autofs_hash_nuke(struct autofs_sb_info *sbi)
{
 int i;
 struct autofs_dir_ent *ent, *nent;

 for ( i = 0 ; i < AUTOFS_HASH_SIZE ; i++ ) {
  for ( ent = sbi->dirhash.h[i] ; ent ; ent = nent ) {
   nent = ent->next;
   if ( ent->dentry )
    dput(ent->dentry);
   kfree(ent->name);
   kfree(ent);
  }
 }
}
