#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct internal_filehdr {void* f_target_id; void* f_flags; void* f_opthdr; void* f_nsyms; int /*<<< orphan*/  f_symptr; void* f_timdat; void* f_nscns; void* f_magic; } ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_2__ {int /*<<< orphan*/  f_target_id; int /*<<< orphan*/  f_flags; int /*<<< orphan*/  f_opthdr; int /*<<< orphan*/  f_nsyms; int /*<<< orphan*/  f_symptr; int /*<<< orphan*/  f_timdat; int /*<<< orphan*/  f_nscns; int /*<<< orphan*/  f_magic; } ;
typedef  TYPE_1__ FILHDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void*,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void*,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5 (bfd * abfd, void * src, void * dst)
{
  FILHDR *filehdr_src = (FILHDR *) src;
  struct internal_filehdr *filehdr_dst = (struct internal_filehdr *) dst;

#ifdef COFF_ADJUST_FILEHDR_IN_PRE
  COFF_ADJUST_FILEHDR_IN_PRE (abfd, src, dst);
#endif
  filehdr_dst->f_magic  = FUNC3 (abfd, filehdr_src->f_magic);
  filehdr_dst->f_nscns  = FUNC3 (abfd, filehdr_src->f_nscns);
  filehdr_dst->f_timdat = FUNC4 (abfd, filehdr_src->f_timdat);
  filehdr_dst->f_symptr = FUNC2 (abfd, filehdr_src->f_symptr);
  filehdr_dst->f_nsyms  = FUNC4 (abfd, filehdr_src->f_nsyms);
  filehdr_dst->f_opthdr = FUNC3 (abfd, filehdr_src->f_opthdr);
  filehdr_dst->f_flags  = FUNC3 (abfd, filehdr_src->f_flags);
#ifdef TIC80_TARGET_ID
  filehdr_dst->f_target_id = H_GET_16 (abfd, filehdr_src->f_target_id);
#endif

#ifdef COFF_ADJUST_FILEHDR_IN_POST
  COFF_ADJUST_FILEHDR_IN_POST (abfd, src, dst);
#endif
}