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
 int PE_IDATA5_SIZE ; 
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
 int /*<<< orphan*/  dll_symname ; 
 int /*<<< orphan*/  FUNC10 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 TYPE_5__* pe_details ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC12 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*,int) ; 
 scalar_t__ symptr ; 
 void* symtab ; 
 int tmp_seq ; 
 void* FUNC16 (int) ; 

__attribute__((used)) static bfd *
FUNC17 (bfd *parent)
{
  asection *id2, *id5, *id4;
  unsigned char *d2, *d5, *d4;
  char *oname;
  bfd *abfd;

  oname = FUNC16 (20);
  FUNC15 (oname, "d%06d.o", tmp_seq);
  tmp_seq++;

  abfd = FUNC1 (oname, parent);
  FUNC2 (pe_details->object_target, abfd);
  FUNC4 (abfd);

  FUNC6 (abfd, bfd_object);
  FUNC5 (abfd, pe_details->bfd_arch, 0);

  symptr = 0;
  symtab = FUNC16 (6 * sizeof (asymbol *));
  id2 = FUNC12 (abfd, ".idata$2", SEC_HAS_CONTENTS, 2);
  id5 = FUNC12 (abfd, ".idata$5", SEC_HAS_CONTENTS, 2);
  id4 = FUNC12 (abfd, ".idata$4", SEC_HAS_CONTENTS, 2);
  FUNC13 (abfd, FUNC0 ("_head_"), dll_symname, "", id2, BSF_GLOBAL, 0);
  FUNC13 (abfd, FUNC0 (""), dll_symname, "_iname", UNDSEC, BSF_GLOBAL, 0);

  /* OK, pay attention here.  I got confused myself looking back at
     it.  We create a four-byte section to mark the beginning of the
     list, and we include an offset of 4 in the section, so that the
     pointer to the list points to the *end* of this section, which is
     the start of the list of sections from other objects.  */

  FUNC8 (abfd, id2, 20);
  d2 = FUNC16 (20);
  id2->contents = d2;
  FUNC10 (d2, 0, 20);
  d2[0] = d2[16] = 4; /* Reloc addend.  */
  FUNC11 (abfd,  0, BFD_RELOC_RVA, 2);
  FUNC11 (abfd, 12, BFD_RELOC_RVA, 4);
  FUNC11 (abfd, 16, BFD_RELOC_RVA, 1);
  FUNC14 (id2);

  FUNC8 (abfd, id5, PE_IDATA5_SIZE);
  d5 = FUNC16 (PE_IDATA5_SIZE);
  id5->contents = d5;
  FUNC10 (d5, 0, PE_IDATA5_SIZE);

  FUNC8 (abfd, id4, PE_IDATA4_SIZE);
  d4 = FUNC16 (PE_IDATA4_SIZE);
  id4->contents = d4;
  FUNC10 (d4, 0, PE_IDATA4_SIZE);

  FUNC9 (abfd, symtab, symptr);

  FUNC7 (abfd, id2, d2, 0, 20);
  FUNC7 (abfd, id5, d5, 0, PE_IDATA5_SIZE);
  FUNC7 (abfd, id4, d4, 0, PE_IDATA4_SIZE);

  FUNC3 (abfd);
  return abfd;
}