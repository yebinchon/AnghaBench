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
struct mem_address {int dummy; } ;
typedef  int /*<<< orphan*/  rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mem_address*,int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC2 (enum machine_mode mode, struct mem_address *addr)
{
  rtx address;

  address = FUNC0 (addr, false);
  if (!address)
    return false;

  return FUNC1 (mode, address);
}