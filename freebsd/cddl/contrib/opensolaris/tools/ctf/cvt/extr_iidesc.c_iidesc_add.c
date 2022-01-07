
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tmp ;
typedef int iidesc_t ;
struct TYPE_3__ {int * iif_ret; int * iif_tgt; } ;
typedef TYPE_1__ iidesc_find_t ;
typedef int hash_t ;


 int bcopy (int *,int *,int) ;
 int hash_add (int *,int *) ;
 int hash_match (int *,int *,int ,TYPE_1__*) ;
 int iidesc_cmp ;
 int iidesc_free (int *,int *) ;

void
iidesc_add(hash_t *hash, iidesc_t *new)
{
 iidesc_find_t find;

 find.iif_tgt = new;
 find.iif_ret = ((void*)0);

 (void) hash_match(hash, new, iidesc_cmp, &find);

 if (find.iif_ret != ((void*)0)) {
  iidesc_t *old = find.iif_ret;
  iidesc_t tmp;

  bcopy(old, &tmp, sizeof (tmp));
  bcopy(new, old, sizeof (*old));
  bcopy(&tmp, new, sizeof (*new));

  iidesc_free(new, ((void*)0));
  return;
 }

 hash_add(hash, new);
}
