
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tasklet_struct {int dummy; } ;


 int tasklet_schedule (struct tasklet_struct*) ;

__attribute__((used)) static void usbatm_tasklet_schedule(unsigned long data)
{
 tasklet_schedule((struct tasklet_struct *) data);
}
