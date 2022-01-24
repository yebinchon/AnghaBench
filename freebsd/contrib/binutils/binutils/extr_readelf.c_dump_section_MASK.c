#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ bfd_vma ;
typedef  int bfd_size_type ;
struct TYPE_8__ {int e_shnum; } ;
struct TYPE_7__ {int sh_size; scalar_t__ sh_type; int /*<<< orphan*/  sh_link; int /*<<< orphan*/  sh_info; int /*<<< orphan*/  sh_offset; scalar_t__ sh_addr; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  TYPE_1__ Elf_Internal_Shdr ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (TYPE_1__*) ; 
 scalar_t__ SHT_NOBITS ; 
 scalar_t__ SHT_REL ; 
 scalar_t__ SHT_RELA ; 
 char* FUNC3 (char*) ; 
 TYPE_3__ elf_header ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*) ; 
 unsigned char* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char) ; 
 TYPE_1__* section_headers ; 

__attribute__((used)) static int
FUNC8 (Elf_Internal_Shdr *section, FILE *file)
{
  Elf_Internal_Shdr *relsec;
  bfd_size_type bytes;
  bfd_vma addr;
  unsigned char *data;
  unsigned char *start;

  bytes = section->sh_size;

  if (bytes == 0 || section->sh_type == SHT_NOBITS)
    {
      FUNC6 (FUNC3("\nSection '%s' has no data to dump.\n"),
	      FUNC2 (section));
      return 0;
    }
  else
    FUNC6 (FUNC3("\nHex dump of section '%s':\n"), FUNC2 (section));

  addr = section->sh_addr;

  start = FUNC5 (NULL, file, section->sh_offset, 1, bytes,
		    FUNC3("section data"));
  if (!start)
    return 0;

  /* If the section being dumped has relocations against it the user might
     be expecting these relocations to have been applied.  Check for this
     case and issue a warning message in order to avoid confusion.
     FIXME: Maybe we ought to have an option that dumps a section with
     relocs applied ?  */
  for (relsec = section_headers;
       relsec < section_headers + elf_header.e_shnum;
       ++relsec)
    {
      if ((relsec->sh_type != SHT_RELA && relsec->sh_type != SHT_REL)
	  || FUNC1 (relsec->sh_info) >= elf_header.e_shnum
	  || FUNC0 (relsec->sh_info) != section
	  || relsec->sh_size == 0
	  || FUNC1 (relsec->sh_link) >= elf_header.e_shnum)
	continue;

      FUNC6 (FUNC3(" NOTE: This section has relocations against it, but these have NOT been applied to this dump.\n"));
      break;
    }
  
  data = start;

  while (bytes)
    {
      int j;
      int k;
      int lbytes;

      lbytes = (bytes > 16 ? 16 : bytes);

      FUNC6 ("  0x%8.8lx ", (unsigned long) addr);

      for (j = 0; j < 16; j++)
	{
	  if (j < lbytes)
	    FUNC6 ("%2.2x", data[j]);
	  else
	    FUNC6 ("  ");

	  if ((j & 3) == 3)
	    FUNC6 (" ");
	}

      for (j = 0; j < lbytes; j++)
	{
	  k = data[j];
	  if (k >= ' ' && k < 0x7f)
	    FUNC6 ("%c", k);
	  else
	    FUNC6 (".");
	}

      FUNC7 ('\n');

      data  += lbytes;
      addr  += lbytes;
      bytes -= lbytes;
    }

  FUNC4 (start);

  FUNC7 ('\n');
  return 1;
}