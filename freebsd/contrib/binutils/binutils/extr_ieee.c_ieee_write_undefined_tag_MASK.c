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
struct ieee_name_type_hash_entry {struct ieee_name_type* types; } ;
struct TYPE_2__ {char* name; char indx; } ;
struct ieee_name_type {int kind; TYPE_1__ type; struct ieee_name_type* next; } ;
struct ieee_handle {unsigned int name_indx; void* error; int /*<<< orphan*/  global_types; } ;
typedef  void* bfd_boolean ;

/* Variables and functions */
#define  DEBUG_KIND_CLASS 132 
#define  DEBUG_KIND_ENUM 131 
 int DEBUG_KIND_ILLEGAL ; 
#define  DEBUG_KIND_STRUCT 130 
#define  DEBUG_KIND_UNION 129 
#define  DEBUG_KIND_UNION_CLASS 128 
 void* FALSE ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ ieee_bb_record_enum ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee_handle*,int /*<<< orphan*/ *) ; 
 scalar_t__ ieee_nn_record ; 
 scalar_t__ ieee_ty_record_enum ; 
 int /*<<< orphan*/  FUNC3 (struct ieee_handle*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee_handle*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee_handle*,char) ; 

__attribute__((used)) static bfd_boolean
FUNC6 (struct ieee_name_type_hash_entry *h, void *p)
{
  struct ieee_handle *info = (struct ieee_handle *) p;
  struct ieee_name_type *nt;

  for (nt = h->types; nt != NULL; nt = nt->next)
    {
      unsigned int name_indx;
      char code;

      if (nt->kind == DEBUG_KIND_ILLEGAL)
	continue;

      if (FUNC1 (&info->global_types))
	{
	  if (! FUNC2 (info, &info->global_types)
	      || ! FUNC3 (info, (int) ieee_bb_record_enum)
	      || ! FUNC3 (info, 2)
	      || ! FUNC5 (info, 0)
	      || ! FUNC4 (info, ""))
	    {
	      info->error = TRUE;
	      return FALSE;
	    }
	}
      else
	{
	  if (! FUNC2 (info, &info->global_types))
	    {
	      info->error = TRUE;
	      return FALSE;
	    }
	}

      name_indx = info->name_indx;
      ++info->name_indx;
      if (! FUNC3 (info, (int) ieee_nn_record)
	  || ! FUNC5 (info, name_indx)
	  || ! FUNC4 (info, nt->type.name)
	  || ! FUNC3 (info, (int) ieee_ty_record_enum)
	  || ! FUNC5 (info, nt->type.indx)
	  || ! FUNC3 (info, 0xce)
	  || ! FUNC5 (info, name_indx))
	{
	  info->error = TRUE;
	  return FALSE;
	}

      switch (nt->kind)
	{
	default:
	  FUNC0 ();
	  info->error = TRUE;
	  return FALSE;
	case DEBUG_KIND_STRUCT:
	case DEBUG_KIND_CLASS:
	  code = 'S';
	  break;
	case DEBUG_KIND_UNION:
	case DEBUG_KIND_UNION_CLASS:
	  code = 'U';
	  break;
	case DEBUG_KIND_ENUM:
	  code = 'E';
	  break;
	}
      if (! FUNC5 (info, code)
	  || ! FUNC5 (info, 0))
	{
	  info->error = TRUE;
	  return FALSE;
	}
    }

  return TRUE;
}