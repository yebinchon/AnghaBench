#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {unsigned int hash_table_size; } ;
typedef  TYPE_1__ CGEN_KEYWORD ;

/* Variables and functions */

__attribute__((used)) static unsigned int
FUNC0 (const CGEN_KEYWORD *kt, unsigned int value)
{
  return value % kt->hash_table_size;
}