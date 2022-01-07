
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct o2net_msg_handler {int nh_msg_type; int nh_key; } ;
typedef int msg_type ;
typedef int key ;


 int memcmp (int *,int *,int) ;

__attribute__((used)) static int o2net_handler_cmp(struct o2net_msg_handler *nmh, u32 msg_type,
        u32 key)
{
 int ret = memcmp(&nmh->nh_key, &key, sizeof(key));

 if (ret == 0)
  ret = memcmp(&nmh->nh_msg_type, &msg_type, sizeof(msg_type));

 return ret;
}
