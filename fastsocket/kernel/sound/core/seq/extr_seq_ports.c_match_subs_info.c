
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_port_subscribe {scalar_t__ flags; scalar_t__ queue; int dest; int sender; } ;


 scalar_t__ addr_match (int *,int *) ;

__attribute__((used)) static int match_subs_info(struct snd_seq_port_subscribe *r,
      struct snd_seq_port_subscribe *s)
{
 if (addr_match(&r->sender, &s->sender) &&
     addr_match(&r->dest, &s->dest)) {
  if (r->flags && r->flags == s->flags)
   return r->queue == s->queue;
  else if (! r->flags)
   return 1;
 }
 return 0;
}
