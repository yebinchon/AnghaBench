
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int phdr; } ;
struct port {TYPE_1__ publ; } ;


 int msg_src_droppable (int *) ;

__attribute__((used)) static int port_unreliable(struct port *p_ptr)
{
 return msg_src_droppable(&p_ptr->publ.phdr);
}
