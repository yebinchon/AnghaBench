
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* read ) (TYPE_1__*,void*,int) ;} ;
typedef TYPE_1__ smd_channel_t ;


 int stub1 (TYPE_1__*,void*,int) ;

int smd_read(smd_channel_t *ch, void *data, int len)
{
 return ch->read(ch, data, len);
}
