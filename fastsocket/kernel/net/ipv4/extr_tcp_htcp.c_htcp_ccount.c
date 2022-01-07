
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct htcp {int minRTT; } ;


 int htcp_cong_time (struct htcp const*) ;

__attribute__((used)) static inline u32 htcp_ccount(const struct htcp *ca)
{
 return htcp_cong_time(ca) / ca->minRTT;
}
