#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ bfd_vma ;
typedef  int bfd_size_type ;
typedef  int /*<<< orphan*/  bfd_byte ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_7__ {int size; scalar_t__ vma; } ;
typedef  TYPE_1__ asection ;
struct TYPE_8__ {int virt_size; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int PDATA_ROW_SIZE ; 
 int /*<<< orphan*/  TRUE ; 
 char* FUNC1 (char*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC9 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static bfd_boolean
FUNC10 (bfd * abfd, void * vfile)
{
#if defined(COFF_WITH_pep) && !defined(COFF_WITH_pex64)
# define PDATA_ROW_SIZE	(3 * 8)
#else
# define PDATA_ROW_SIZE	(5 * 4)
#endif
  FILE *file = (FILE *) vfile;
  bfd_byte *data = 0;
  asection *section = FUNC2 (abfd, ".pdata");
  bfd_size_type datasize = 0;
  bfd_size_type i;
  bfd_size_type start, stop;
  int onaline = PDATA_ROW_SIZE;

  if (section == NULL
      || FUNC4 (abfd, section) == NULL
      || FUNC9 (abfd, section) == NULL)
    return TRUE;

  stop = FUNC9 (abfd, section)->virt_size;
  if ((stop % onaline) != 0)
    FUNC5 (file,
	     FUNC1("Warning, .pdata section size (%ld) is not a multiple of %d\n"),
	     (long) stop, onaline);

  FUNC5 (file,
	   FUNC1("\nThe Function Table (interpreted .pdata section contents)\n"));
#if defined(COFF_WITH_pep) && !defined(COFF_WITH_pex64)
  fprintf (file,
	   _(" vma:\t\t\tBegin Address    End Address      Unwind Info\n"));
#else
  FUNC5 (file, FUNC1("\
 vma:\t\tBegin    End      EH       EH       PrologEnd  Exception\n\
     \t\tAddress  Address  Handler  Data     Address    Mask\n"));
#endif

  datasize = section->size;
  if (datasize == 0)
    return TRUE;

  if (! FUNC3 (abfd, section, &data))
    {
      if (data != NULL)
	FUNC8 (data);
      return FALSE;
    }

  start = 0;

  for (i = start; i < stop; i += onaline)
    {
      bfd_vma begin_addr;
      bfd_vma end_addr;
      bfd_vma eh_handler;
      bfd_vma eh_data;
      bfd_vma prolog_end_addr;
      int em_data;

      if (i + PDATA_ROW_SIZE > stop)
	break;

      begin_addr      = FUNC0 (abfd, data + i     );
      end_addr        = FUNC0 (abfd, data + i +  4);
      eh_handler      = FUNC0 (abfd, data + i +  8);
      eh_data         = FUNC0 (abfd, data + i + 12);
      prolog_end_addr = FUNC0 (abfd, data + i + 16);

      if (begin_addr == 0 && end_addr == 0 && eh_handler == 0
	  && eh_data == 0 && prolog_end_addr == 0)
	/* We are probably into the padding of the section now.  */
	break;

      em_data = ((eh_handler & 0x1) << 2) | (prolog_end_addr & 0x3);
      eh_handler &= ~(bfd_vma) 0x3;
      prolog_end_addr &= ~(bfd_vma) 0x3;

      FUNC7 (' ', file);
      FUNC6 (file, i + section->vma); FUNC7 ('\t', file);
      FUNC6 (file, begin_addr); FUNC7 (' ', file);
      FUNC6 (file, end_addr); FUNC7 (' ', file);
      FUNC6 (file, eh_handler);
#if !defined(COFF_WITH_pep) || defined(COFF_WITH_pex64)
      FUNC7 (' ', file);
      FUNC6 (file, eh_data); FUNC7 (' ', file);
      FUNC6 (file, prolog_end_addr);
      FUNC5 (file, "   %x", em_data);
#endif

#ifdef POWERPC_LE_PE
      if (eh_handler == 0 && eh_data != 0)
	{
	  /* Special bits here, although the meaning may be a little
	     mysterious. The only one I know for sure is 0x03
	     Code Significance
	     0x00 None
	     0x01 Register Save Millicode
	     0x02 Register Restore Millicode
	     0x03 Glue Code Sequence.  */
	  switch (eh_data)
	    {
	    case 0x01:
	      fprintf (file, _(" Register save millicode"));
	      break;
	    case 0x02:
	      fprintf (file, _(" Register restore millicode"));
	      break;
	    case 0x03:
	      fprintf (file, _(" Glue code sequence"));
	      break;
	    default:
	      break;
	    }
	}
#endif
      FUNC5 (file, "\n");
    }

  FUNC8 (data);

  return TRUE;
}