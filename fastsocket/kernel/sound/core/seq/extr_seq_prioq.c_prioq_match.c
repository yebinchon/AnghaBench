
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int tv_nsec; int tv_sec; } ;
struct TYPE_10__ {TYPE_1__ time; int tick; } ;
struct TYPE_8__ {int client; } ;
struct TYPE_7__ {int client; } ;
struct TYPE_9__ {int flags; TYPE_5__ time; TYPE_3__ dest; TYPE_2__ source; } ;
struct snd_seq_event_cell {TYPE_4__ event; } ;


 int SNDRV_SEQ_TIME_STAMP_MASK ;



__attribute__((used)) static inline int prioq_match(struct snd_seq_event_cell *cell,
         int client, int timestamp)
{
 if (cell->event.source.client == client ||
     cell->event.dest.client == client)
  return 1;
 if (!timestamp)
  return 0;
 switch (cell->event.flags & SNDRV_SEQ_TIME_STAMP_MASK) {
 case 128:
  if (cell->event.time.tick)
   return 1;
  break;
 case 129:
  if (cell->event.time.time.tv_sec ||
      cell->event.time.time.tv_nsec)
   return 1;
  break;
 }
 return 0;
}
