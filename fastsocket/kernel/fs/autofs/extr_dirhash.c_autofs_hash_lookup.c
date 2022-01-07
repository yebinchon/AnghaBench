
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {scalar_t__ hash; scalar_t__ len; int name; } ;
struct autofs_dirhash {struct autofs_dir_ent** h; } ;
struct autofs_dir_ent {scalar_t__ hash; scalar_t__ len; int name; struct autofs_dir_ent* next; } ;


 unsigned int AUTOFS_HASH_SIZE ;
 int DPRINTK (char*) ;
 int autofs_say (int ,scalar_t__) ;
 int memcmp (int ,int ,scalar_t__) ;

struct autofs_dir_ent *autofs_hash_lookup(const struct autofs_dirhash *dh, struct qstr *name)
{
 struct autofs_dir_ent *dhn;

 DPRINTK(("autofs_hash_lookup: hash = 0x%08x, name = ", name->hash));
 autofs_say(name->name,name->len);

 for ( dhn = dh->h[(unsigned) name->hash % AUTOFS_HASH_SIZE] ; dhn ; dhn = dhn->next ) {
  if ( name->hash == dhn->hash &&
       name->len == dhn->len &&
       !memcmp(name->name, dhn->name, name->len) )
   break;
 }

 return dhn;
}
