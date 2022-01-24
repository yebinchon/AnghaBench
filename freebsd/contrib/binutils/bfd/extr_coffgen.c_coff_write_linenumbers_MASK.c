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
struct TYPE_18__ {int /*<<< orphan*/  l_symndx; } ;
struct internal_lineno {TYPE_2__ l_addr; scalar_t__ l_lnno; } ;
typedef  int /*<<< orphan*/  out ;
typedef  scalar_t__ bfd_size_type ;
typedef  int /*<<< orphan*/  bfd_boolean ;
struct TYPE_20__ {TYPE_5__** outsymbols; TYPE_6__* sections; } ;
typedef  TYPE_4__ bfd ;
struct TYPE_21__ {TYPE_1__* section; } ;
typedef  TYPE_5__ asymbol ;
struct TYPE_22__ {int /*<<< orphan*/  line_filepos; scalar_t__ lineno_count; struct TYPE_22__* next; } ;
typedef  TYPE_6__ asection ;
struct TYPE_19__ {int /*<<< orphan*/  offset; } ;
struct TYPE_23__ {TYPE_3__ u; scalar_t__ line_number; } ;
typedef  TYPE_7__ alent ;
struct TYPE_17__ {TYPE_6__* output_section; } ;

/* Variables and functions */
 TYPE_7__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  _get_lineno ; 
 void* FUNC1 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 scalar_t__ FUNC3 (void*,scalar_t__,TYPE_4__*) ; 
 scalar_t__ FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,struct internal_lineno*,void*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,void*) ; 
 scalar_t__ FUNC7 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (void*,int /*<<< orphan*/ ,int) ; 

bfd_boolean
FUNC9 (bfd *abfd)
{
  asection *s;
  bfd_size_type linesz;
  void * buff;

  linesz = FUNC4 (abfd);
  buff = FUNC1 (abfd, linesz);
  if (!buff)
    return FALSE;
  for (s = abfd->sections; s != (asection *) NULL; s = s->next)
    {
      if (s->lineno_count)
	{
	  asymbol **q = abfd->outsymbols;
	  if (FUNC7 (abfd, s->line_filepos, SEEK_SET) != 0)
	    return FALSE;
	  /* Find all the linenumbers in this section.  */
	  while (*q)
	    {
	      asymbol *p = *q;
	      if (p->section->output_section == s)
		{
		  alent *l =
		  FUNC0 (FUNC2 (p), _get_lineno,
			    (FUNC2 (p), p));
		  if (l)
		    {
		      /* Found a linenumber entry, output.  */
		      struct internal_lineno out;
		      FUNC8 ((void *) & out, 0, sizeof (out));
		      out.l_lnno = 0;
		      out.l_addr.l_symndx = l->u.offset;
		      FUNC5 (abfd, &out, buff);
		      if (FUNC3 (buff, (bfd_size_type) linesz, abfd)
			  != linesz)
			return FALSE;
		      l++;
		      while (l->line_number)
			{
			  out.l_lnno = l->line_number;
			  out.l_addr.l_symndx = l->u.offset;
			  FUNC5 (abfd, &out, buff);
			  if (FUNC3 (buff, (bfd_size_type) linesz, abfd)
			      != linesz)
			    return FALSE;
			  l++;
			}
		    }
		}
	      q++;
	    }
	}
    }
  FUNC6 (abfd, buff);
  return TRUE;
}