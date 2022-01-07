
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int phdr; } ;
struct port {TYPE_1__ publ; } ;


 int msg_destport (int *) ;

__attribute__((used)) static inline u32 tipc_peer_port(struct port *p_ptr)
{
 return msg_destport(&p_ptr->publ.phdr);
}
