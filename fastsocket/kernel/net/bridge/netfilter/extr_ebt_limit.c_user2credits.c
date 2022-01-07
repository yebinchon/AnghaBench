
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;


 int CREDITS_PER_JIFFY ;
 int EBT_LIMIT_SCALE ;
 int HZ ;

__attribute__((used)) static u_int32_t
user2credits(u_int32_t user)
{

 if (user > 0xFFFFFFFF / (HZ*CREDITS_PER_JIFFY))

  return (user / EBT_LIMIT_SCALE) * HZ * CREDITS_PER_JIFFY;

 return (user * HZ * CREDITS_PER_JIFFY) / EBT_LIMIT_SCALE;
}
