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
struct TYPE_3__ {int /*<<< orphan*/  reg_val; } ;
struct TYPE_4__ {TYPE_1__ value; } ;
typedef  TYPE_2__ reg_entry ;
typedef  int /*<<< orphan*/  reg ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  nullregister ; 
 int /*<<< orphan*/  reg_hash ; 

__attribute__((used)) static reg
FUNC1 (char *reg_name)
{
  const reg_entry *reg;

  reg = (const reg_entry *) FUNC0 (reg_hash, reg_name);

  if (reg != NULL)
    return reg->value.reg_val;

  return nullregister;
}