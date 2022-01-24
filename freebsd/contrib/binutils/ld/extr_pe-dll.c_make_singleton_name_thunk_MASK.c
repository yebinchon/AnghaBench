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
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  bfd ;
typedef  int /*<<< orphan*/  asymbol ;
struct TYPE_9__ {unsigned char* contents; } ;
typedef  TYPE_1__ asection ;
struct TYPE_10__ {int /*<<< orphan*/  bfd_arch; int /*<<< orphan*/  object_target; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFD_RELOC_RVA ; 
 int /*<<< orphan*/  BSF_GLOBAL ; 
 int PE_IDATA4_SIZE ; 
 int /*<<< orphan*/  SEC_HAS_CONTENTS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__* UNDSEC ; 
 int /*<<< orphan*/ * FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bfd_object ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*,unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 TYPE_5__* pe_details ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC12 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,char*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*,int) ; 
 scalar_t__ symptr ; 
 void* symtab ; 
 int tmp_seq ; 
 void* FUNC16 (int) ; 

__attribute__((used)) static bfd *
FUNC17 (const char *import, bfd *parent)
{
  /* Name thunks go to idata$4.  */
  asection *id4;
  unsigned char *d4;
  char *oname;
  bfd *abfd;

  oname = FUNC16 (20);
  FUNC15 (oname, "nmth%06d.o", tmp_seq);
  tmp_seq++;

  abfd = FUNC1 (oname, parent);
  FUNC2 (pe_details->object_target, abfd);
  FUNC4 (abfd);

  FUNC6 (abfd, bfd_object);
  FUNC5 (abfd, pe_details->bfd_arch, 0);

  symptr = 0;
  symtab = FUNC16 (3 * sizeof (asymbol *));
  id4 = FUNC12 (abfd, ".idata$4", SEC_HAS_CONTENTS, 2);
  FUNC13 (abfd, FUNC0 ("_nm_thnk_"), import, "", id4, BSF_GLOBAL, 0);
  FUNC13 (abfd, FUNC0 ("_nm_"), import, "", UNDSEC, BSF_GLOBAL, 0);

  /* We need space for the real thunk and for the null terminator.  */
  FUNC8 (abfd, id4, PE_IDATA4_SIZE * 2);
  d4 = FUNC16 (PE_IDATA4_SIZE * 2);
  id4->contents = d4;
  FUNC10 (d4, 0, PE_IDATA4_SIZE * 2);
  FUNC11 (abfd, 0, BFD_RELOC_RVA, 2);
  FUNC14 (id4);

  FUNC9 (abfd, symtab, symptr);

  FUNC7 (abfd, id4, d4, 0, PE_IDATA4_SIZE * 2);

  FUNC3 (abfd);
  return abfd;
}