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
struct internal_filehdr {int /*<<< orphan*/  f_target_id; int /*<<< orphan*/  f_flags; int /*<<< orphan*/  f_opthdr; int /*<<< orphan*/  f_nsyms; int /*<<< orphan*/  f_symptr; int /*<<< orphan*/  f_timdat; int /*<<< orphan*/  f_nscns; int /*<<< orphan*/  f_magic; } ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_2__ {int /*<<< orphan*/  f_target_id; int /*<<< orphan*/  f_flags; int /*<<< orphan*/  f_opthdr; int /*<<< orphan*/  f_nsyms; int /*<<< orphan*/  f_symptr; int /*<<< orphan*/  f_timdat; int /*<<< orphan*/  f_nscns; int /*<<< orphan*/  f_magic; } ;
typedef  TYPE_1__ FILHDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void*,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void*,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static  unsigned int
FUNC6 (bfd *abfd, void * in, void * out)
{
  struct internal_filehdr *filehdr_in = (struct internal_filehdr *) in;
  FILHDR *filehdr_out = (FILHDR *) out;

#ifdef COFF_ADJUST_FILEHDR_OUT_PRE
  COFF_ADJUST_FILEHDR_OUT_PRE (abfd, in, out);
#endif
  FUNC2 (abfd, filehdr_in->f_magic, filehdr_out->f_magic);
  FUNC2 (abfd, filehdr_in->f_nscns, filehdr_out->f_nscns);
  FUNC3 (abfd, filehdr_in->f_timdat, filehdr_out->f_timdat);
  FUNC4 (abfd, filehdr_in->f_symptr, filehdr_out->f_symptr);
  FUNC3 (abfd, filehdr_in->f_nsyms, filehdr_out->f_nsyms);
  FUNC2 (abfd, filehdr_in->f_opthdr, filehdr_out->f_opthdr);
  FUNC2 (abfd, filehdr_in->f_flags, filehdr_out->f_flags);
#ifdef TIC80_TARGET_ID
  H_PUT_16 (abfd, filehdr_in->f_target_id, filehdr_out->f_target_id);
#endif

#ifdef COFF_ADJUST_FILEHDR_OUT_POST
  COFF_ADJUST_FILEHDR_OUT_POST (abfd, in, out);
#endif
  return FUNC5 (abfd);
}