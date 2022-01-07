
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct kvec {void* iov_base; int iov_len; } ;


 int o2net_send_message_vec (int ,int ,struct kvec*,int,int ,int*) ;

int o2net_send_message(u32 msg_type, u32 key, void *data, u32 len,
         u8 target_node, int *status)
{
 struct kvec vec = {
  .iov_base = data,
  .iov_len = len,
 };
 return o2net_send_message_vec(msg_type, key, &vec, 1,
          target_node, status);
}
