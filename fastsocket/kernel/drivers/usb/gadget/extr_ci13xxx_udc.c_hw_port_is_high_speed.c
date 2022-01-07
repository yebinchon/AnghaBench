
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ lpm; } ;


 int CAP_DEVLC ;
 int CAP_PORTSC ;
 int DEVLC_PSPD ;
 int PORTSC_HSP ;
 TYPE_1__ hw_bank ;
 int hw_cread (int ,int ) ;

__attribute__((used)) static int hw_port_is_high_speed(void)
{
 return hw_bank.lpm ? hw_cread(CAP_DEVLC, DEVLC_PSPD) :
  hw_cread(CAP_PORTSC, PORTSC_HSP);
}
