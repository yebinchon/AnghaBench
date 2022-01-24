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
struct pr_handle {int dummy; } ;
typedef  enum debug_type_kind { ____Placeholder_debug_type_kind } debug_type_kind ;
typedef  int /*<<< orphan*/  bfd_boolean ;

/* Variables and functions */
#define  DEBUG_KIND_CLASS 132 
#define  DEBUG_KIND_ENUM 131 
#define  DEBUG_KIND_STRUCT 130 
#define  DEBUG_KIND_UNION 129 
#define  DEBUG_KIND_UNION_CLASS 128 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct pr_handle*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct pr_handle*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,unsigned int) ; 

__attribute__((used)) static bfd_boolean
FUNC4 (void *p, const char *name, unsigned int id,
	     enum debug_type_kind kind)
{
  struct pr_handle *info = (struct pr_handle *) p;
  const char *t, *tag;
  char idbuf[20];

  switch (kind)
    {
    case DEBUG_KIND_STRUCT:
      t = "struct ";
      break;
    case DEBUG_KIND_UNION:
      t = "union ";
      break;
    case DEBUG_KIND_ENUM:
      t = "enum ";
      break;
    case DEBUG_KIND_CLASS:
      t = "class ";
      break;
    case DEBUG_KIND_UNION_CLASS:
      t = "union class ";
      break;
    default:
      FUNC0 ();
      return FALSE;
    }

  if (! FUNC2 (info, t))
    return FALSE;
  if (name != NULL)
    tag = name;
  else
    {
      FUNC3 (idbuf, "%%anon%u", id);
      tag = idbuf;
    }

  if (! FUNC1 (info, tag))
    return FALSE;

  return TRUE;
}