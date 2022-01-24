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
 int /*<<< orphan*/  BSF_GLOBAL ; 
 int /*<<< orphan*/  SEC_HAS_CONTENTS ; 
 char* FUNC0 (char*) ; 
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
 int /*<<< orphan*/  FUNC10 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 TYPE_4__* pe_details ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC12 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*,char const*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*,int) ; 
 scalar_t__ symptr ; 
 void* symtab ; 
 int tmp_seq ; 
 void* FUNC16 (int) ; 

__attribute__((used)) static bfd *
FUNC17 (const char *name,
			 const char *fixup_name,
			 const char *dll_symname,
			 bfd *parent)
{
  asection *id2;
  unsigned char *d2;
  char *oname;
  bfd *abfd;

  oname = FUNC16 (20);
  FUNC15 (oname, "fu%06d.o", tmp_seq);
  tmp_seq++;

  abfd = FUNC1 (oname, parent);
  FUNC2 (pe_details->object_target, abfd);
  FUNC4 (abfd);

  FUNC6 (abfd, bfd_object);
  FUNC5 (abfd, pe_details->bfd_arch, 0);

  symptr = 0;
  symtab = FUNC16 (6 * sizeof (asymbol *));
  id2 = FUNC12 (abfd, ".idata$2", SEC_HAS_CONTENTS, 2);

  FUNC13 (abfd, FUNC0 ("_nm_thnk_"), name, "", UNDSEC, BSF_GLOBAL, 0);
  FUNC13 (abfd, FUNC0 (""), dll_symname, "_iname", UNDSEC, BSF_GLOBAL, 0);
  FUNC13 (abfd, "", fixup_name, "", UNDSEC, BSF_GLOBAL, 0);

  FUNC8 (abfd, id2, 20);
  d2 = FUNC16 (20);
  id2->contents = d2;
  FUNC10 (d2, 0, 20);

  FUNC11 (abfd, 0, BFD_RELOC_RVA, 1);
  FUNC11 (abfd, 12, BFD_RELOC_RVA, 2);
  FUNC11 (abfd, 16, BFD_RELOC_RVA, 3);
  FUNC14 (id2);

  FUNC9 (abfd, symtab, symptr);

  FUNC7 (abfd, id2, d2, 0, 20);

  FUNC3 (abfd);
  return abfd;
}