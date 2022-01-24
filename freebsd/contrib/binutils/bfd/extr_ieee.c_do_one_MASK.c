#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_7__ ;
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int addend; unsigned int address; int /*<<< orphan*/ * howto; int /*<<< orphan*/ * sym_ptr_ptr; } ;
struct TYPE_19__ {TYPE_2__ relent; int /*<<< orphan*/  symbol; struct TYPE_19__* next; } ;
typedef  TYPE_3__ ieee_reloc_type ;
struct TYPE_20__ {unsigned int pc; TYPE_3__** reloc_tail_ptr; } ;
typedef  TYPE_4__ ieee_per_section_type ;
struct TYPE_23__ {int /*<<< orphan*/  abfd; } ;
struct TYPE_21__ {TYPE_7__ h; } ;
typedef  TYPE_5__ ieee_data_type ;
typedef  unsigned int bfd_vma ;
typedef  int /*<<< orphan*/  bfd_boolean ;
struct TYPE_22__ {int /*<<< orphan*/ * symbol_ptr_ptr; int /*<<< orphan*/  reloc_count; TYPE_1__* owner; int /*<<< orphan*/  flags; } ;
typedef  TYPE_6__ asection ;
struct TYPE_17__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  HAS_RELOC ; 
 int /*<<< orphan*/  SEC_RELOC ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  abs16_howto ; 
 int /*<<< orphan*/  abs32_howto ; 
 int /*<<< orphan*/  abs8_howto ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,unsigned char*) ; 
 scalar_t__ ieee_comma ; 
#define  ieee_function_either_close_b_enum 136 
#define  ieee_function_either_open_b_enum 135 
#define  ieee_function_signed_close_b_enum 134 
#define  ieee_function_signed_open_b_enum 133 
#define  ieee_function_unsigned_close_b_enum 132 
#define  ieee_function_unsigned_open_b_enum 131 
#define  ieee_load_constant_bytes_enum 130 
#define  ieee_load_with_relocation_enum 129 
#define  ieee_variable_R_enum 128 
 unsigned int FUNC5 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int*,TYPE_6__**) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_7__*,unsigned int*) ; 
 int /*<<< orphan*/  rel16_howto ; 
 int /*<<< orphan*/  rel32_howto ; 
 int /*<<< orphan*/  rel8_howto ; 
 int FUNC9 (TYPE_7__*) ; 

