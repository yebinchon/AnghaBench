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
struct symbol {int dummy; } ;
struct block {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VAR_DOMAIN ; 
 int FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct symbol***,struct block***) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct value* FUNC3 (struct symbol*,struct block*) ; 

__attribute__((used)) static struct value *
FUNC4 (char *name, char *err_msg)
{
  struct symbol **syms;
  struct block **blocks;
  int nsyms;

  nsyms =
    FUNC0 (name, FUNC2 (NULL), VAR_DOMAIN,
			    &syms, &blocks);

  if (nsyms != 1)
    {
      if (err_msg == NULL)
	return 0;
      else
	FUNC1 ("%s", err_msg);
    }

  return FUNC3 (syms[0], blocks[0]);
}