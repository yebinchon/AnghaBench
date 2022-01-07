
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct link {int dummy; } ;


 scalar_t__ link_next_sent (struct link*) ;
 int mod (scalar_t__) ;

__attribute__((used)) static u32 link_last_sent(struct link *l_ptr)
{
 return mod(link_next_sent(l_ptr) - 1);
}
