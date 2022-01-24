#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char const* mangled; char const* demangled; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,char*) ; 
 scalar_t__ FUNC1 (char const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t,int) ; 
 TYPE_1__* ada_opname_table ; 
 scalar_t__ FUNC3 (char const) ; 
 int /*<<< orphan*/  FUNC4 (char const) ; 
 scalar_t__ FUNC5 (char const) ; 
 scalar_t__ FUNC6 (char) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*) ; 
 int FUNC9 (char const*) ; 
 char* FUNC10 (char const*,char*) ; 

char *
FUNC11 (const char *mangled)
{
  int i, j;
  int len0;
  const char *p;
  char *demangled;
  int at_start_name;
  static char *demangling_buffer = NULL;
  static size_t demangling_buffer_size = 0;

  if (FUNC1 (mangled, "_ada_", 5))
    mangled += 5;

  if (mangled[0] == '_' || mangled[0] == '<')
    goto Suppress;

  p = FUNC10 (mangled, "___");
  if (p == NULL)
    len0 = FUNC9 (mangled);
  else
    {
      if (p[3] == 'X')
	len0 = p - mangled;
      else
	goto Suppress;
    }
  if (len0 > 3 && FUNC0 (mangled + len0 - 3, "TKB"))
    len0 -= 3;
  if (len0 > 1 && FUNC0 (mangled + len0 - 1, "B"))
    len0 -= 1;

  /* Make demangled big enough for possible expansion by operator name. */
  FUNC2 (demangling_buffer, demangling_buffer_size, 2 * len0 + 1);
  demangled = demangling_buffer;

  if (FUNC5 (mangled[len0 - 1]))
    {
      for (i = len0 - 2; i >= 0 && FUNC5 (mangled[i]); i -= 1)
	;
      if (i > 1 && mangled[i] == '_' && mangled[i - 1] == '_')
	len0 = i - 1;
      else if (mangled[i] == '$')
	len0 = i;
    }

  for (i = 0, j = 0; i < len0 && !FUNC4 (mangled[i]); i += 1, j += 1)
    demangled[j] = mangled[i];

  at_start_name = 1;
  while (i < len0)
    {
      if (at_start_name && mangled[i] == 'O')
	{
	  int k;
	  for (k = 0; ada_opname_table[k].mangled != NULL; k += 1)
	    {
	      int op_len = FUNC9 (ada_opname_table[k].mangled);
	      if (FUNC1
		  (ada_opname_table[k].mangled + 1, mangled + i + 1,
		   op_len - 1) && !FUNC3 (mangled[i + op_len]))
		{
		  FUNC8 (demangled + j, ada_opname_table[k].demangled);
		  at_start_name = 0;
		  i += op_len;
		  j += FUNC9 (ada_opname_table[k].demangled);
		  break;
		}
	    }
	  if (ada_opname_table[k].mangled != NULL)
	    continue;
	}
      at_start_name = 0;

      if (i < len0 - 4 && FUNC1 (mangled + i, "TK__", 4))
	i += 2;
      if (mangled[i] == 'X' && i != 0 && FUNC3 (mangled[i - 1]))
	{
	  do
	    i += 1;
	  while (i < len0 && (mangled[i] == 'b' || mangled[i] == 'n'));
	  if (i < len0)
	    goto Suppress;
	}
      else if (i < len0 - 2 && mangled[i] == '_' && mangled[i + 1] == '_')
	{
	  demangled[j] = '.';
	  at_start_name = 1;
	  i += 2;
	  j += 1;
	}
      else
	{
	  demangled[j] = mangled[i];
	  i += 1;
	  j += 1;
	}
    }
  demangled[j] = '\000';

  for (i = 0; demangled[i] != '\0'; i += 1)
    if (FUNC6 (demangled[i]) || demangled[i] == ' ')
      goto Suppress;

  return demangled;

Suppress:
  FUNC2 (demangling_buffer, demangling_buffer_size, FUNC9 (mangled) + 3);
  demangled = demangling_buffer;
  if (mangled[0] == '<')
    FUNC8 (demangled, mangled);
  else
    FUNC7 (demangled, "<%s>", mangled);
  return demangled;

}