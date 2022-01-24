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
typedef  int /*<<< orphan*/  dict_ent ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  dict_of_volnames ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 char* FUNC3 (char*,char) ; 
 char* FUNC4 (char*) ; 

__attribute__((used)) static dict_ent *
FUNC5(char *nn)
{
  dict_ent *de;
  char *p = FUNC4(nn);
  char *q;

  do {
    FUNC2("Searching for volname %s", p);
    de = FUNC1(dict_of_volnames, p);
    q = FUNC3(p, '/');
    if (q)
      *q = '\0';
  } while (!de && q);

  FUNC0(p);
  return de;
}