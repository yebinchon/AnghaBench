
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;



extern bool cmpk_message_handle_tx(
 struct net_device *dev,
 u8* codevirtualaddress,
 u32 packettype,
 u32 buffer_len)
{

 bool rt_status = 1;
 return rt_status;
}
