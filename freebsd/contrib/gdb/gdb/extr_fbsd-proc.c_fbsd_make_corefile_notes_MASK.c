#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  gregset_t ;
typedef  int /*<<< orphan*/  fpregset_t ;
typedef  int /*<<< orphan*/  fpregs ;
typedef  int /*<<< orphan*/  fakename ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_3__ {int /*<<< orphan*/ * e_ident; } ;
typedef  TYPE_1__ Elf_Internal_Ehdr ;

/* Variables and functions */
 size_t EI_OSABI ; 
 int /*<<< orphan*/  ELFOSABI_FREEBSD ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ *,char*,int*,int /*<<< orphan*/ *,int) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char*,int*,char*,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,char*,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *,char*,int*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 char* FUNC11 (char*,char*,char*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stop_signal ; 
 char* FUNC12 (scalar_t__,char) ; 
 int /*<<< orphan*/  xfree ; 
 char* FUNC13 (char*) ; 

__attribute__((used)) static char *
FUNC14 (bfd *obfd, int *note_size)
{
  gregset_t gregs;
  fpregset_t fpregs;
  char *note_data = NULL;
  Elf_Internal_Ehdr *i_ehdrp;
  char fakename;

  /* Put a "FreeBSD" label in the ELF header.  */
  i_ehdrp = FUNC0 (obfd);
  i_ehdrp->e_ident[EI_OSABI] = ELFOSABI_FREEBSD;

  FUNC6 (&gregs, -1);
  note_data = FUNC3 (obfd, note_data, note_size,
				      FUNC10 (inferior_ptid),
				      stop_signal, &gregs);

  FUNC5 (&fpregs, -1);
  note_data = FUNC1 (obfd, note_data, note_size,
				     &fpregs, sizeof (fpregs));

  fakename = '\0';
  note_data = FUNC4 (obfd, note_data, note_size,
				     &fakename, sizeof (fakename));

  if (FUNC7 (0))
    {
      char *fname = FUNC12 (FUNC7 (0), '/') + 1;
      char *psargs = FUNC13 (fname);

      if (FUNC8 ())
	psargs = FUNC11 (psargs, psargs, " ", FUNC8 (), NULL);

      note_data = FUNC2 (obfd, note_data, note_size,
					  fname, psargs);
    }

  FUNC9 (xfree, note_data);
  return note_data;
}