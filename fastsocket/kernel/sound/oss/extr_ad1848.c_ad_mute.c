
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned char* saved_regs; } ;
typedef TYPE_1__ ad1848_info ;


 unsigned char ad_read (TYPE_1__*,int) ;

__attribute__((used)) static void ad_mute(ad1848_info * devc)
{
 int i;
 unsigned char prev;





 for (i = 6; i < 8; i++)
 {
  prev = devc->saved_regs[i] = ad_read(devc, i);
 }

}
