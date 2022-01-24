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
struct value {int dummy; } ;
struct obstack {int dummy; } ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct value*) ; 
 scalar_t__ FUNC2 (struct value*) ; 
 int /*<<< orphan*/  FUNC3 (struct value*) ; 
 char* FUNC4 (struct obstack*,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,char*,int) ; 
 scalar_t__ FUNC6 (struct value*) ; 
 struct value* FUNC7 (struct value**,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,char*) ; 

char *
FUNC8 (struct obstack *obstack, struct value *name)
{
  char *chrs;
  struct value *temp = name;
  int name_length;
  CORE_ADDR data_addr;
  temp = FUNC7 (&temp, NULL, "length", NULL, "structure");
  name_length = (int) FUNC6 (temp);
  data_addr = FUNC1 (temp) + FUNC2 (temp)
    + FUNC0 (FUNC3 (temp));
  chrs = FUNC4 (obstack, name_length + 1);
  chrs[name_length] = '\0';
  FUNC5 (data_addr, chrs, name_length);
  return chrs;
}