
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct res_counter {int dummy; } ;


 int * res_counter_member (struct res_counter*,int) ;

u64 res_counter_read_u64(struct res_counter *counter, int member)
{
 return *res_counter_member(counter, member);
}
