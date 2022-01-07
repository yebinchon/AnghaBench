
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct r8a66597 {int dummy; } ;


 int disable_irq_nrdy (struct r8a66597*,int ) ;
 int disable_irq_ready (struct r8a66597*,int ) ;

__attribute__((used)) static void pipe_irq_disable(struct r8a66597 *r8a66597, u16 pipenum)
{
 disable_irq_ready(r8a66597, pipenum);
 disable_irq_nrdy(r8a66597, pipenum);
}
