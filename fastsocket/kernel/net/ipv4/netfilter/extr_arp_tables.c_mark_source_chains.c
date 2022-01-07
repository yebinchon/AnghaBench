
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct xt_table_info {unsigned int* hook_entry; int size; } ;
struct TYPE_5__ {int name; } ;
struct TYPE_6__ {TYPE_1__ user; } ;
struct TYPE_7__ {TYPE_2__ u; } ;
struct arpt_standard_target {int verdict; TYPE_3__ target; } ;
struct TYPE_8__ {unsigned int pcnt; } ;
struct arpt_entry {int comefrom; int target_offset; unsigned int next_offset; TYPE_4__ counters; int arp; } ;


 int ARPT_STANDARD_TARGET ;
 unsigned int NF_ARP_NUMHOOKS ;
 int NF_MAX_VERDICT ;
 scalar_t__ arpt_get_target (struct arpt_entry*) ;
 int duprintf (char*,unsigned int,...) ;
 int printk (char*,unsigned int,unsigned int,int) ;
 scalar_t__ strcmp (int ,int ) ;
 scalar_t__ unconditional (int *) ;

__attribute__((used)) static int mark_source_chains(struct xt_table_info *newinfo,
         unsigned int valid_hooks, void *entry0)
{
 unsigned int hook;




 for (hook = 0; hook < NF_ARP_NUMHOOKS; hook++) {
  unsigned int pos = newinfo->hook_entry[hook];
  struct arpt_entry *e
   = (struct arpt_entry *)(entry0 + pos);

  if (!(valid_hooks & (1 << hook)))
   continue;


  e->counters.pcnt = pos;

  for (;;) {
   const struct arpt_standard_target *t
    = (void *)arpt_get_target(e);
   int visited = e->comefrom & (1 << hook);

   if (e->comefrom & (1 << NF_ARP_NUMHOOKS)) {
    printk("arptables: loop hook %u pos %u %08X.\n",
           hook, pos, e->comefrom);
    return 0;
   }
   e->comefrom
    |= ((1 << hook) | (1 << NF_ARP_NUMHOOKS));


   if ((e->target_offset == sizeof(struct arpt_entry)
       && (strcmp(t->target.u.user.name,
           ARPT_STANDARD_TARGET) == 0)
       && t->verdict < 0
       && unconditional(&e->arp)) || visited) {
    unsigned int oldpos, size;

    if ((strcmp(t->target.u.user.name,
         ARPT_STANDARD_TARGET) == 0) &&
        t->verdict < -NF_MAX_VERDICT - 1) {
     duprintf("mark_source_chains: bad "
      "negative verdict (%i)\n",
        t->verdict);
     return 0;
    }




    do {
     e->comefrom ^= (1<<NF_ARP_NUMHOOKS);
     oldpos = pos;
     pos = e->counters.pcnt;
     e->counters.pcnt = 0;


     if (pos == oldpos)
      goto next;

     e = (struct arpt_entry *)
      (entry0 + pos);
    } while (oldpos == pos + e->next_offset);


    size = e->next_offset;
    e = (struct arpt_entry *)
     (entry0 + pos + size);
    e->counters.pcnt = pos;
    pos += size;
   } else {
    int newpos = t->verdict;

    if (strcmp(t->target.u.user.name,
        ARPT_STANDARD_TARGET) == 0
        && newpos >= 0) {
     if (newpos > newinfo->size -
      sizeof(struct arpt_entry)) {
      duprintf("mark_source_chains: "
       "bad verdict (%i)\n",
        newpos);
      return 0;
     }


     duprintf("Jump rule %u -> %u\n",
       pos, newpos);
    } else {

     newpos = pos + e->next_offset;
    }
    e = (struct arpt_entry *)
     (entry0 + newpos);
    e->counters.pcnt = pos;
    pos = newpos;
   }
  }
  next:
  duprintf("Finished chain %u\n", hook);
 }
 return 1;
}
