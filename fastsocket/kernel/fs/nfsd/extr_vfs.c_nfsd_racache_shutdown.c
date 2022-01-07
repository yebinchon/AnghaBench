
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct raparms {struct raparms* p_next; } ;
struct TYPE_2__ {struct raparms* pb_head; } ;


 unsigned int RAPARM_HASH_SIZE ;
 int dprintk (char*) ;
 int kfree (struct raparms*) ;
 TYPE_1__* raparm_hash ;

void
nfsd_racache_shutdown(void)
{
 struct raparms *raparm, *last_raparm;
 unsigned int i;

 dprintk("nfsd: freeing readahead buffers.\n");

 for (i = 0; i < RAPARM_HASH_SIZE; i++) {
  raparm = raparm_hash[i].pb_head;
  while(raparm) {
   last_raparm = raparm;
   raparm = raparm->p_next;
   kfree(last_raparm);
  }
  raparm_hash[i].pb_head = ((void*)0);
 }
}
