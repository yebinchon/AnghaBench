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
typedef  unsigned int gcov_unsigned_t ;
typedef  scalar_t__ gcov_position_t ;
struct TYPE_2__ {scalar_t__ mode; scalar_t__ start; unsigned int offset; int /*<<< orphan*/ * buffer; } ;

/* Variables and functions */
 unsigned int GCOV_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__ gcov_var ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 

void
FUNC2 (gcov_position_t position)
{
  unsigned offset;
  gcov_unsigned_t length;
  gcov_unsigned_t *buffer;

  FUNC0 (gcov_var.mode < 0);
  FUNC0 (position + 2 <= gcov_var.start + gcov_var.offset);
  FUNC0 (position >= gcov_var.start);
  offset = position - gcov_var.start;
  length = gcov_var.offset - offset - 2;
  buffer = (gcov_unsigned_t *) &gcov_var.buffer[offset];
  buffer[1] = length;
  if (gcov_var.offset >= GCOV_BLOCK_SIZE)
    FUNC1 (gcov_var.offset);
}