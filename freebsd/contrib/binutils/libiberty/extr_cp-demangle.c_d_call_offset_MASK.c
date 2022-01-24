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
struct d_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct d_info*,char) ; 
 int FUNC1 (struct d_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct d_info*) ; 

__attribute__((used)) static int
FUNC3 (struct d_info *di, int c)
{
  if (c == '\0')
    c = FUNC1 (di);

  if (c == 'h')
    FUNC2 (di);
  else if (c == 'v')
    {
      FUNC2 (di);
      if (! FUNC0 (di, '_'))
	return 0;
      FUNC2 (di);
    }
  else
    return 0;

  if (! FUNC0 (di, '_'))
    return 0;

  return 1;
}