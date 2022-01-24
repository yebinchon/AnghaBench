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
struct symbol {int dummy; } ;

/* Variables and functions */
 char* FUNC0 (struct symbol*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char*,char*) ; 

__attribute__((used)) static int
FUNC3 (const void *a, const void *b)
{
  char *aname, *bname;

  aname = FUNC0 (*(struct symbol **) a);
  bname = FUNC0 (*(struct symbol **) b);
  if (aname == NULL || bname == NULL)
    FUNC1 ("internal: compare_classes(1)");

  return FUNC2 (aname+1, bname+1);
}