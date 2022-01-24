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
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (char*) ; 

__attribute__((used)) static void
FUNC5 (char *function, char *message,
	       CORE_ADDR memaddr, int len, char *string, int final_char)
{
  int real_len = (len == 0 && string != (char *) 0) ? FUNC4 (string) : len;
  char *safe_string = FUNC0 ((real_len * 4) + 1);
  FUNC2 (safe_string, string, real_len);

  if (final_char)
    FUNC1 ("%s (0x%s): %s: %s%c", function, FUNC3 (memaddr), message, safe_string, final_char);
  else
    FUNC1 ("%s (0x%s): %s: %s", function, FUNC3 (memaddr), message, safe_string);
}