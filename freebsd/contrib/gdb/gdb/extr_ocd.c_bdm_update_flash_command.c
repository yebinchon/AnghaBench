
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cleanup {int dummy; } ;
struct TYPE_2__ {void (* to_store_registers ) (int) ;} ;


 int OCD_ENTER_MON ;
 int OCD_ERASE_FLASH ;
 int OCD_EXIT_MON ;
 int OCD_PROGRAM_FLASH ;
 int OCD_WRITE_MEM ;
 TYPE_1__ current_target ;
 int error (char*) ;
 int generic_load (char*,int) ;
 void noop_store_registers (int) ;
 int ocd_desc ;
 int ocd_do_command (int ,int*,int*) ;
 int write_mem_command ;

__attribute__((used)) static void
bdm_update_flash_command (char *args, int from_tty)
{
  int status, pktlen;
  struct cleanup *old_chain;
  void (*store_registers_tmp) (int);

  if (!ocd_desc)
    error ("Not connected to OCD device.");

  if (!args)
    error ("Must specify file containing new OCD code.");



  ocd_do_command (OCD_ENTER_MON, &status, &pktlen);

  ocd_do_command (OCD_ERASE_FLASH, &status, &pktlen);

  write_mem_command = OCD_PROGRAM_FLASH;
  store_registers_tmp = current_target.to_store_registers;
  current_target.to_store_registers = noop_store_registers;

  generic_load (args, from_tty);

  current_target.to_store_registers = store_registers_tmp;
  write_mem_command = OCD_WRITE_MEM;

  ocd_do_command (OCD_EXIT_MON, &status, &pktlen);


}
