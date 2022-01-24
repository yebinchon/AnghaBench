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
 int* codep ; 
 scalar_t__ obuf ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char const*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 

__attribute__((used)) static void
FUNC3 (int bytemode, int sizeflag)
{
  const char *alt;

  switch (*codep)
    {
    case 0xf8:
      alt = "swapgs";
      break;
    case 0xf9:
      alt = "rdtscp";
      break;
    default:
      FUNC0 (bytemode, sizeflag);
      return;
    }
  /* Override "invlpg".  */
  FUNC1 (obuf + FUNC2 (obuf) - 6, alt);
  codep++;
}