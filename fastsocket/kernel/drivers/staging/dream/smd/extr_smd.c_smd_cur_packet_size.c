
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int current_packet; } ;
typedef TYPE_1__ smd_channel_t ;



int smd_cur_packet_size(smd_channel_t *ch)
{
 return ch->current_packet;
}
