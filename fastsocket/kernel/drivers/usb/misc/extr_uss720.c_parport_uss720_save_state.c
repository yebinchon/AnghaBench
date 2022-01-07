
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct parport_uss720_private {int * reg; } ;
struct TYPE_3__ {int ecr; int ctr; } ;
struct TYPE_4__ {TYPE_1__ pc; } ;
struct parport_state {TYPE_2__ u; } ;
struct parport {struct parport_uss720_private* private_data; } ;


 int GFP_ATOMIC ;
 scalar_t__ get_1284_register (struct parport*,int,int *,int ) ;

__attribute__((used)) static void parport_uss720_save_state(struct parport *pp, struct parport_state *s)
{
 struct parport_uss720_private *priv = pp->private_data;





 s->u.pc.ctr = priv->reg[1];
 s->u.pc.ecr = priv->reg[2];
}
