
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int phdr; } ;
struct port {TYPE_1__ publ; } ;


 int msg_destnode (int *) ;

__attribute__((used)) static u32 port_peernode(struct port *p_ptr)
{
 return msg_destnode(&p_ptr->publ.phdr);
}
