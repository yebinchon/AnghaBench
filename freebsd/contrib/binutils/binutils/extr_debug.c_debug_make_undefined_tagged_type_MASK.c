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
struct debug_type {int dummy; } ;
struct debug_handle {int dummy; } ;
typedef  enum debug_type_kind { ____Placeholder_debug_type_kind } debug_type_kind ;
typedef  int /*<<< orphan*/  debug_type ;

/* Variables and functions */
#define  DEBUG_KIND_CLASS 132 
#define  DEBUG_KIND_ENUM 131 
#define  DEBUG_KIND_STRUCT 130 
#define  DEBUG_KIND_UNION 129 
#define  DEBUG_KIND_UNION_CLASS 128 
 int /*<<< orphan*/  DEBUG_TYPE_NULL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct debug_type* FUNC2 (struct debug_handle*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,char const*,struct debug_type*) ; 

debug_type
FUNC4 (void *handle, const char *name,
				  enum debug_type_kind kind)
{
  struct debug_handle *info = (struct debug_handle *) handle;
  struct debug_type *t;

  if (name == NULL)
    return DEBUG_TYPE_NULL;

  switch (kind)
    {
    case DEBUG_KIND_STRUCT:
    case DEBUG_KIND_UNION:
    case DEBUG_KIND_CLASS:
    case DEBUG_KIND_UNION_CLASS:
    case DEBUG_KIND_ENUM:
      break;

    default:
      FUNC1 (FUNC0("debug_make_undefined_type: unsupported kind"));
      return DEBUG_TYPE_NULL;
    }

  t = FUNC2 (info, kind, 0);
  if (t == NULL)
    return DEBUG_TYPE_NULL;

  return FUNC3 (handle, name, t);
}