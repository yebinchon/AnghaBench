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
struct ui_file {int dummy; } ;
struct type {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct type*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct type*,int) ; 
 int FUNC2 (struct type*) ; 
 int /*<<< orphan*/  FUNC3 (struct ui_file*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct ui_file*) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6 (struct ui_file *stream, struct type *type)
{
  char *name;
  int i;
  int n_bases;
  int prev;

  n_bases = FUNC2 (type);

  for (i = 0, prev = 0; i < n_bases; i++)
    {
      int kind;

      kind = FUNC0 (type, i) ? 'I' : 'E';

      FUNC4 (kind == prev ? ", "
		      : kind == 'I' ? " implements "
		      : " extends ",
		      stream);
      prev = kind;
      name = FUNC5 (FUNC1 (type, i));

      FUNC3 (stream, "%s", name ? name : "(null)");
    }

  if (i > 0)
    FUNC4 (" ", stream);
}