#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ bsp; scalar_t__ stack; } ;
struct TYPE_5__ {int /*<<< orphan*/ * builtins; int /*<<< orphan*/ * types; scalar_t__ alloc; } ;
struct TYPE_4__ {int /*<<< orphan*/ * vars; scalar_t__ alloc; } ;
struct ieee_info {TYPE_3__ blockstack; int /*<<< orphan*/  const* pend; TYPE_2__ types; int /*<<< orphan*/ * tags; int /*<<< orphan*/ * global_types; int /*<<< orphan*/ * global_vars; TYPE_1__ vars; int /*<<< orphan*/  saw_filename; int /*<<< orphan*/  const* bytes; int /*<<< orphan*/ * abfd; void* dhandle; } ;
typedef  int ieee_record_enum_type ;
typedef  int bfd_size_type ;
typedef  int /*<<< orphan*/  const bfd_byte ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 unsigned int BUILTIN_TYPE_COUNT ; 
 int /*<<< orphan*/  DEBUG_TYPE_NULL ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ieee_at_record_enum ; 
#define  ieee_atn_record_enum 132 
#define  ieee_bb_record_enum 131 
#define  ieee_be_record_enum 130 
 int /*<<< orphan*/  FUNC1 (struct ieee_info*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
#define  ieee_nn_record 129 
 int ieee_number_repeat_end_enum ; 
#define  ieee_ty_record_enum 128 
 int /*<<< orphan*/  FUNC2 (struct ieee_info*,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee_info*,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee_info*,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee_info*,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee_info*,int /*<<< orphan*/  const**) ; 

bfd_boolean
FUNC7 (void *dhandle, bfd *abfd, const bfd_byte *bytes, bfd_size_type len)
{
  struct ieee_info info;
  unsigned int i;
  const bfd_byte *p, *pend;

  info.dhandle = dhandle;
  info.abfd = abfd;
  info.bytes = bytes;
  info.pend = bytes + len;
  info.blockstack.bsp = info.blockstack.stack;
  info.saw_filename = FALSE;
  info.vars.alloc = 0;
  info.vars.vars = NULL;
  info.global_vars = NULL;
  info.types.alloc = 0;
  info.types.types = NULL;
  info.global_types = NULL;
  info.tags = NULL;
  for (i = 0; i < BUILTIN_TYPE_COUNT; i++)
    info.types.builtins[i] = DEBUG_TYPE_NULL;

  p = bytes;
  pend = info.pend;
  while (p < pend)
    {
      const bfd_byte *record_start;
      ieee_record_enum_type c;

      record_start = p;

      c = (ieee_record_enum_type) *p++;

      if (c == ieee_at_record_enum)
	c = (ieee_record_enum_type) (((unsigned int) c << 8) | *p++);

      if (c <= ieee_number_repeat_end_enum)
	{
	  FUNC1 (&info, record_start, FUNC0("unexpected number"));
	  return FALSE;
	}

      switch (c)
	{
	default:
	  FUNC1 (&info, record_start, FUNC0("unexpected record type"));
	  return FALSE;

	case ieee_bb_record_enum:
	  if (! FUNC3 (&info, &p))
	    return FALSE;
	  break;

	case ieee_be_record_enum:
	  if (! FUNC4 (&info, &p))
	    return FALSE;
	  break;

	case ieee_nn_record:
	  if (! FUNC5 (&info, &p))
	    return FALSE;
	  break;

	case ieee_ty_record_enum:
	  if (! FUNC6 (&info, &p))
	    return FALSE;
	  break;

	case ieee_atn_record_enum:
	  if (! FUNC2 (&info, &p))
	    return FALSE;
	  break;
	}
    }

  if (info.blockstack.bsp != info.blockstack.stack)
    {
      FUNC1 (&info, (const bfd_byte *) NULL,
		  FUNC0("blocks left on stack at end"));
      return FALSE;
    }

  return TRUE;
}