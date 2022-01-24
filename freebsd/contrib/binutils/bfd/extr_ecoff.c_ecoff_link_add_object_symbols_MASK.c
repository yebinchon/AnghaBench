#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct bfd_link_info {int dummy; } ;
typedef  int /*<<< orphan*/  file_ptr ;
typedef  int bfd_size_type ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_7__ {int external_ext_size; } ;
struct TYPE_10__ {TYPE_2__ debug_swap; } ;
struct TYPE_8__ {int iextMax; scalar_t__ issExtMax; scalar_t__ cbSsExtOffset; scalar_t__ cbExtOffset; } ;
struct TYPE_6__ {TYPE_3__ symbolic_header; } ;
struct TYPE_9__ {TYPE_1__ debug_info; } ;
typedef  TYPE_3__ HDRR ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC0 (char*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct bfd_link_info*,void*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 

__attribute__((used)) static bfd_boolean
FUNC9 (bfd *abfd, struct bfd_link_info *info)
{
  HDRR *symhdr;
  bfd_size_type external_ext_size;
  void * external_ext = NULL;
  bfd_size_type esize;
  char *ssext = NULL;
  bfd_boolean result;

  if (! FUNC7 (abfd))
    return FALSE;

  /* If there are no symbols, we don't want it.  */
  if (FUNC1 (abfd) == 0)
    return TRUE;

  symhdr = &FUNC5 (abfd)->debug_info.symbolic_header;

  /* Read in the external symbols and external strings.  */
  external_ext_size = FUNC4 (abfd)->debug_swap.external_ext_size;
  esize = symhdr->iextMax * external_ext_size;
  external_ext = FUNC2 (esize);
  if (external_ext == NULL && esize != 0)
    goto error_return;

  if (FUNC3 (abfd, (file_ptr) symhdr->cbExtOffset, SEEK_SET) != 0
      || FUNC0 (external_ext, esize, abfd) != esize)
    goto error_return;

  ssext = FUNC2 ((bfd_size_type) symhdr->issExtMax);
  if (ssext == NULL && symhdr->issExtMax != 0)
    goto error_return;

  if (FUNC3 (abfd, (file_ptr) symhdr->cbSsExtOffset, SEEK_SET) != 0
      || (FUNC0 (ssext, (bfd_size_type) symhdr->issExtMax, abfd)
	  != (bfd_size_type) symhdr->issExtMax))
    goto error_return;

  result = FUNC6 (abfd, info, external_ext, ssext);

  if (ssext != NULL)
    FUNC8 (ssext);
  if (external_ext != NULL)
    FUNC8 (external_ext);
  return result;

 error_return:
  if (ssext != NULL)
    FUNC8 (ssext);
  if (external_ext != NULL)
    FUNC8 (external_ext);
  return FALSE;
}