#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct elf_backend_data {int (* elf_backend_additional_program_headers ) (TYPE_2__*,struct bfd_link_info*) ;TYPE_1__* s; } ;
struct bfd_link_info {int dummy; } ;
typedef  size_t bfd_size_type ;
struct TYPE_12__ {TYPE_3__* sections; } ;
typedef  TYPE_2__ bfd ;
struct TYPE_13__ {int flags; struct TYPE_13__* next; int /*<<< orphan*/  name; } ;
typedef  TYPE_3__ asection ;
struct TYPE_14__ {scalar_t__ stack_flags; scalar_t__ eh_frame_hdr; scalar_t__ relro; } ;
struct TYPE_11__ {size_t sizeof_phdr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int SEC_LOAD ; 
 int SEC_THREAD_LOCAL ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_3__* FUNC2 (TYPE_2__*,char*) ; 
 TYPE_7__* FUNC3 (TYPE_2__*) ; 
 struct elf_backend_data* FUNC4 (TYPE_2__*) ; 
 int FUNC5 (TYPE_2__*,struct bfd_link_info*) ; 

__attribute__((used)) static bfd_size_type
FUNC6 (bfd *abfd, struct bfd_link_info *info)
{
  size_t segs;
  asection *s;
  const struct elf_backend_data *bed;

  /* Assume we will need exactly two PT_LOAD segments: one for text
     and one for data.  */
  segs = 2;

  s = FUNC2 (abfd, ".interp");
  if (s != NULL && (s->flags & SEC_LOAD) != 0)
    {
      /* If we have a loadable interpreter section, we need a
	 PT_INTERP segment.  In this case, assume we also need a
	 PT_PHDR segment, although that may not be true for all
	 targets.  */
      segs += 2;
    }

  if (FUNC2 (abfd, ".dynamic") != NULL)
    {
      /* We need a PT_DYNAMIC segment.  */
      ++segs;

      if (FUNC3 (abfd)->relro)
	{
	  /* We need a PT_GNU_RELRO segment only when there is a
	     PT_DYNAMIC segment.  */
	  ++segs;
	}
    }

  if (FUNC3 (abfd)->eh_frame_hdr)
    {
      /* We need a PT_GNU_EH_FRAME segment.  */
      ++segs;
    }

  if (FUNC3 (abfd)->stack_flags)
    {
      /* We need a PT_GNU_STACK segment.  */
      ++segs;
    }

  for (s = abfd->sections; s != NULL; s = s->next)
    {
      if ((s->flags & SEC_LOAD) != 0
	  && FUNC0 (s->name, ".note"))
	{
	  /* We need a PT_NOTE segment.  */
	  ++segs;
	}
    }

  for (s = abfd->sections; s != NULL; s = s->next)
    {
      if (s->flags & SEC_THREAD_LOCAL)
	{
	  /* We need a PT_TLS segment.  */
	  ++segs;
	  break;
	}
    }

  /* Let the backend count up any program headers it might need.  */
  bed = FUNC4 (abfd);
  if (bed->elf_backend_additional_program_headers)
    {
      int a;

      a = (*bed->elf_backend_additional_program_headers) (abfd, info);
      if (a == -1)
	FUNC1 ();
      segs += a;
    }

  return segs * bed->s->sizeof_phdr;
}