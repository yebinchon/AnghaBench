
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct o2net_msg {void* key; scalar_t__ status; void* sys_status; void* msg_type; void* data_len; void* magic; } ;


 int O2NET_ERR_NONE ;
 int O2NET_MSG_MAGIC ;
 void* cpu_to_be16 (int ) ;
 void* cpu_to_be32 (int ) ;
 int memset (struct o2net_msg*,int ,int) ;

__attribute__((used)) static void o2net_init_msg(struct o2net_msg *msg, u16 data_len, u16 msg_type, u32 key)
{
 memset(msg, 0, sizeof(struct o2net_msg));
 msg->magic = cpu_to_be16(O2NET_MSG_MAGIC);
 msg->data_len = cpu_to_be16(data_len);
 msg->msg_type = cpu_to_be16(msg_type);
 msg->sys_status = cpu_to_be32(O2NET_ERR_NONE);
 msg->status = 0;
 msg->key = cpu_to_be32(key);
}
