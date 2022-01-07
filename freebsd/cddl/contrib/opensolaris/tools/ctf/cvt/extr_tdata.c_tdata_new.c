
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int td_nextid; int td_curvgen; int td_mergelock; void* td_iihash; void* td_idhash; void* td_layouthash; } ;
typedef TYPE_1__ tdata_t ;


 int IIDESC_HASH_SIZE ;
 int TDATA_ID_HASH_SIZE ;
 int TDATA_LAYOUT_HASH_SIZE ;
 void* hash_new (int ,int ,int *) ;
 int iidesc_hash ;
 int pthread_mutex_init (int *,int *) ;
 int * tdesc_idcmp ;
 int tdesc_idhash ;
 int * tdesc_layoutcmp ;
 int tdesc_layouthash ;
 TYPE_1__* xcalloc (int) ;

tdata_t *
tdata_new(void)
{
 tdata_t *new = xcalloc(sizeof (tdata_t));

 new->td_layouthash = hash_new(TDATA_LAYOUT_HASH_SIZE, tdesc_layouthash,
     tdesc_layoutcmp);
 new->td_idhash = hash_new(TDATA_ID_HASH_SIZE, tdesc_idhash,
     tdesc_idcmp);





 new->td_iihash = hash_new(IIDESC_HASH_SIZE, iidesc_hash, ((void*)0));
 new->td_nextid = 1;
 new->td_curvgen = 1;

 pthread_mutex_init(&new->td_mergelock, ((void*)0));

 return (new);
}
