
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int substreams; } ;
struct snd_pcm_substream {TYPE_1__ self_group; int link_list; TYPE_1__* group; } ;


 int INIT_LIST_HEAD (int *) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static void relink_to_local(struct snd_pcm_substream *substream)
{
 substream->group = &substream->self_group;
 INIT_LIST_HEAD(&substream->self_group.substreams);
 list_add_tail(&substream->link_list, &substream->self_group.substreams);
}
