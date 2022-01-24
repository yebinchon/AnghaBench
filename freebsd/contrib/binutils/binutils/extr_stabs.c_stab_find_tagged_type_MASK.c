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
struct stab_tag {char* name; scalar_t__ kind; scalar_t__ type; scalar_t__ slot; struct stab_tag* next; } ;
struct stab_handle {struct stab_tag* tags; } ;
typedef  enum debug_type_kind { ____Placeholder_debug_type_kind } debug_type_kind ;
typedef  scalar_t__ debug_type ;

/* Variables and functions */
 scalar_t__ DEBUG_KIND_ILLEGAL ; 
 scalar_t__ DEBUG_TYPE_NULL ; 
 scalar_t__ FUNC0 (void*,char*,scalar_t__) ; 
 scalar_t__ FUNC1 (void*,scalar_t__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct stab_tag*,int /*<<< orphan*/ ,int) ; 
 char* FUNC4 (char const*,int) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static debug_type
FUNC7 (void *dhandle, struct stab_handle *info,
		       const char *p, int len, enum debug_type_kind kind)
{
  char *name;
  debug_type dtype;
  struct stab_tag *st;

  name = FUNC4 (p, len);

  /* We pass DEBUG_KIND_ILLEGAL because we want all tags in the same
     namespace.  This is right for C, and I don't know how to handle
     other languages.  FIXME.  */
  dtype = FUNC0 (dhandle, name, DEBUG_KIND_ILLEGAL);
  if (dtype != DEBUG_TYPE_NULL)
    {
      FUNC2 (name);
      return dtype;
    }

  /* We need to allocate an entry on the undefined tag list.  */
  for (st = info->tags; st != NULL; st = st->next)
    {
      if (st->name[0] == name[0]
	  && FUNC5 (st->name, name) == 0)
	{
	  if (st->kind == DEBUG_KIND_ILLEGAL)
	    st->kind = kind;
	  FUNC2 (name);
	  break;
	}
    }
  if (st == NULL)
    {
      st = (struct stab_tag *) FUNC6 (sizeof *st);
      FUNC3 (st, 0, sizeof *st);

      st->next = info->tags;
      st->name = name;
      st->kind = kind;
      st->slot = DEBUG_TYPE_NULL;
      st->type = FUNC1 (dhandle, &st->slot, name);
      info->tags = st;
    }

  return st->type;
}