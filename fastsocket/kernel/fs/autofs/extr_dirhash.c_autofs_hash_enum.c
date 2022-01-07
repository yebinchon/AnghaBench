
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct autofs_dirhash {struct autofs_dir_ent** h; } ;
struct autofs_dir_ent {int len; int name; int hash; struct autofs_dir_ent* next; } ;
typedef int off_t ;


 int AUTOFS_HASH_SIZE ;
 int DPRINTK (char*) ;
 int autofs_say (int ,int ) ;
 int printk (char*,...) ;

struct autofs_dir_ent *autofs_hash_enum(const struct autofs_dirhash *dh,
     off_t *ptr, struct autofs_dir_ent *last)
{
 int bucket, ecount, i;
 struct autofs_dir_ent *ent;

 bucket = (*ptr >> 16) - 1;
 ecount = *ptr & 0xffff;

 if ( bucket < 0 ) {
  bucket = ecount = 0;
 }

 DPRINTK(("autofs_hash_enum: bucket %d, entry %d\n", bucket, ecount));

 ent = last ? last->next : ((void*)0);

 if ( ent ) {
  ecount++;
 } else {
  while ( bucket < AUTOFS_HASH_SIZE ) {
   ent = dh->h[bucket];
   for ( i = ecount ; ent && i ; i-- )
    ent = ent->next;

   if (ent) {
    ecount++;
    break;
   }

   bucket++; ecount = 0;
  }
 }
 *ptr = ((bucket+1) << 16) + ecount;
 return ent;
}
