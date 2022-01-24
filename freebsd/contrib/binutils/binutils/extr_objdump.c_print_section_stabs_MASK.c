#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  unsigned int bfd_vma ;
typedef  int /*<<< orphan*/  bfd_byte ;
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 int DESCOFF ; 
 unsigned char N_UNDF ; 
 int OTHEROFF ; 
 int /*<<< orphan*/  STABSIZE ; 
 int STRDXOFF ; 
 int TYPEOFF ; 
 int VALOFF ; 
 char* FUNC0 (char*) ; 
 char* FUNC1 (unsigned char) ; 
 unsigned short FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 unsigned char FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int stab_size ; 
 int /*<<< orphan*/ * stabs ; 
 unsigned long stabstr_size ; 
 char* strtab ; 

__attribute__((used)) static void
FUNC7 (bfd *abfd,
		     const char *stabsect_name,
		     unsigned *string_offset_ptr)
{
  int i;
  unsigned file_string_table_offset = 0;
  unsigned next_file_string_table_offset = *string_offset_ptr;
  bfd_byte *stabp, *stabs_end;

  stabp = stabs;
  stabs_end = stabp + stab_size;

  FUNC6 (FUNC0("Contents of %s section:\n\n"), stabsect_name);
  FUNC6 ("Symnum n_type n_othr n_desc n_value  n_strx String\n");

  /* Loop through all symbols and print them.

     We start the index at -1 because there is a dummy symbol on
     the front of stabs-in-{coff,elf} sections that supplies sizes.  */
  for (i = -1; stabp < stabs_end; stabp += STABSIZE, i++)
    {
      const char *name;
      unsigned long strx;
      unsigned char type, other;
      unsigned short desc;
      bfd_vma value;

      strx = FUNC3 (abfd, stabp + STRDXOFF);
      type = FUNC4 (abfd, stabp + TYPEOFF);
      other = FUNC4 (abfd, stabp + OTHEROFF);
      desc = FUNC2 (abfd, stabp + DESCOFF);
      value = FUNC3 (abfd, stabp + VALOFF);

      FUNC6 ("\n%-6d ", i);
      /* Either print the stab name, or, if unnamed, print its number
	 again (makes consistent formatting for tools like awk).  */
      name = FUNC1 (type);
      if (name != NULL)
	FUNC6 ("%-6s", name);
      else if (type == N_UNDF)
	FUNC6 ("HdrSym");
      else
	FUNC6 ("%-6d", type);
      FUNC6 (" %-6d %-6d ", other, desc);
      FUNC5 (abfd, value);
      FUNC6 (" %-6lu", strx);

      /* Symbols with type == 0 (N_UNDF) specify the length of the
	 string table associated with this file.  We use that info
	 to know how to relocate the *next* file's string table indices.  */
      if (type == N_UNDF)
	{
	  file_string_table_offset = next_file_string_table_offset;
	  next_file_string_table_offset += value;
	}
      else
	{
	  /* Using the (possibly updated) string table offset, print the
	     string (if any) associated with this symbol.  */
	  if ((strx + file_string_table_offset) < stabstr_size)
	    FUNC6 (" %s", &strtab[strx + file_string_table_offset]);
	  else
	    FUNC6 (" *");
	}
    }
  FUNC6 ("\n\n");
  *string_offset_ptr = next_file_string_table_offset;
}