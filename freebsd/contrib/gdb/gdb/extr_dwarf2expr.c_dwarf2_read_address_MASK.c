#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int TARGET_ADDR_BIT ; 
 int TARGET_CHAR_BIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int) ; 

CORE_ADDR
FUNC2 (unsigned char *buf, unsigned char *buf_end, int *bytes_read)
{
  CORE_ADDR result;

  if (buf_end - buf < TARGET_ADDR_BIT / TARGET_CHAR_BIT)
    FUNC0 ("dwarf2_read_address: Corrupted DWARF expression.");

  *bytes_read = TARGET_ADDR_BIT / TARGET_CHAR_BIT;
  /* NOTE: cagney/2003-05-22: This extract is assuming that a DWARF 2
     address is always unsigned.  That may or may not be true.  */
  result = FUNC1 (buf, TARGET_ADDR_BIT / TARGET_CHAR_BIT);
  return result;
}