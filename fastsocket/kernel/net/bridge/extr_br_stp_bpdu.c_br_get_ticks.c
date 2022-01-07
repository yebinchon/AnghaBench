
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIV_ROUND_UP (unsigned long,int ) ;
 unsigned long HZ ;
 int STP_HZ ;
 unsigned long get_unaligned_be16 (unsigned char const*) ;

__attribute__((used)) static inline int br_get_ticks(const unsigned char *src)
{
 unsigned long ticks = get_unaligned_be16(src);

 return DIV_ROUND_UP(ticks * HZ, STP_HZ);
}
