
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct raparms {struct raparms* p_next; } ;
struct TYPE_4__ {int ra_size; } ;
struct TYPE_3__ {struct raparms* pb_head; int pb_lock; } ;


 int DIV_ROUND_UP (int,int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int RAPARM_HASH_SIZE ;
 int dprintk (char*,...) ;
 struct raparms* kzalloc (int,int ) ;
 int nfsd_racache_shutdown () ;
 TYPE_2__ nfsdstats ;
 TYPE_1__* raparm_hash ;
 int spin_lock_init (int *) ;

int
nfsd_racache_init(int cache_size)
{
 int i;
 int j = 0;
 int nperbucket;
 struct raparms **raparm = ((void*)0);


 if (raparm_hash[0].pb_head)
  return 0;
 nperbucket = DIV_ROUND_UP(cache_size, RAPARM_HASH_SIZE);
 if (nperbucket < 2)
  nperbucket = 2;
 cache_size = nperbucket * RAPARM_HASH_SIZE;

 dprintk("nfsd: allocating %d readahead buffers.\n", cache_size);

 for (i = 0; i < RAPARM_HASH_SIZE; i++) {
  spin_lock_init(&raparm_hash[i].pb_lock);

  raparm = &raparm_hash[i].pb_head;
  for (j = 0; j < nperbucket; j++) {
   *raparm = kzalloc(sizeof(struct raparms), GFP_KERNEL);
   if (!*raparm)
    goto out_nomem;
   raparm = &(*raparm)->p_next;
  }
  *raparm = ((void*)0);
 }

 nfsdstats.ra_size = cache_size;
 return 0;

out_nomem:
 dprintk("nfsd: kmalloc failed, freeing readahead buffers\n");
 nfsd_racache_shutdown();
 return -ENOMEM;
}
