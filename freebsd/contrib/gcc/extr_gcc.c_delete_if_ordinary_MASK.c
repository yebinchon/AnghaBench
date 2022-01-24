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
struct stat {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,struct stat,int /*<<< orphan*/ ) ; 
 int EOF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  verbose_flag ; 

__attribute__((used)) static void
FUNC4 (const char *name)
{
  struct stat st;
#ifdef DEBUG
  int i, c;

  printf ("Delete %s? (y or n) ", name);
  fflush (stdout);
  i = getchar ();
  if (i != '\n')
    while ((c = getchar ()) != '\n' && c != EOF)
      ;

  if (i == 'y' || i == 'Y')
#endif /* DEBUG */
  FUNC0 (name, st, verbose_flag);
}