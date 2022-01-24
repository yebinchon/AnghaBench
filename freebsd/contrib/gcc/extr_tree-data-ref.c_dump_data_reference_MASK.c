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
struct data_reference {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct data_reference*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct data_reference*) ; 
 unsigned int FUNC2 (struct data_reference*) ; 
 int /*<<< orphan*/  FUNC3 (struct data_reference*) ; 
 int /*<<< orphan*/  FUNC4 (struct data_reference*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void 
FUNC7 (FILE *outf, 
		     struct data_reference *dr)
{
  unsigned int i;
  
  FUNC5 (outf, "(Data Ref: \n  stmt: ");
  FUNC6 (outf, FUNC4 (dr), 0);
  FUNC5 (outf, "  ref: ");
  FUNC6 (outf, FUNC3 (dr), 0);
  FUNC5 (outf, "  base_object: ");
  FUNC6 (outf, FUNC1 (dr), 0);
  
  for (i = 0; i < FUNC2 (dr); i++)
    {
      FUNC5 (outf, "  Access function %d: ", i);
      FUNC6 (outf, FUNC0 (dr, i), 0);
    }
  FUNC5 (outf, ")\n");
}