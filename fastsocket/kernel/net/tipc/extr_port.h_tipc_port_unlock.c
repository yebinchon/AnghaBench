
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct port {TYPE_1__ publ; } ;


 int spin_unlock_bh (int ) ;

__attribute__((used)) static inline void tipc_port_unlock(struct port *p_ptr)
{
 spin_unlock_bh(p_ptr->publ.lock);
}
