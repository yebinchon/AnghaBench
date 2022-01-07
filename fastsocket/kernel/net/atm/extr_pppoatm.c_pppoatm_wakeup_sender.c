
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppp_channel {int dummy; } ;


 int ppp_output_wakeup (struct ppp_channel*) ;

__attribute__((used)) static void pppoatm_wakeup_sender(unsigned long arg)
{
 ppp_output_wakeup((struct ppp_channel *) arg);
}
