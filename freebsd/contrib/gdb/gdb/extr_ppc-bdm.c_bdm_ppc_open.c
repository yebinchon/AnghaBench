
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 int OCD_TARGET_MOTO_PPC ;
 int bdm_ppc_ops ;
 int nowatchdog ;
 int ocd_open (char*,int,int ,int *) ;
 int ocd_write_bdm_register (int,int) ;
 int ocd_write_bytes (int,int ,int) ;

__attribute__((used)) static void
bdm_ppc_open (char *name, int from_tty)
{
  CORE_ADDR watchdogaddr = 0xff000004;

  ocd_open (name, from_tty, OCD_TARGET_MOTO_PPC, &bdm_ppc_ops);



  ocd_write_bdm_register (149, 0x20024000);


  ocd_write_bytes (watchdogaddr, nowatchdog, 4);
}
