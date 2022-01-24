#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int encoding; scalar_t__ mixed_encoding; } ;
struct TYPE_11__ {TYPE_1__ b; } ;
struct object {TYPE_2__ s; } ;
struct dwarf_cie {int dummy; } ;
struct TYPE_12__ {scalar_t__ CIE_delta; unsigned char const* pc_begin; } ;
typedef  TYPE_3__ fde ;
typedef  int _Unwind_Ptr ;

/* Variables and functions */
 int DW_EH_PE_absptr ; 
 int FUNC0 (int,struct object*) ; 
 struct dwarf_cie* FUNC1 (TYPE_3__ const*) ; 
 int FUNC2 (struct dwarf_cie const*) ; 
 int /*<<< orphan*/  FUNC3 (struct object*,TYPE_3__ const*) ; 
 TYPE_3__* FUNC4 (TYPE_3__ const*) ; 
 unsigned char* FUNC5 (int,int,unsigned char const*,int*) ; 
 int FUNC6 (int) ; 

__attribute__((used)) static const fde *
FUNC7 (struct object *ob, const fde *this_fde, void *pc)
{
  const struct dwarf_cie *last_cie = 0;
  int encoding = ob->s.b.encoding;
  _Unwind_Ptr base = FUNC0 (ob->s.b.encoding, ob);

  for (; ! FUNC3 (ob, this_fde); this_fde = FUNC4 (this_fde))
    {
      const struct dwarf_cie *this_cie;
      _Unwind_Ptr pc_begin, pc_range;

      /* Skip CIEs.  */
      if (this_fde->CIE_delta == 0)
	continue;

      if (ob->s.b.mixed_encoding)
	{
	  /* Determine the encoding for this FDE.  Note mixed encoded
	     objects for later.  */
	  this_cie = FUNC1 (this_fde);
	  if (this_cie != last_cie)
	    {
	      last_cie = this_cie;
	      encoding = FUNC2 (this_cie);
	      base = FUNC0 (encoding, ob);
	    }
	}

      if (encoding == DW_EH_PE_absptr)
	{
	  pc_begin = ((_Unwind_Ptr *) this_fde->pc_begin)[0];
	  pc_range = ((_Unwind_Ptr *) this_fde->pc_begin)[1];
	  if (pc_begin == 0)
	    continue;
	}
      else
	{
	  _Unwind_Ptr mask;
	  const unsigned char *p;

	  p = FUNC5 (encoding, base,
					    this_fde->pc_begin, &pc_begin);
	  FUNC5 (encoding & 0x0F, 0, p, &pc_range);

	  /* Take care to ignore link-once functions that were removed.
	     In these cases, the function address will be NULL, but if
	     the encoding is smaller than a pointer a true NULL may not
	     be representable.  Assume 0 in the representable bits is NULL.  */
	  mask = FUNC6 (encoding);
	  if (mask < sizeof (void *))
	    mask = (1L << (mask << 3)) - 1;
	  else
	    mask = -1;

	  if ((pc_begin & mask) == 0)
	    continue;
	}

      if ((_Unwind_Ptr) pc - pc_begin < pc_range)
	return this_fde;
    }

  return NULL;
}