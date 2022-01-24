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

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,char*) ; 
 scalar_t__ FUNC1 (char const*,char*,int) ; 
 char* FUNC2 (struct type*,int) ; 

int
FUNC3 (struct type *type, int field_num)
{
  const char *name = FUNC2 (type, field_num);
  return (name != NULL
	  && (FUNC1 (name, "PARENT", 6) || FUNC0 (name, "REP")
	      || FUNC1 (name, "_parent", 7)
	      || name[0] == 'S' || name[0] == 'R' || name[0] == 'O'));
}