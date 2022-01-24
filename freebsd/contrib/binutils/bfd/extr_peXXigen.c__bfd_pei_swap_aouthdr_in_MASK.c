#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct internal_extra_pe_aouthdr {int BaseOfData; int AddressOfEntryPoint; int BaseOfCode; int NumberOfRvaAndSizes; TYPE_1__* DataDirectory; scalar_t__ ImageBase; void* LoaderFlags; int /*<<< orphan*/  SizeOfHeapCommit; int /*<<< orphan*/  SizeOfHeapReserve; int /*<<< orphan*/  SizeOfStackCommit; int /*<<< orphan*/  SizeOfStackReserve; void* DllCharacteristics; void* Subsystem; void* CheckSum; void* SizeOfHeaders; void* SizeOfImage; void* Reserved1; void* MinorSubsystemVersion; void* MajorSubsystemVersion; void* MinorImageVersion; void* MajorImageVersion; void* MinorOperatingSystemVersion; void* MajorOperatingSystemVersion; void* FileAlignment; void* SectionAlignment; int /*<<< orphan*/  SizeOfUninitializedData; scalar_t__ SizeOfInitializedData; scalar_t__ SizeOfCode; void* MinorLinkerVersion; void* MajorLinkerVersion; void* Magic; } ;
struct internal_aouthdr {int entry; int text_start; int data_start; scalar_t__ dsize; scalar_t__ tsize; int /*<<< orphan*/  bsize; void* magic; void* vstamp; struct internal_extra_pe_aouthdr pe; } ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_6__ {scalar_t__ vstamp; int /*<<< orphan*/  data_start; int /*<<< orphan*/  text_start; int /*<<< orphan*/  entry; int /*<<< orphan*/  bsize; int /*<<< orphan*/  dsize; int /*<<< orphan*/  tsize; scalar_t__ magic; } ;
struct TYPE_5__ {int /*<<< orphan*/ ** DataDirectory; int /*<<< orphan*/  NumberOfRvaAndSizes; int /*<<< orphan*/  LoaderFlags; int /*<<< orphan*/  SizeOfHeapCommit; int /*<<< orphan*/  SizeOfHeapReserve; int /*<<< orphan*/  SizeOfStackCommit; int /*<<< orphan*/  SizeOfStackReserve; scalar_t__ DllCharacteristics; scalar_t__ Subsystem; int /*<<< orphan*/  CheckSum; int /*<<< orphan*/  SizeOfHeaders; int /*<<< orphan*/  SizeOfImage; int /*<<< orphan*/  Reserved1; scalar_t__ MinorSubsystemVersion; scalar_t__ MajorSubsystemVersion; scalar_t__ MinorImageVersion; scalar_t__ MajorImageVersion; scalar_t__ MinorOperatingSystemVersion; scalar_t__ MajorOperatingSystemVersion; int /*<<< orphan*/  FileAlignment; int /*<<< orphan*/  SectionAlignment; int /*<<< orphan*/  ImageBase; } ;
struct TYPE_4__ {int Size; void* VirtualAddress; } ;
typedef  TYPE_2__ PEAOUTHDR ;
typedef  TYPE_3__ AOUTHDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC11 (int /*<<< orphan*/ *,scalar_t__) ; 
 void* FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC13 (int /*<<< orphan*/ *,scalar_t__) ; 
 size_t PE_IMPORT_ADDRESS_TABLE ; 
 size_t PE_IMPORT_TABLE ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 void* first_thunk_address ; 
 int import_table_size ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int thunk_size ; 

