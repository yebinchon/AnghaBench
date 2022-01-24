#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  bfd ;
typedef  int /*<<< orphan*/  asymbol ;
struct TYPE_7__ {unsigned char* contents; } ;
typedef  TYPE_1__ asection ;
struct TYPE_8__ {int /*<<< orphan*/  bfd_arch; int /*<<< orphan*/  object_target; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFD_RELOC_RVA ; 
 int /*<<< orphan*/  BSF_NO_FLAGS ; 
 int /*<<< orphan*/  SEC_HAS_CONTENTS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  UNDSEC ; 
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
 TYPE_4__* pe_details ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC11 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,int) ; 
 scalar_t__ symptr ; 
 void* symtab ; 
 int tmp_seq ; 
 void* FUNC15 (int) ; 

__attribute__((used)) static bfd *
FUNC16 (bfd *parent)
{
  asection *extern_rt_rel;
  unsigned char *extern_rt_rel_d;
  char *oname;
  bfd *abfd;

  oname = FUNC15 (20);
  FUNC14 (oname, "ertr%06d.o", tmp_seq);
  tmp_seq++;

  abfd = FUNC1 (oname, parent);
  FUNC2 (pe_details->object_target, abfd);
  FUNC4 (abfd);

  FUNC6 (abfd, bfd_object);
  FUNC5 (abfd, pe_details->bfd_arch, 0);

  symptr = 0;
  symtab = FUNC15 (2 * sizeof (asymbol *));
  extern_rt_rel = FUNC11 (abfd, ".rdata", SEC_HAS_CONTENTS, 2);

  FUNC12 (abfd, "", FUNC0 ("_pei386_runtime_relocator"), "", UNDSEC,
		BSF_NO_FLAGS, 0);

  FUNC8 (abfd, extern_rt_rel, 4);
  extern_rt_rel_d = FUNC15 (4);
  extern_rt_rel->contents = extern_rt_rel_d;

  FUNC10 (abfd, 0, BFD_RELOC_RVA, 1);
  FUNC13 (extern_rt_rel);

  FUNC9 (abfd, symtab, symptr);

  FUNC7 (abfd, extern_rt_rel, extern_rt_rel_d, 0, 4);

  FUNC3 (abfd);
  return abfd;
}