__attribute__((used)) static bfd_boolean
FUNC10 (ieee_data_type *ieee,
	ieee_per_section_type *current_map,
	unsigned char *location_ptr,
	asection *s,
	int iterations)
{
  switch (FUNC9 (&(ieee->h)))
    {
    case ieee_load_constant_bytes_enum:
      {
	unsigned int number_of_maus;
	unsigned int i;

	FUNC6 (&(ieee->h));
	number_of_maus = FUNC5 (&(ieee->h));

	for (i = 0; i < number_of_maus; i++)
	  {
	    location_ptr[current_map->pc++] = FUNC9 (&(ieee->h));
	    FUNC6 (&(ieee->h));
	  }
      }
      break;

    case ieee_load_with_relocation_enum:
      {
	bfd_boolean loop = TRUE;

	FUNC6 (&(ieee->h));
	while (loop)
	  {
	    switch (FUNC9 (&(ieee->h)))
	      {
	      case ieee_variable_R_enum:

	      case ieee_function_signed_open_b_enum:
	      case ieee_function_unsigned_open_b_enum:
	      case ieee_function_either_open_b_enum:
		{
		  unsigned int extra = 4;
		  bfd_boolean pcrel = FALSE;
		  asection *section;
		  ieee_reloc_type *r;

		  r = FUNC1 (ieee->h.abfd, sizeof (* r));
		  if (!r)
		    return FALSE;

		  *(current_map->reloc_tail_ptr) = r;
		  current_map->reloc_tail_ptr = &r->next;
		  r->next = (ieee_reloc_type *) NULL;
		  FUNC6 (&(ieee->h));
/*			    abort();*/
		  r->relent.sym_ptr_ptr = 0;
		  FUNC7 (ieee,
				    &r->relent.addend,
				    &r->symbol,
				    &pcrel, &extra, &section);
		  r->relent.address = current_map->pc;
		  s->flags |= SEC_RELOC;
		  s->owner->flags |= HAS_RELOC;
		  s->reloc_count++;
		  if (r->relent.sym_ptr_ptr == NULL && section != NULL)
		    r->relent.sym_ptr_ptr = section->symbol_ptr_ptr;

		  if (FUNC9 (&(ieee->h)) == (int) ieee_comma)
		    {
		      FUNC6 (&(ieee->h));
		      /* Fetch number of bytes to pad.  */
		      extra = FUNC5 (&(ieee->h));
		    };

		  switch (FUNC9 (&(ieee->h)))
		    {
		    case ieee_function_signed_close_b_enum:
		      FUNC6 (&(ieee->h));
		      break;
		    case ieee_function_unsigned_close_b_enum:
		      FUNC6 (&(ieee->h));
		      break;
		    case ieee_function_either_close_b_enum:
		      FUNC6 (&(ieee->h));
		      break;
		    default:
		      break;
		    }
		  /* Build a relocation entry for this type.  */
		  /* If pc rel then stick -ve pc into instruction
		     and take out of reloc ..

		     I've changed this. It's all too complicated. I
		     keep 0 in the instruction now.  */

		  switch (extra)
		    {
		    case 0:
		    case 4:

		      if (pcrel)
			{
#if KEEPMINUSPCININST
			  bfd_put_32 (ieee->h.abfd, -current_map->pc,
				      location_ptr + current_map->pc);
			  r->relent.howto = &rel32_howto;
			  r->relent.addend -= current_map->pc;
#else
			  FUNC3 (ieee->h.abfd, (bfd_vma) 0, location_ptr +
				      current_map->pc);
			  r->relent.howto = &rel32_howto;
#endif
			}
		      else
			{
			  FUNC3 (ieee->h.abfd, (bfd_vma) 0,
				      location_ptr + current_map->pc);
			  r->relent.howto = &abs32_howto;
			}
		      current_map->pc += 4;
		      break;
		    case 2:
		      if (pcrel)
			{
#if KEEPMINUSPCININST
			  bfd_put_16 (ieee->h.abfd, (bfd_vma) -current_map->pc,
				      location_ptr + current_map->pc);
			  r->relent.addend -= current_map->pc;
			  r->relent.howto = &rel16_howto;
#else

			  FUNC2 (ieee->h.abfd, (bfd_vma) 0,
				      location_ptr + current_map->pc);
			  r->relent.howto = &rel16_howto;
#endif
			}

		      else
			{
			  FUNC2 (ieee->h.abfd, (bfd_vma) 0,
				      location_ptr + current_map->pc);
			  r->relent.howto = &abs16_howto;
			}
		      current_map->pc += 2;
		      break;
		    case 1:
		      if (pcrel)
			{
#if KEEPMINUSPCININST
			  bfd_put_8 (ieee->h.abfd, (int) (-current_map->pc), location_ptr + current_map->pc);
			  r->relent.addend -= current_map->pc;
			  r->relent.howto = &rel8_howto;
#else
			  FUNC4 (ieee->h.abfd, 0, location_ptr + current_map->pc);
			  r->relent.howto = &rel8_howto;
#endif
			}
		      else
			{
			  FUNC4 (ieee->h.abfd, 0, location_ptr + current_map->pc);
			  r->relent.howto = &abs8_howto;
			}
		      current_map->pc += 1;
		      break;

		    default:
		      FUNC0 ();
		      return FALSE;
		    }
		}
		break;
	      default:
		{
		  bfd_vma this_size;

		  if (FUNC8 (&(ieee->h), &this_size))
		    {
		      unsigned int i;

		      for (i = 0; i < this_size; i++)
			{
			  location_ptr[current_map->pc++] = FUNC9 (&(ieee->h));
			  FUNC6 (&(ieee->h));
			}
		    }
		  else
		    loop = FALSE;
		}
	      }

	    /* Prevent more than the first load-item of an LR record
	       from being repeated (MRI convention).  */
	    if (iterations != 1)
	      loop = FALSE;
	  }
      }
    }
  return TRUE;
}