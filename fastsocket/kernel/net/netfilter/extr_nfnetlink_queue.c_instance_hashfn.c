
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_int16_t ;


 int INSTANCE_BUCKETS ;

__attribute__((used)) static inline u_int8_t instance_hashfn(u_int16_t queue_num)
{
 return ((queue_num >> 8) | queue_num) % INSTANCE_BUCKETS;
}