void
FUNC17 (bfd * abfd,
			  void * aouthdr_ext1,
			  void * aouthdr_int1)
{
  PEAOUTHDR * src = (PEAOUTHDR *) aouthdr_ext1;
  AOUTHDR * aouthdr_ext = (AOUTHDR *) aouthdr_ext1;
  struct internal_aouthdr *aouthdr_int
    = (struct internal_aouthdr *) aouthdr_int1;
  struct internal_extra_pe_aouthdr *a = &aouthdr_int->pe;

  aouthdr_int->magic = FUNC11 (abfd, aouthdr_ext->magic);
  aouthdr_int->vstamp = FUNC11 (abfd, aouthdr_ext->vstamp);
  aouthdr_int->tsize = FUNC5 (abfd, aouthdr_ext->tsize);
  aouthdr_int->dsize = FUNC2 (abfd, aouthdr_ext->dsize);
  aouthdr_int->bsize = FUNC0 (abfd, aouthdr_ext->bsize);
  aouthdr_int->entry = FUNC3 (abfd, aouthdr_ext->entry);
  aouthdr_int->text_start =
    FUNC4 (abfd, aouthdr_ext->text_start);
#if !defined(COFF_WITH_pep) && !defined(COFF_WITH_pex64)
  /* PE32+ does not have data_start member!  */
  aouthdr_int->data_start =
    FUNC1 (abfd, aouthdr_ext->data_start);
  a->BaseOfData = aouthdr_int->data_start;
#endif

  a->Magic = aouthdr_int->magic;
  a->MajorLinkerVersion = FUNC13 (abfd, aouthdr_ext->vstamp);
  a->MinorLinkerVersion = FUNC13 (abfd, aouthdr_ext->vstamp + 1);
  a->SizeOfCode = aouthdr_int->tsize ;
  a->SizeOfInitializedData = aouthdr_int->dsize ;
  a->SizeOfUninitializedData = aouthdr_int->bsize ;
  a->AddressOfEntryPoint = aouthdr_int->entry;
  a->BaseOfCode = aouthdr_int->text_start;
  a->ImageBase = FUNC6 (abfd, src->ImageBase);
  a->SectionAlignment = FUNC12 (abfd, src->SectionAlignment);
  a->FileAlignment = FUNC12 (abfd, src->FileAlignment);
  a->MajorOperatingSystemVersion =
    FUNC11 (abfd, src->MajorOperatingSystemVersion);
  a->MinorOperatingSystemVersion =
    FUNC11 (abfd, src->MinorOperatingSystemVersion);
  a->MajorImageVersion = FUNC11 (abfd, src->MajorImageVersion);
  a->MinorImageVersion = FUNC11 (abfd, src->MinorImageVersion);
  a->MajorSubsystemVersion = FUNC11 (abfd, src->MajorSubsystemVersion);
  a->MinorSubsystemVersion = FUNC11 (abfd, src->MinorSubsystemVersion);
  a->Reserved1 = FUNC12 (abfd, src->Reserved1);
  a->SizeOfImage = FUNC12 (abfd, src->SizeOfImage);
  a->SizeOfHeaders = FUNC12 (abfd, src->SizeOfHeaders);
  a->CheckSum = FUNC12 (abfd, src->CheckSum);
  a->Subsystem = FUNC11 (abfd, src->Subsystem);
  a->DllCharacteristics = FUNC11 (abfd, src->DllCharacteristics);
  a->SizeOfStackReserve =
    FUNC10 (abfd, src->SizeOfStackReserve);
  a->SizeOfStackCommit =
    FUNC9 (abfd, src->SizeOfStackCommit);
  a->SizeOfHeapReserve =
    FUNC8 (abfd, src->SizeOfHeapReserve);
  a->SizeOfHeapCommit =
    FUNC7 (abfd, src->SizeOfHeapCommit);
  a->LoaderFlags = FUNC12 (abfd, src->LoaderFlags);
  a->NumberOfRvaAndSizes = FUNC12 (abfd, src->NumberOfRvaAndSizes);

  {
    int idx;

    /* PR 17512: Corrupt PE binaries can cause seg-faults.  */
    if (a->NumberOfRvaAndSizes > 16)
      {
       FUNC15)
	  (FUNC14("%B: aout header specifies an invalid number of data-directory entries: %d"),
	   abfd, a->NumberOfRvaAndSizes);
	/* Paranoia: If the number is corrupt, then assume that the
	   actual entries themselves might be corrupt as well.  */
	a->NumberOfRvaAndSizes = 0;
      }

    for (idx = 0; idx < 16; idx++)
      {
        /* If data directory is empty, rva also should be 0.  */
	int size =
	  FUNC12 (abfd, src->DataDirectory[idx][1]);

	a->DataDirectory[idx].Size = size;

	if (size)
	  a->DataDirectory[idx].VirtualAddress =
	    FUNC12 (abfd, src->DataDirectory[idx][0]);
	else
	  a->DataDirectory[idx].VirtualAddress = 0;
      }
  }

  if (aouthdr_int->entry)
    {
      aouthdr_int->entry += a->ImageBase;
#if !defined(COFF_WITH_pep) && !defined(COFF_WITH_pex64)
      aouthdr_int->entry &= 0xffffffff;
#endif
    }

  if (aouthdr_int->tsize)
    {
      aouthdr_int->text_start += a->ImageBase;
#if !defined(COFF_WITH_pep) && !defined(COFF_WITH_pex64)
      aouthdr_int->text_start &= 0xffffffff;
#endif
    }

#if !defined(COFF_WITH_pep) && !defined(COFF_WITH_pex64)
  /* PE32+ does not have data_start member!  */
  if (aouthdr_int->dsize)
    {
      aouthdr_int->data_start += a->ImageBase;
      aouthdr_int->data_start &= 0xffffffff;
    }
#endif

#ifdef POWERPC_LE_PE
  /* These three fields are normally set up by ppc_relocate_section.
     In the case of reading a file in, we can pick them up from the
     DataDirectory.  */
  first_thunk_address = a->DataDirectory[PE_IMPORT_ADDRESS_TABLE].VirtualAddress;
  thunk_size = a->DataDirectory[PE_IMPORT_ADDRESS_TABLE].Size;
  import_table_size = a->DataDirectory[PE_IMPORT_TABLE].Size;
#endif
}