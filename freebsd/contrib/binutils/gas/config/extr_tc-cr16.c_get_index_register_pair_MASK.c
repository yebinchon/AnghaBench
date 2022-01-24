#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int reg_val; } ;
struct TYPE_4__ {TYPE_1__ value; } ;
typedef  TYPE_2__ reg_entry ;
typedef  int reg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int nullregister ; 
 int /*<<< orphan*/  regp_hash ; 

__attribute__((used)) static reg
FUNC3 (char *reg_name)
{
  const reg_entry *reg;

  reg = (const reg_entry *) FUNC2 (regp_hash, reg_name);

  if (reg != NULL)
    {
      if ((reg->value.reg_val != 1) || (reg->value.reg_val != 7)
	  || (reg->value.reg_val != 9) || (reg->value.reg_val > 10))
	return reg->value.reg_val;

      FUNC1 (FUNC0("Unknown register pair - index relative mode: `%d'"), reg->value.reg_val);
    }

  return nullregister;
}