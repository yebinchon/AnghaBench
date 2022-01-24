#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int flags; TYPE_2__* section; } ;
typedef  TYPE_1__ asymbol ;
struct TYPE_9__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int BSF_GLOBAL ; 
 int BSF_LOCAL ; 
 int BSF_OBJECT ; 
 int BSF_WEAK ; 
 char FUNC0 (char) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 char FUNC5 (int /*<<< orphan*/ ) ; 
 char FUNC6 (TYPE_2__*) ; 

int
FUNC7 (asymbol *symbol)
{
  char c;

  if (FUNC2 (symbol->section))
    return 'C';
  if (FUNC4 (symbol->section))
    {
      if (symbol->flags & BSF_WEAK)
	{
	  /* If weak, determine if it's specifically an object
	     or non-object weak.  */
	  if (symbol->flags & BSF_OBJECT)
	    return 'v';
	  else
	    return 'w';
	}
      else
	return 'U';
    }
  if (FUNC3 (symbol->section))
    return 'I';
  if (symbol->flags & BSF_WEAK)
    {
      /* If weak, determine if it's specifically an object
	 or non-object weak.  */
      if (symbol->flags & BSF_OBJECT)
	return 'V';
      else
	return 'W';
    }
  if (!(symbol->flags & (BSF_GLOBAL | BSF_LOCAL)))
    return '?';

  if (FUNC1 (symbol->section))
    c = 'a';
  else if (symbol->section)
    {
      c = FUNC5 (symbol->section->name);
      if (c == '?')
	c = FUNC6 (symbol->section);
    }
  else
    return '?';
  if (symbol->flags & BSF_GLOBAL)
    c = FUNC0 (c);
  return c;

  /* We don't have to handle these cases just yet, but we will soon:
     N_SETV: 'v';
     N_SETA: 'l';
     N_SETT: 'x';
     N_SETD: 'z';
     N_SETB: 's';
     N_INDR: 'i';
     */
}