#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_9__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;
typedef  struct TYPE_21__   TYPE_17__ ;

/* Type definitions */
typedef  scalar_t__ bfd_vma ;
typedef  scalar_t__ bfd_size_type ;
typedef  int /*<<< orphan*/  bfd_signed_vma ;
typedef  int /*<<< orphan*/  bfd_byte ;
typedef  int /*<<< orphan*/  bfd_boolean ;
struct TYPE_22__ {int flags; } ;
typedef  TYPE_1__ bfd ;
typedef  int /*<<< orphan*/  asymbol ;
struct TYPE_23__ {unsigned int reloc_count; scalar_t__ lma; scalar_t__ size; scalar_t__ index; int /*<<< orphan*/ * symbol; TYPE_3__** orelocation; } ;
typedef  TYPE_2__ asection ;
struct TYPE_24__ {scalar_t__ address; scalar_t__ addend; TYPE_17__* howto; int /*<<< orphan*/ ** sym_ptr_ptr; } ;
typedef  TYPE_3__ arelent ;
struct TYPE_25__ {int /*<<< orphan*/ * data; } ;
struct TYPE_21__ {int size; scalar_t__ pc_relative; int /*<<< orphan*/  pcrel_offset; int /*<<< orphan*/  src_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int EXEC_P ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ IEEE_SECTION_NUMBER_BASE ; 
 int /*<<< orphan*/  TRUE ; 
 unsigned int FUNC1 (TYPE_1__*) ; 
 unsigned int FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (void*,scalar_t__,TYPE_1__*) ; 
 unsigned int FUNC4 (TYPE_17__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  comp ; 
 int /*<<< orphan*/  ieee_function_either_close_b_enum ; 
 int /*<<< orphan*/  ieee_function_either_open_b_enum ; 
 int /*<<< orphan*/  ieee_load_constant_bytes_enum ; 
 int /*<<< orphan*/  ieee_load_with_relocation_enum ; 
 TYPE_9__* FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  ieee_set_current_pc_enum ; 
 int /*<<< orphan*/  ieee_set_current_section_enum ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ *,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__**,unsigned int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bfd_boolean
FUNC15 (bfd *abfd, asection *s)
{
  unsigned int number_of_maus_in_address =
    FUNC1 (abfd) / FUNC2 (abfd);
  unsigned int relocs_to_go = s->reloc_count;
  bfd_byte *stream = FUNC9 (s)->data;
  arelent **p = s->orelocation;
  bfd_size_type current_byte_index = 0;

  FUNC14 (s->orelocation,
	 relocs_to_go,
	 sizeof (arelent **),
	 comp);

  /* Output the section preheader.  */
  if (! FUNC11 (abfd, ieee_set_current_section_enum)
      || ! FUNC11 (abfd,
			    (bfd_byte) (s->index + IEEE_SECTION_NUMBER_BASE))
      || ! FUNC10 (abfd, ieee_set_current_pc_enum)
      || ! FUNC11 (abfd,
			    (bfd_byte) (s->index + IEEE_SECTION_NUMBER_BASE)))
    return FALSE;

  if ((abfd->flags & EXEC_P) != 0 && relocs_to_go == 0)
    {
      if (! FUNC13 (abfd, s->lma))
	return FALSE;
    }
  else
    {
      if (! FUNC12 (abfd, (bfd_vma) 0, s->symbol, 0, 0))
	return FALSE;
    }

  if (relocs_to_go == 0)
    {
      /* If there aren't any relocations then output the load constant
	 byte opcode rather than the load with relocation opcode.  */
      while (current_byte_index < s->size)
	{
	  bfd_size_type run;
	  unsigned int MAXRUN = 127;

	  run = MAXRUN;
	  if (run > s->size - current_byte_index)
	    run = s->size - current_byte_index;

	  if (run != 0)
	    {
	      if (! FUNC11 (abfd, ieee_load_constant_bytes_enum))
		return FALSE;
	      /* Output a stream of bytes.  */
	      if (! FUNC13 (abfd, run))
		return FALSE;
	      if (FUNC3 ((void *) (stream + current_byte_index), run, abfd)
		  != run)
		return FALSE;
	      current_byte_index += run;
	    }
	}
    }
  else
    {
      if (! FUNC11 (abfd, ieee_load_with_relocation_enum))
	return FALSE;

      /* Output the data stream as the longest sequence of bytes
	 possible, allowing for the a reasonable packet size and
	 relocation stuffs.  */
      if (stream == NULL)
	{
	  /* Outputting a section without data, fill it up.  */
	  stream = FUNC8 (abfd, s->size);
	  if (!stream)
	    return FALSE;
	}
      while (current_byte_index < s->size)
	{
	  bfd_size_type run;
	  unsigned int MAXRUN = 127;

	  if (relocs_to_go)
	    {
	      run = (*p)->address - current_byte_index;
	      if (run > MAXRUN)
		run = MAXRUN;
	    }
	  else
	    run = MAXRUN;

	  if (run > s->size - current_byte_index)
	    run = s->size - current_byte_index;

	  if (run != 0)
	    {
	      /* Output a stream of bytes.  */
	      if (! FUNC13 (abfd, run))
		return FALSE;
	      if (FUNC3 ((void *) (stream + current_byte_index), run, abfd)
		  != run)
		return FALSE;
	      current_byte_index += run;
	    }

	  /* Output any relocations here.  */
	  if (relocs_to_go && (*p) && (*p)->address == current_byte_index)
	    {
	      while (relocs_to_go
		     && (*p) && (*p)->address == current_byte_index)
		{
		  arelent *r = *p;
		  bfd_signed_vma ov;
		  switch (r->howto->size)
		    {
		    case 2:
		      ov = FUNC6 (abfd,
					      stream + current_byte_index);
		      current_byte_index += 4;
		      break;
		    case 1:
		      ov = FUNC5 (abfd,
					      stream + current_byte_index);
		      current_byte_index += 2;
		      break;
		    case 0:
		      ov = FUNC7 (abfd,
					     stream + current_byte_index);
		      current_byte_index++;
		      break;
		    default:
		      ov = 0;
		      FUNC0 ();
		      return FALSE;
		    }

		  ov &= r->howto->src_mask;

		  if (r->howto->pc_relative
		      && ! r->howto->pcrel_offset)
		    ov += r->address;

		  if (! FUNC11 (abfd,
					 ieee_function_either_open_b_enum))
		    return FALSE;

		  if (r->sym_ptr_ptr != (asymbol **) NULL)
		    {
		      if (! FUNC12 (abfd, r->addend + ov,
						   *(r->sym_ptr_ptr),
						   r->howto->pc_relative,
						   (unsigned) s->index))
			return FALSE;
		    }
		  else
		    {
		      if (! FUNC12 (abfd, r->addend + ov,
						   (asymbol *) NULL,
						   r->howto->pc_relative,
						   (unsigned) s->index))
			return FALSE;
		    }

		  if (number_of_maus_in_address
		      != FUNC4 (r->howto))
		    {
		      bfd_vma rsize = FUNC4 (r->howto);
		      if (! FUNC13 (abfd, rsize))
			return FALSE;
		    }
		  if (! FUNC11 (abfd,
					 ieee_function_either_close_b_enum))
		    return FALSE;

		  relocs_to_go--;
		  p++;
		}

	    }
	}
    }

  return TRUE;
}