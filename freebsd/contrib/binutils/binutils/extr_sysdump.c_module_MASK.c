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
 int EOF ; 
 int IT_tr_CODE ; 
 int /*<<< orphan*/  file ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5 (void)
{
  int c = 0;
  int l = 0;

  FUNC3 (1, "MODULE***\n");

  do
    {
      c = FUNC0 (file);
      FUNC4 (c, file);

      c &= 0x7f;
    }
  while (FUNC1 (c) && c != IT_tr_CODE);

  FUNC3 (-1, "");

  c = FUNC0 (file);
  while (c != EOF)
    {
      FUNC2 ("%02x ", c);
      l++;
      if (l == 32)
	{
	  FUNC2 ("\n");
	  l = 0;
	}
      c = FUNC0 (file);
    }
}