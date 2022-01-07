
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tipc_msg {int dummy; } ;


 int* msg_data (struct tipc_msg*) ;

__attribute__((used)) static inline void msg_set_dataoctet(struct tipc_msg *m, u32 pos)
{
 msg_data(m)[pos + 4] = 1;
}
