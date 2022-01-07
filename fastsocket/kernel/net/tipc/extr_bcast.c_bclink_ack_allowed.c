
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int TIPC_MIN_LINK_WIN ;
 int tipc_own_tag ;

__attribute__((used)) static int bclink_ack_allowed(u32 n)
{
 return((n % TIPC_MIN_LINK_WIN) == tipc_own_tag);
}
