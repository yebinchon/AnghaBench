
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ next_out; scalar_t__ next_out_no; } ;


 TYPE_1__* bcl ;
 scalar_t__ buf_seqno (scalar_t__) ;
 int mod (scalar_t__) ;

u32 tipc_bclink_get_last_sent(void)
{
 u32 last_sent = mod(bcl->next_out_no - 1);

 if (bcl->next_out)
  last_sent = mod(buf_seqno(bcl->next_out) - 1);
 return last_sent;
}
