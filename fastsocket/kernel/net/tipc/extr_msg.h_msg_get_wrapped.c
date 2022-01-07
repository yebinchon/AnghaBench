
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_msg {int dummy; } ;


 scalar_t__ msg_data (struct tipc_msg*) ;

__attribute__((used)) static inline struct tipc_msg *msg_get_wrapped(struct tipc_msg *m)
{
 return (struct tipc_msg *)msg_data(m);
}
