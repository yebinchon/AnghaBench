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
struct type {int dummy; } ;
struct return_value_word {int reg_offset; int buf_offset; scalar_t__ len; int /*<<< orphan*/  reg; } ;
typedef  int /*<<< orphan*/  raw_buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MAX_REGISTER_SIZE ; 
 int /*<<< orphan*/  current_gdbarch ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct type*,struct return_value_word*,struct return_value_word*) ; 

__attribute__((used)) static void
FUNC6 (struct type *valtype, char *valbuf)
{
  char raw_buffer[MAX_REGISTER_SIZE];
  struct return_value_word lo;
  struct return_value_word hi;
  FUNC5 (valtype, &hi, &lo);

  FUNC3 (raw_buffer, 0, sizeof (raw_buffer));
  FUNC2 (raw_buffer + lo.reg_offset, valbuf + lo.buf_offset, lo.len);
  FUNC1 (FUNC0 (lo.reg),
				   raw_buffer, FUNC4 (current_gdbarch,
							      lo.reg));

  if (hi.len > 0)
    {
      FUNC3 (raw_buffer, 0, sizeof (raw_buffer));
      FUNC2 (raw_buffer + hi.reg_offset, valbuf + hi.buf_offset, hi.len);
      FUNC1 (FUNC0 (hi.reg),
				       raw_buffer,
				       FUNC4 (current_gdbarch,
						      hi.reg));
    }
}