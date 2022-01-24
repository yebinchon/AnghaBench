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
struct stab_write_handle {long type_index; } ;
typedef  enum debug_var_kind { ____Placeholder_debug_var_kind } debug_var_kind ;
typedef  int /*<<< orphan*/  bfd_vma ;
typedef  int /*<<< orphan*/  bfd_boolean ;

/* Variables and functions */
#define  DEBUG_GLOBAL 132 
#define  DEBUG_LOCAL 131 
#define  DEBUG_LOCAL_STATIC 130 
#define  DEBUG_REGISTER 129 
#define  DEBUG_STATIC 128 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char) ; 
 int N_GSYM ; 
 int N_LSYM ; 
 int N_RSYM ; 
 int N_STSYM ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,...) ; 
 char* FUNC4 (struct stab_write_handle*) ; 
 int /*<<< orphan*/  FUNC5 (struct stab_write_handle*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC6 (char const*) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 

__attribute__((used)) static bfd_boolean
FUNC8 (void *p, const char *name, enum debug_var_kind kind,
	       bfd_vma val)
{
  struct stab_write_handle *info = (struct stab_write_handle *) p;
  char *s, *buf;
  int stab_type;
  const char *kindstr;

  s = FUNC4 (info);

  switch (kind)
    {
    default:
      FUNC1 ();

    case DEBUG_GLOBAL:
      stab_type = N_GSYM;
      kindstr = "G";
      break;

    case DEBUG_STATIC:
      stab_type = N_STSYM;
      kindstr = "S";
      break;

    case DEBUG_LOCAL_STATIC:
      stab_type = N_STSYM;
      kindstr = "V";
      break;

    case DEBUG_LOCAL:
      stab_type = N_LSYM;
      kindstr = "";

      /* Make sure that this is a type reference or definition.  */
      if (! FUNC0 (*s))
	{
	  char *n;
	  long index;

	  index = info->type_index;
	  ++info->type_index;
	  n = (char *) FUNC7 (FUNC6 (s) + 20);
	  FUNC3 (n, "%ld=%s", index, s);
	  FUNC2 (s);
	  s = n;
	}
      break;

    case DEBUG_REGISTER:
      stab_type = N_RSYM;
      kindstr = "r";
      break;
    }

  buf = (char *) FUNC7 (FUNC6 (name) + FUNC6 (s) + 3);
  FUNC3 (buf, "%s:%s%s", name, kindstr, s);
  FUNC2 (s);

  if (! FUNC5 (info, stab_type, 0, val, buf))
    return FALSE;

  FUNC2 (buf);

  return TRUE;
}