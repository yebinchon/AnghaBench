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
struct delay_desc {int lineno; struct delay_desc* next; scalar_t__ num; int /*<<< orphan*/  def; } ;
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 struct delay_desc* delays ; 
 int have_annul_false ; 
 int have_annul_true ; 
 int have_error ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 scalar_t__ num_delays ; 
 struct delay_desc* FUNC3 (int) ; 

__attribute__((used)) static void
FUNC4 (rtx def, int lineno)
{
  struct delay_desc *delay;
  int i;

  if (FUNC1 (def, 1) % 3 != 0)
    {
      FUNC2 (lineno,
			 "number of elements in DEFINE_DELAY must be multiple of three");
      have_error = 1;
      return;
    }

  for (i = 0; i < FUNC1 (def, 1); i += 3)
    {
      if (FUNC0 (def, 1, i + 1))
	have_annul_true = 1;
      if (FUNC0 (def, 1, i + 2))
	have_annul_false = 1;
    }

  delay = FUNC3 (sizeof (struct delay_desc));
  delay->def = def;
  delay->num = ++num_delays;
  delay->next = delays;
  delay->lineno = lineno;
  delays = delay;
}