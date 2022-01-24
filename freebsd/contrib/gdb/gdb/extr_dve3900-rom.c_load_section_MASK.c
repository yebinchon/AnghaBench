#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  header ;
typedef  scalar_t__ bfd_vma ;
typedef  unsigned int bfd_size_type ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_7__ {int flags; } ;
typedef  TYPE_1__ asection ;

/* Variables and functions */
 int SEC_LOAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,unsigned char*,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stdout ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*,long) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char*) ; 
 scalar_t__ FUNC10 (unsigned int) ; 

__attribute__((used)) static void
FUNC11 (bfd *abfd, asection *s, unsigned int *data_count)
{
  if (s->flags & SEC_LOAD)
    {
      bfd_size_type section_size = FUNC3 (abfd, s);
      bfd_vma section_base = FUNC1 (abfd, s);
      unsigned char *buffer;
      unsigned char header[8];

      /* Don't output zero-length sections.  */
      if (section_size == 0)
	return;
      if (data_count)
	*data_count += section_size;

      /* Print some fluff about the section being loaded.  */
      FUNC6 ("Loading section %s, size 0x%lx lma ",
		       FUNC2 (abfd, s), (long) section_size);
      FUNC5 (section_base, 1, gdb_stdout);
      FUNC6 ("\n");
      FUNC4 (gdb_stdout);

      /* Write the section header (location and size).  */
      FUNC8 (&header[0], (long) section_base);
      FUNC8 (&header[4], (long) section_size);
      FUNC7 (header, sizeof (header));

      /* Read the section contents into a buffer, write it out,
         then free the buffer.  */
      buffer = (unsigned char *) FUNC10 (section_size);
      FUNC0 (abfd, s, buffer, 0, section_size);
      FUNC7 (buffer, section_size);
      FUNC9 (buffer);
    }
}