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
typedef  int /*<<< orphan*/  bfd_size_type ;
typedef  int /*<<< orphan*/  bfd_byte ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC2 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bfd_error_invalid_operation ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ieee_extension_length_1_enum ; 
 int /*<<< orphan*/  ieee_extension_length_2_enum ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 size_t FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static bfd_boolean
FUNC9 (bfd *abfd, const char *id)
{
  size_t length = FUNC7 (id);

  if (length <= 127)
    {
      if (! FUNC6 (abfd, (bfd_byte) length))
	return FALSE;
    }
  else if (length < 255)
    {
      if (! FUNC6 (abfd, ieee_extension_length_1_enum)
	  || ! FUNC6 (abfd, (bfd_byte) length))
	return FALSE;
    }
  else if (length < 65535)
    {
      if (! FUNC6 (abfd, ieee_extension_length_2_enum)
	  || ! FUNC5 (abfd, (int) length))
	return FALSE;
    }
  else
    {
      FUNC1)
	(FUNC0("%s: string too long (%d chars, max 65535)"),
	 FUNC3 (abfd), length);
      FUNC4 (bfd_error_invalid_operation);
      return FALSE;
    }

  if (FUNC2 ((void *) id, (bfd_size_type) length, abfd) != length)
    return FALSE;
  return TRUE;
}