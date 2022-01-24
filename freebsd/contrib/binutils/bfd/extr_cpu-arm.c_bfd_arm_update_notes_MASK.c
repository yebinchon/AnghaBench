#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  file_ptr ;
typedef  scalar_t__ bfd_size_type ;
typedef  int /*<<< orphan*/  bfd_byte ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_5__ {scalar_t__ size; } ;
typedef  TYPE_1__ asection ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  NOTE_ARCH_STRING ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  arm_Note ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *,char const*) ; 
#define  bfd_mach_arm_2 141 
#define  bfd_mach_arm_2a 140 
#define  bfd_mach_arm_3 139 
#define  bfd_mach_arm_3M 138 
#define  bfd_mach_arm_4 137 
#define  bfd_mach_arm_4T 136 
#define  bfd_mach_arm_5 135 
#define  bfd_mach_arm_5T 134 
#define  bfd_mach_arm_5TE 133 
#define  bfd_mach_arm_XScale 132 
#define  bfd_mach_arm_ep9312 131 
#define  bfd_mach_arm_iWMMXt 130 
#define  bfd_mach_arm_iWMMXt2 129 
#define  bfd_mach_arm_unknown 128 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  name ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

bfd_boolean
FUNC14 (bfd *abfd, const char *note_section)
{
  asection *     arm_arch_section;
  bfd_size_type  buffer_size;
  bfd_byte *     buffer;
  char *         arch_string;
  char *         expected;

  /* Look for a note section.  If one is present check the architecture
     string encoded in it, and set it to the current architecture if it is
     different.  */
  arm_arch_section = FUNC5 (abfd, note_section);

  if (arm_arch_section == NULL)
    return TRUE;

  buffer_size = arm_arch_section->size;
  if (buffer_size == 0)
    return FALSE;

  if (!FUNC6 (abfd, arm_arch_section, &buffer))
    goto FAIL;

  /* Parse the note.  */
  if (! FUNC2 (abfd, buffer, buffer_size, NOTE_ARCH_STRING, & arch_string))
    goto FAIL;

  /* Check the architecture in the note against the architecture of the bfd.  */
  switch (FUNC4 (abfd))
    {
    default:
    case bfd_mach_arm_unknown: expected = "unknown"; break;
    case bfd_mach_arm_2:       expected = "armv2"; break;
    case bfd_mach_arm_2a:      expected = "armv2a"; break;
    case bfd_mach_arm_3:       expected = "armv3"; break;
    case bfd_mach_arm_3M:      expected = "armv3M"; break;
    case bfd_mach_arm_4:       expected = "armv4"; break;
    case bfd_mach_arm_4T:      expected = "armv4t"; break;
    case bfd_mach_arm_5:       expected = "armv5"; break;
    case bfd_mach_arm_5T:      expected = "armv5t"; break;
    case bfd_mach_arm_5TE:     expected = "armv5te"; break;
    case bfd_mach_arm_XScale:  expected = "XScale"; break;
    case bfd_mach_arm_ep9312:  expected = "ep9312"; break;
    case bfd_mach_arm_iWMMXt:  expected = "iWMMXt"; break;
    case bfd_mach_arm_iWMMXt2: expected = "iWMMXt2"; break;
    }

  if (FUNC10 (arch_string, expected) != 0)
    {
      FUNC11 ((char *) buffer + (FUNC9 (arm_Note, name)
				 + ((FUNC12 (NOTE_ARCH_STRING) + 3) & ~3)),
	      expected);

      if (! FUNC7 (abfd, arm_arch_section, buffer,
				      (file_ptr) 0, buffer_size))
	{
	  FUNC1)
	    (FUNC0("warning: unable to update contents of %s section in %s"),
	     note_section, FUNC3 (abfd));
	  goto FAIL;
	}
    }

  FUNC8 (buffer);
  return TRUE;

 FAIL:
  if (buffer != NULL)
    FUNC8 (buffer);
  return FALSE;
}