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
 int /*<<< orphan*/  BSF_GLOBAL ; 
 int PE_IDATA4_SIZE ; 
 int PE_IDATA5_SIZE ; 
 int /*<<< orphan*/  SEC_HAS_CONTENTS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
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
 int /*<<< orphan*/  dll_filename ; 
 int /*<<< orphan*/  dll_symname ; 
 int /*<<< orphan*/  FUNC10 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 TYPE_4__* pe_details ; 
 TYPE_1__* FUNC11 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ symptr ; 
 void* symtab ; 
 int tmp_seq ; 
 void* FUNC16 (int) ; 

__attribute__((used)) static bfd *
FUNC17 (bfd *parent)
{
  asection *id4, *id5, *id7;
  unsigned char *d4, *d5, *d7;
  int len;
  char *oname;
  bfd *abfd;

  oname = FUNC16 (20);
  FUNC13 (oname, "d%06d.o", tmp_seq);
  tmp_seq++;

  abfd = FUNC1 (oname, parent);
  FUNC2 (pe_details->object_target, abfd);
  FUNC4 (abfd);

  FUNC6 (abfd, bfd_object);
  FUNC5 (abfd, pe_details->bfd_arch, 0);

  symptr = 0;
  symtab = FUNC16 (5 * sizeof (asymbol *));
  id4 = FUNC11 (abfd, ".idata$4", SEC_HAS_CONTENTS, 2);
  id5 = FUNC11 (abfd, ".idata$5", SEC_HAS_CONTENTS, 2);
  id7 = FUNC11 (abfd, ".idata$7", SEC_HAS_CONTENTS, 2);
  FUNC12 (abfd, FUNC0 (""), dll_symname, "_iname", id7, BSF_GLOBAL, 0);

  FUNC8 (abfd, id4, PE_IDATA4_SIZE);
  d4 = FUNC16 (PE_IDATA4_SIZE);
  id4->contents = d4;
  FUNC10 (d4, 0, PE_IDATA4_SIZE);

  FUNC8 (abfd, id5, PE_IDATA5_SIZE);
  d5 = FUNC16 (PE_IDATA5_SIZE);
  id5->contents = d5;
  FUNC10 (d5, 0, PE_IDATA5_SIZE);

  len = FUNC15 (dll_filename) + 1;
  if (len & 1)
    len++;
  FUNC8 (abfd, id7, len);
  d7 = FUNC16 (len);
  id7->contents = d7;
  FUNC14 ((char *) d7, dll_filename);
  /* If len was odd, the above
     strcpy leaves behind an undefined byte. That is harmless,
     but we set it to 0 just so the binary dumps are pretty.  */
  d7[len - 1] = 0;

  FUNC9 (abfd, symtab, symptr);

  FUNC7 (abfd, id4, d4, 0, PE_IDATA4_SIZE);
  FUNC7 (abfd, id5, d5, 0, PE_IDATA5_SIZE);
  FUNC7 (abfd, id7, d7, 0, len);

  FUNC3 (abfd);
  return abfd;
}