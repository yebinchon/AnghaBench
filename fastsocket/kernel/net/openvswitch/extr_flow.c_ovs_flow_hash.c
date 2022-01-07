
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sw_flow_key {int dummy; } ;


 int DIV_ROUND_UP (int,int) ;
 int jhash2 (int *,int ,int ) ;

__attribute__((used)) static u32 ovs_flow_hash(const struct sw_flow_key *key, int key_start, int key_len)
{
 return jhash2((u32 *)((u8 *)key + key_start),
        DIV_ROUND_UP(key_len - key_start, sizeof(u32)), 0);
}
