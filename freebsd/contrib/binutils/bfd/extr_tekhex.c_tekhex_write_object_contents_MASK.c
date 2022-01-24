#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct data_struct {int /*<<< orphan*/ * chunk_data; scalar_t__ vma; scalar_t__* chunk_init; struct data_struct* next; } ;
typedef  int /*<<< orphan*/  bfd_size_type ;
typedef  int /*<<< orphan*/  bfd_boolean ;
struct TYPE_12__ {TYPE_1__* tekhex_data; } ;
struct TYPE_14__ {TYPE_5__** outsymbols; TYPE_6__* sections; TYPE_2__ tdata; } ;
typedef  TYPE_4__ bfd ;
struct TYPE_15__ {TYPE_3__* section; scalar_t__ value; int /*<<< orphan*/  name; } ;
typedef  TYPE_5__ asymbol ;
struct TYPE_16__ {scalar_t__ size; scalar_t__ vma; int /*<<< orphan*/  name; struct TYPE_16__* next; } ;
typedef  TYPE_6__ asection ;
struct TYPE_13__ {scalar_t__ vma; int /*<<< orphan*/  name; } ;
struct TYPE_11__ {struct data_struct* data; } ;

/* Variables and functions */
 int CHUNK_MASK ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (char*,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  bfd_error_wrong_format ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,char,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char**,scalar_t__) ; 

__attribute__((used)) static bfd_boolean
FUNC9 (bfd *abfd)
{
  char buffer[100];
  asymbol **p;
  asection *s;
  struct data_struct *d;

  FUNC6 ();

  /* And the raw data.  */
  for (d = abfd->tdata.tekhex_data->data;
       d != NULL;
       d = d->next)
    {
      int low;

      const int span = 32;
      int addr;

      /* Write it in blocks of 32 bytes.  */
      for (addr = 0; addr < CHUNK_MASK + 1; addr += span)
	{
	  int need = 0;

	  /* Check to see if necessary.  */
	  for (low = 0; !need && low < span; low++)
	    if (d->chunk_init[addr + low])
	      need = 1;

	  if (need)
	    {
	      char *dst = buffer;

	      FUNC8 (&dst, addr + d->vma);
	      for (low = 0; low < span; low++)
		{
		  FUNC0 (dst, d->chunk_data[addr + low]);
		  dst += 2;
		}
	      FUNC5 (abfd, '6', buffer, dst);
	    }
	}
    }

  /* Write all the section headers for the sections.  */
  for (s = abfd->sections; s != NULL; s = s->next)
    {
      char *dst = buffer;

      FUNC7 (&dst, s->name);
      *dst++ = '1';
      FUNC8 (&dst, s->vma);
      FUNC8 (&dst, s->vma + s->size);
      FUNC5 (abfd, '3', buffer, dst);
    }

  /* And the symbols.  */
  if (abfd->outsymbols)
    {
      for (p = abfd->outsymbols; *p; p++)
	{
	  int section_code = FUNC3 (*p);

	  if (section_code != '?')
	    {
	      /* Do not include debug symbols.  */
	      asymbol *sym = *p;
	      char *dst = buffer;

	      FUNC7 (&dst, sym->section->name);

	      switch (section_code)
		{
		case 'A':
		  *dst++ = '2';
		  break;
		case 'a':
		  *dst++ = '6';
		  break;
		case 'D':
		case 'B':
		case 'O':
		  *dst++ = '4';
		  break;
		case 'd':
		case 'b':
		case 'o':
		  *dst++ = '8';
		  break;
		case 'T':
		  *dst++ = '3';
		  break;
		case 't':
		  *dst++ = '7';
		  break;
		case 'C':
		case 'U':
		  FUNC4 (bfd_error_wrong_format);
		  return FALSE;
		}

	      FUNC7 (&dst, sym->name);
	      FUNC8 (&dst, sym->value + sym->section->vma);
	      FUNC5 (abfd, '3', buffer, dst);
	    }
	}
    }

  /* And the terminator.  */
  if (FUNC2 ("%0781010\n", (bfd_size_type) 9, abfd) != 9)
    FUNC1 ();
  return TRUE;
}