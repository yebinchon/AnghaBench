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
struct comp_unit_head {int initial_length_size; int offset_size; } ;
typedef  int /*<<< orphan*/  bfd_byte ;
typedef  int /*<<< orphan*/  bfd ;
typedef  int LONGEST ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static LONGEST
FUNC2 (bfd *abfd, char *buf, struct comp_unit_head *cu_header,
                     int *bytes_read)
{
  LONGEST retval = 0;

  retval = FUNC0 (abfd, (bfd_byte *) buf);

  if (retval == 0xffffffff)
    {
      retval = FUNC1 (abfd, (bfd_byte *) buf + 4);
      *bytes_read = 12;
      if (cu_header != NULL)
	{
	  cu_header->initial_length_size = 12;
	  cu_header->offset_size = 8;
	}
    }
  else if (retval == 0)
    {
      /* Handle (non-standard) 64-bit DWARF2 formats such as that used
         by IRIX.  */
      retval = FUNC1 (abfd, (bfd_byte *) buf);
      *bytes_read = 8;
      if (cu_header != NULL)
	{
	  cu_header->initial_length_size = 8;
	  cu_header->offset_size = 8;
	}
    }
  else
    {
      *bytes_read = 4;
      if (cu_header != NULL)
	{
	  cu_header->initial_length_size = 4;
	  cu_header->offset_size = 4;
	}
    }

 return retval;
}