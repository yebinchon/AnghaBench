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

/* Variables and functions */
 char** insn_name_ptr ; 
 int insn_name_ptr_size ; 
 int /*<<< orphan*/  FUNC0 (char**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char const*,int) ; 
 scalar_t__ FUNC2 (char const*) ; 
 char* FUNC3 (scalar_t__) ; 
 char** FUNC4 (char**,int) ; 
 char* FUNC5 (char const*) ; 

__attribute__((used)) static void
FUNC6 (int code, const char *name)
{
  static const char *last_real_name = "insn";
  static int last_real_code = 0;
  char *new;

  if (insn_name_ptr_size <= code)
    {
      int new_size;
      new_size = (insn_name_ptr_size ? insn_name_ptr_size * 2 : 512);
      insn_name_ptr = FUNC4 (insn_name_ptr, sizeof(char *) * new_size);
      FUNC0 (insn_name_ptr + insn_name_ptr_size, 0,
	      sizeof(char *) * (new_size - insn_name_ptr_size));
      insn_name_ptr_size = new_size;
    }

  if (!name || name[0] == '\0')
    {
      new = FUNC3 (FUNC2 (last_real_name) + 10);
      FUNC1 (new, "%s+%d", last_real_name, code - last_real_code);
    }
  else
    {
      last_real_name = new = FUNC5 (name);
      last_real_code = code;
    }

  insn_name_ptr[code] = new;
}