#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {TYPE_4__* section; } ;
struct TYPE_20__ {TYPE_1__ indirect; } ;
struct bfd_link_order {unsigned int size; TYPE_2__ u; } ;
struct bfd_link_info {int dummy; } ;
typedef  long bfd_vma ;
typedef  int /*<<< orphan*/  bfd_size_type ;
typedef  int /*<<< orphan*/  bfd_byte ;
typedef  scalar_t__ bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
typedef  int /*<<< orphan*/  asymbol ;
struct TYPE_22__ {long size; int /*<<< orphan*/ * owner; } ;
typedef  TYPE_4__ asection ;
struct TYPE_23__ {unsigned int address; unsigned int addend; TYPE_3__* howto; } ;
typedef  TYPE_5__ arelent ;
struct TYPE_21__ {int type; unsigned int size; } ;

/* Variables and functions */
#define  ABS32 134 
#define  ABS32CODE 133 
#define  ABS32CODE_SHRUNK 132 
#define  ALIGNDONE 131 
 long BAL_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  CALLJ 130 
 int /*<<< orphan*/  FALSE ; 
#define  PCREL13 129 
 long PCREL13_MASK ; 
#define  PCREL24 128 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 long FUNC2 (int /*<<< orphan*/ *,TYPE_4__*,TYPE_5__**,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,struct bfd_link_info*,struct bfd_link_order*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ **) ; 
 long FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 long FUNC5 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int FUNC6 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ *,long,long) ; 
 TYPE_5__** FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct bfd_link_info*,TYPE_5__*,int /*<<< orphan*/ *,unsigned int,unsigned int,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct bfd_link_info*,TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__**) ; 
 long FUNC12 (TYPE_5__*,struct bfd_link_info*,TYPE_4__*) ; 
 long FUNC13 (TYPE_4__*) ; 

__attribute__((used)) static bfd_byte *
FUNC14 (bfd *output_bfd,
					  struct bfd_link_info *link_info,
					  struct bfd_link_order *link_order,
					  bfd_byte *data,
					  bfd_boolean relocatable,
					  asymbol **symbols)
{
  /* Get enough memory to hold the stuff.  */
  bfd *input_bfd = link_order->u.indirect.section->owner;
  asection *input_section = link_order->u.indirect.section;
  long reloc_size = FUNC5 (input_bfd, input_section);
  arelent **reloc_vector = NULL;
  long reloc_count;

  if (reloc_size < 0)
    goto error_return;

  /* If producing relocatable output, don't bother to relax.  */
  if (relocatable)
    return FUNC3 (output_bfd, link_info,
						       link_order,
						       data, relocatable,
						       symbols);

  reloc_vector = FUNC7 ((bfd_size_type) reloc_size);
  if (reloc_vector == NULL && reloc_size != 0)
    goto error_return;

  /* Read in the section.  */
  FUNC0 (FUNC6 (input_bfd,
					input_section,
					data,
					(bfd_vma) 0,
					input_section->size));

  reloc_count = FUNC2 (input_bfd,
					input_section,
					reloc_vector,
					symbols);
  if (reloc_count < 0)
    goto error_return;
  if (reloc_count > 0)
    {
      arelent **parent = reloc_vector;
      arelent *reloc ;
      unsigned int dst_address = 0;
      unsigned int src_address = 0;
      unsigned int run;
      unsigned int idx;

      /* Find how long a run we can do.  */
      while (dst_address < link_order->size)
	{
	  reloc = *parent;
	  if (reloc)
	    {
	      /* Note that the relaxing didn't tie up the addresses in the
		 relocation, so we use the original address to work out the
		 run of non-relocated data.  */
	      FUNC0 (reloc->address >= src_address);
	      run = reloc->address - src_address;
	      parent++;
	    }
	  else
	    run = link_order->size - dst_address;

	  /* Copy the bytes.  */
	  for (idx = 0; idx < run; idx++)
	    data[dst_address++] = data[src_address++];

	  /* Now do the relocation.  */
	  if (reloc)
	    {
	      switch (reloc->howto->type)
		{
		case ABS32CODE:
		  FUNC10 (input_bfd, link_info, reloc,
				   src_address + data, dst_address + data,
				   input_section);
		  src_address += 4;
		  dst_address += 4;
		  break;
		case ABS32:
		  FUNC8 (input_bfd,
			      (FUNC4 (input_bfd, data + src_address)
			       + FUNC12 (reloc, link_info, input_section)),
			      data + dst_address);
		  src_address += 4;
		  dst_address += 4;
		  break;
		case CALLJ:
		  FUNC9 (input_bfd, link_info, reloc, data,
				  src_address, dst_address, input_section,
				  FALSE);
		  src_address += 4;
		  dst_address += 4;
		  break;
		case ALIGNDONE:
		  FUNC0 (reloc->addend >= src_address);
		  FUNC0 ((bfd_vma) reloc->addend
			      <= input_section->size);
		  src_address = reloc->addend;
		  dst_address = ((dst_address + reloc->howto->size)
				 & ~reloc->howto->size);
		  break;
		case ABS32CODE_SHRUNK:
		  /* This used to be a callx, but we've found out that a
		     callj will reach, so do the right thing.  */
		  FUNC9 (input_bfd, link_info, reloc, data,
				  src_address + 4, dst_address, input_section,
				  TRUE);
		  dst_address += 4;
		  src_address += 8;
		  break;
		case PCREL24:
		  {
		    long int word = FUNC4 (input_bfd,
						data + src_address);
		    bfd_vma value;

		    value = FUNC12 (reloc, link_info, input_section);
		    word = ((word & ~BAL_MASK)
			    | (((word & BAL_MASK)
				+ value
				- FUNC13 (input_section)
				+ reloc->addend)
			       & BAL_MASK));

		    FUNC8 (input_bfd, (bfd_vma) word, data + dst_address);
		    dst_address += 4;
		    src_address += 4;

		  }
		  break;
		case PCREL13:
		  {
		    long int word = FUNC4 (input_bfd,
						data + src_address);
		    bfd_vma value;

		    value = FUNC12 (reloc, link_info, input_section);
		    word = ((word & ~PCREL13_MASK)
			    | (((word & PCREL13_MASK)
				+ value
				+ reloc->addend
				- FUNC13 (input_section))
			       & PCREL13_MASK));

		    FUNC8 (input_bfd, (bfd_vma) word, data + dst_address);
		    dst_address += 4;
		    src_address += 4;
		  }
		  break;

		default:
		  FUNC1 ();
		}
	    }
	}
    }
  if (reloc_vector != NULL)
    FUNC11 (reloc_vector);
  return data;
 error_return:
  if (reloc_vector != NULL)
    FUNC11 (reloc_vector);
  return NULL;
}