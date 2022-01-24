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
typedef  scalar_t__ LONGEST ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct type*) ; 
 scalar_t__ TYPE_CODE_ENUM ; 
 scalar_t__ FUNC2 (struct type*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct type*,int) ; 
 int FUNC4 (struct type*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 

__attribute__((used)) static LONGEST
FUNC6 (struct type* type, LONGEST val)
{
  char name[7];
  int f;

  if (type == NULL || FUNC1 (type) != TYPE_CODE_ENUM)
    return val;
  FUNC5 (name, "QU%02x", (int) val);
  for (f = 0; f < FUNC4 (type); f += 1) 
    {
      if (FUNC0 (name, FUNC3 (type, f)))
	return FUNC2 (type, f);
    }
  return val;
}