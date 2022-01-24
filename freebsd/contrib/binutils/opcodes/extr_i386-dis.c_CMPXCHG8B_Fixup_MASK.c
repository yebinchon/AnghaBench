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
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int REX_W ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int o_mode ; 
 char* obuf ; 
 int rex ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int FUNC3 (char*) ; 

__attribute__((used)) static void
FUNC4 (int bytemode, int sizeflag)
{
  FUNC1 (REX_W);
  if (rex & REX_W)
    {
      /* Change cmpxchg8b to cmpxchg16b.  */
      char *p = obuf + FUNC3 (obuf) - 2;
      FUNC2 (p, "16b");
      bytemode = o_mode;
    }
  FUNC0 (bytemode, sizeflag);
}