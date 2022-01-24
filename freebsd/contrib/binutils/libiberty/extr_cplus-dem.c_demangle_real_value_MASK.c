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
struct work_stuff {int dummy; } ;
typedef  int /*<<< orphan*/  string ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned char) ; 
 int FUNC1 (struct work_stuff*,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  tk_real ; 

__attribute__((used)) static int
FUNC3 (struct work_stuff *work,
                     const char **mangled, string *s)
{
  if (**mangled == 'E')
    return FUNC1 (work, mangled, s, tk_real);

  if (**mangled == 'm')
    {
      FUNC2 (s, "-", 1);
      (*mangled)++;
    }
  while (FUNC0 ((unsigned char)**mangled))
    {
      FUNC2 (s, *mangled, 1);
      (*mangled)++;
    }
  if (**mangled == '.') /* fraction */
    {
      FUNC2 (s, ".", 1);
      (*mangled)++;
      while (FUNC0 ((unsigned char)**mangled))
	{
	  FUNC2 (s, *mangled, 1);
	  (*mangled)++;
	}
    }
  if (**mangled == 'e') /* exponent */
    {
      FUNC2 (s, "e", 1);
      (*mangled)++;
      while (FUNC0 ((unsigned char)**mangled))
	{
	  FUNC2 (s, *mangled, 1);
	  (*mangled)++;
	}
    }

  return 1;
}