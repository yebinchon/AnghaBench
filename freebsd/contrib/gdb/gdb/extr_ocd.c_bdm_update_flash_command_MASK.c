#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct cleanup {int dummy; } ;
struct TYPE_2__ {void (* to_store_registers ) (int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  OCD_ENTER_MON ; 
 int /*<<< orphan*/  OCD_ERASE_FLASH ; 
 int /*<<< orphan*/  OCD_EXIT_MON ; 
 int /*<<< orphan*/  OCD_PROGRAM_FLASH ; 
 int /*<<< orphan*/  OCD_WRITE_MEM ; 
 TYPE_1__ current_target ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 void FUNC2 (int) ; 
 int /*<<< orphan*/  ocd_desc ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  write_mem_command ; 

__attribute__((used)) static void
FUNC4 (char *args, int from_tty)
{
  int status, pktlen;
  struct cleanup *old_chain; 
  void (*store_registers_tmp) (int);

  if (!ocd_desc)
    FUNC0 ("Not connected to OCD device.");

  if (!args)
    FUNC0 ("Must specify file containing new OCD code.");

/*  old_chain = make_cleanup (flash_cleanup, 0); */

  FUNC3 (OCD_ENTER_MON, &status, &pktlen);

  FUNC3 (OCD_ERASE_FLASH, &status, &pktlen);

  write_mem_command = OCD_PROGRAM_FLASH;
  store_registers_tmp = current_target.to_store_registers;
  current_target.to_store_registers = noop_store_registers;

  FUNC1 (args, from_tty);

  current_target.to_store_registers = store_registers_tmp;
  write_mem_command = OCD_WRITE_MEM;

  FUNC3 (OCD_EXIT_MON, &status, &pktlen);

/*  discard_cleanups (old_chain); */
}