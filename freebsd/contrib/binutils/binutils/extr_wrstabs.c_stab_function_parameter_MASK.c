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
struct stab_write_handle {int dummy; } ;
typedef  enum debug_parm_kind { ____Placeholder_debug_parm_kind } debug_parm_kind ;
typedef  int /*<<< orphan*/  bfd_vma ;
typedef  int /*<<< orphan*/  bfd_boolean ;

/* Variables and functions */
#define  DEBUG_PARM_REFERENCE 131 
#define  DEBUG_PARM_REF_REG 130 
#define  DEBUG_PARM_REG 129 
#define  DEBUG_PARM_STACK 128 
 int /*<<< orphan*/  FALSE ; 
 int N_PSYM ; 
 int N_RSYM ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char const*,char,char*) ; 
 char* FUNC3 (struct stab_write_handle*) ; 
 int /*<<< orphan*/  FUNC4 (struct stab_write_handle*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 

__attribute__((used)) static bfd_boolean
FUNC7 (void *p, const char *name, enum debug_parm_kind kind, bfd_vma val)
{
  struct stab_write_handle *info = (struct stab_write_handle *) p;
  char *s, *buf;
  int stab_type;
  char kindc;

  s = FUNC3 (info);

  switch (kind)
    {
    default:
      FUNC0 ();

    case DEBUG_PARM_STACK:
      stab_type = N_PSYM;
      kindc = 'p';
      break;

    case DEBUG_PARM_REG:
      stab_type = N_RSYM;
      kindc = 'P';
      break;

    case DEBUG_PARM_REFERENCE:
      stab_type = N_PSYM;
      kindc = 'v';
      break;

    case DEBUG_PARM_REF_REG:
      stab_type = N_RSYM;
      kindc = 'a';
      break;
    }

  buf = (char *) FUNC6 (FUNC5 (name) + FUNC5 (s) + 3);
  FUNC2 (buf, "%s:%c%s", name, kindc, s);
  FUNC1 (s);

  if (! FUNC4 (info, stab_type, 0, val, buf))
    return FALSE;

  FUNC1 (buf);

  return TRUE;
}