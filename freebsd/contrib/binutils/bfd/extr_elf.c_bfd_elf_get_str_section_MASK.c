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
typedef  int /*<<< orphan*/  file_ptr ;
typedef  int bfd_size_type ;
typedef  char bfd_byte ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_3__ {char* contents; int sh_size; int /*<<< orphan*/  sh_offset; } ;
typedef  TYPE_1__ Elf_Internal_Shdr ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 char* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bfd_error_file_truncated ; 
 scalar_t__ bfd_error_system_call ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__** FUNC5 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ *) ; 

char *
FUNC7 (bfd *abfd, unsigned int shindex)
{
  Elf_Internal_Shdr **i_shdrp;
  bfd_byte *shstrtab = NULL;
  file_ptr offset;
  bfd_size_type shstrtabsize;

  i_shdrp = FUNC5 (abfd);
  if (i_shdrp == 0
      || shindex >= FUNC6 (abfd)
      || i_shdrp[shindex] == 0)
    return NULL;

  shstrtab = i_shdrp[shindex]->contents;
  if (shstrtab == NULL)
    {
      /* No cached one, attempt to read, and cache what we read.  */
      offset = i_shdrp[shindex]->sh_offset;
      shstrtabsize = i_shdrp[shindex]->sh_size;

      /* Allocate and clear an extra byte at the end, to prevent crashes
	 in case the string table is not terminated.  */
      if (shstrtabsize + 1 == 0
	  || (shstrtab = FUNC0 (abfd, shstrtabsize + 1)) == NULL
	  || FUNC3 (abfd, offset, SEEK_SET) != 0)
	shstrtab = NULL;
      else if (FUNC1 (shstrtab, shstrtabsize, abfd) != shstrtabsize)
	{
	  if (FUNC2 () != bfd_error_system_call)
	    FUNC4 (bfd_error_file_truncated);
	  shstrtab = NULL;
	}
      else
	shstrtab[shstrtabsize] = '\0';
      i_shdrp[shindex]->contents = shstrtab;
    }
  return (char *) shstrtab;
}