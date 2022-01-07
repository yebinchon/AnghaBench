
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct u132 {int num_ports; int next_statechange; } ;
struct TYPE_2__ {int a; } ;


 int EINVAL ;
 int MAX_U132_PORTS ;
 int OHCI_INTR_MIE ;
 int RH_A_NDP ;
 int intrdisable ;
 int jiffies ;
 int read_roothub_info (struct u132*) ;
 TYPE_1__ roothub ;
 int u132_disable (struct u132*) ;
 int u132_read_pcimem (struct u132*,int,int*) ;
 int u132_write_pcimem (struct u132*,int ,int ) ;

__attribute__((used)) static int u132_init(struct u132 *u132)
{
 int retval;
 u32 control;
 u132_disable(u132);
 u132->next_statechange = jiffies;
 retval = u132_write_pcimem(u132, intrdisable, OHCI_INTR_MIE);
 if (retval)
  return retval;
 retval = u132_read_pcimem(u132, control, &control);
 if (retval)
  return retval;
 if (u132->num_ports == 0) {
  u32 rh_a = -1;
  retval = u132_read_pcimem(u132, roothub.a, &rh_a);
  if (retval)
   return retval;
  u132->num_ports = rh_a & RH_A_NDP;
  retval = read_roothub_info(u132);
  if (retval)
   return retval;
 }
 if (u132->num_ports > MAX_U132_PORTS)
  return -EINVAL;

 return 0;
}
