
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* read_avail ) (TYPE_1__*) ;} ;
typedef TYPE_1__ smd_channel_t ;


 int stub1 (TYPE_1__*) ;

int smd_read_avail(smd_channel_t *ch)
{
 return ch->read_avail(ch);
}
