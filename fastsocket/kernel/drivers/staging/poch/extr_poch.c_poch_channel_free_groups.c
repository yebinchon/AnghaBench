
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct poch_group_info {scalar_t__ pg; } ;
struct channel_info {unsigned long group_count; int group_size; struct poch_group_info* groups; } ;


 int __free_pages (scalar_t__,unsigned int) ;
 unsigned int get_order (int ) ;

__attribute__((used)) static void poch_channel_free_groups(struct channel_info *channel)
{
 unsigned long i;

 for (i = 0; i < channel->group_count; i++) {
  struct poch_group_info *group;
  unsigned int order;

  group = &channel->groups[i];
  order = get_order(channel->group_size);
  if (group->pg)
   __free_pages(group->pg, order);
 }
}
