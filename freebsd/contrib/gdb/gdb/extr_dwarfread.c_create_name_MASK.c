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
struct obstack {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct obstack*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int FUNC2 (char*) ; 

__attribute__((used)) static char *
FUNC3 (char *name, struct obstack *obstackp)
{
  int length;
  char *newname;

  length = FUNC2 (name) + 1;
  newname = (char *) FUNC0 (obstackp, length);
  FUNC1 (newname, name);
  return (newname);
}