#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* ptr; } ;
typedef  TYPE_1__ sb ;
struct TYPE_7__ {scalar_t__ X_op; scalar_t__ X_add_number; } ;
typedef  TYPE_2__ expressionS ;

/* Variables and functions */
 scalar_t__ O_constant ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 char* input_line_pointer ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC3 (const char *emsg, int idx, sb *in, int *val)
{
  char *hold;
  expressionS ex;

  FUNC2 (in);

  hold = input_line_pointer;
  input_line_pointer = in->ptr + idx;
  FUNC1 (&ex);
  idx = input_line_pointer - in->ptr;
  input_line_pointer = hold;

  if (ex.X_op != O_constant)
    FUNC0 ("%s", emsg);

  *val = (int) ex.X_add_number;

  return idx;
}