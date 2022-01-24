#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ l; } ;
struct TYPE_5__ {unsigned short* x_dimen; } ;
struct TYPE_6__ {TYPE_1__ x_ary; } ;
struct TYPE_8__ {TYPE_3__ x_tagndx; TYPE_2__ x_fcnary; } ;
union internal_auxent {TYPE_4__ x_sym; } ;
struct type {int dummy; } ;
struct coff_symbol {scalar_t__ c_naux; scalar_t__ c_sclass; int /*<<< orphan*/  c_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 scalar_t__ C_ENTAG ; 
 scalar_t__ C_STRTAG ; 
 scalar_t__ C_UNTAG ; 
 unsigned int FUNC1 (unsigned int) ; 
 int DIMNUM ; 
 int /*<<< orphan*/  FT_INTEGER ; 
 scalar_t__ FUNC2 (unsigned int) ; 
 scalar_t__ FUNC3 (unsigned int) ; 
 scalar_t__ FUNC4 (unsigned int) ; 
 unsigned int N_BTMASK ; 
 struct type* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct type* FUNC7 (struct type*,struct type*,struct type*) ; 
 struct type* FUNC8 (struct type*,struct type*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  current_objfile ; 
 struct type* FUNC9 (struct coff_symbol*,int /*<<< orphan*/ ,union internal_auxent*) ; 
 struct type* FUNC10 (struct type*) ; 
 struct type* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct type* FUNC12 (struct type*) ; 
 int /*<<< orphan*/  symfile_complaints ; 

__attribute__((used)) static struct type *
FUNC13 (struct coff_symbol *cs, unsigned int c_type,
	     union internal_auxent *aux)
{
  struct type *type = 0;
  unsigned int new_c_type;

  if (c_type & ~N_BTMASK)
    {
      new_c_type = FUNC1 (c_type);
      if (FUNC4 (c_type))
	{
	  type = FUNC13 (cs, new_c_type, aux);
	  type = FUNC12 (type);
	}
      else if (FUNC3 (c_type))
	{
	  type = FUNC13 (cs, new_c_type, aux);
	  type = FUNC10 (type);
	}
      else if (FUNC2 (c_type))
	{
	  int i, n;
	  unsigned short *dim;
	  struct type *base_type, *index_type, *range_type;

	  /* Define an array type.  */
	  /* auxent refers to array, not base type */
	  if (aux->x_sym.x_tagndx.l == 0)
	    cs->c_naux = 0;

	  /* shift the indices down */
	  dim = &aux->x_sym.x_fcnary.x_ary.x_dimen[0];
	  i = 1;
	  n = dim[0];
	  for (i = 0; *dim && i < DIMNUM - 1; i++, dim++)
	    *dim = *(dim + 1);
	  *dim = 0;

	  base_type = FUNC13 (cs, new_c_type, aux);
	  index_type = FUNC11 (current_objfile, FT_INTEGER);
	  range_type =
	    FUNC8 ((struct type *) NULL, index_type, 0, n - 1);
	  type =
	    FUNC7 ((struct type *) NULL, base_type, range_type);
	}
      return type;
    }

  /* Reference to existing type.  This only occurs with the
     struct, union, and enum types.  EPI a29k coff
     fakes us out by producing aux entries with a nonzero
     x_tagndx for definitions of structs, unions, and enums, so we
     have to check the c_sclass field.  SCO 3.2v4 cc gets confused
     with pointers to pointers to defined structs, and generates
     negative x_tagndx fields.  */
  if (cs->c_naux > 0 && aux->x_sym.x_tagndx.l != 0)
    {
      if (cs->c_sclass != C_STRTAG
	  && cs->c_sclass != C_UNTAG
	  && cs->c_sclass != C_ENTAG
	  && aux->x_sym.x_tagndx.l >= 0)
	{
	  type = FUNC5 (aux->x_sym.x_tagndx.l);
	  return type;
	}
      else
	{
	  FUNC6 (&symfile_complaints,
		     "Symbol table entry for %s has bad tagndx value",
		     cs->c_name);
	  /* And fall through to decode_base_type... */
	}
    }

  return FUNC9 (cs, FUNC0 (c_type), aux);
}