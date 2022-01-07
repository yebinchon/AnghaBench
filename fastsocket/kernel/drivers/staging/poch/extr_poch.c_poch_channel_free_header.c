
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct channel_info {int header_pg; int header_size; } ;


 int __free_pages (int ,unsigned int) ;
 unsigned int get_order (int ) ;

__attribute__((used)) static void poch_channel_free_header(struct channel_info *channel)
{
 unsigned int order;

 order = get_order(channel->header_size);
 __free_pages(channel->header_pg, order);
}
