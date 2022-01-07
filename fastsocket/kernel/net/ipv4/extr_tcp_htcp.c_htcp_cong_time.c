
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct htcp {scalar_t__ last_cong; } ;


 scalar_t__ jiffies ;

__attribute__((used)) static inline u32 htcp_cong_time(const struct htcp *ca)
{
 return jiffies - ca->last_cong;
}
