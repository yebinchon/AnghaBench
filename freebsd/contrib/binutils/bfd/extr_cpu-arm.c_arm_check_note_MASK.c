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
typedef  scalar_t__ bfd_size_type ;
typedef  int /*<<< orphan*/  bfd_byte ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  arm_Note ; 
 unsigned long FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 unsigned long name ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC2 (char*,char const*) ; 
 int FUNC3 (char const*) ; 

__attribute__((used)) static bfd_boolean
FUNC4 (bfd *abfd,
		bfd_byte *buffer,
		bfd_size_type buffer_size,
		const char *expected_name,
		char **description_return)
{
  unsigned long namesz;
  unsigned long descsz;
  unsigned long type;
  char *        descr;

  if (buffer_size < FUNC1 (arm_Note, name))
    return FALSE;

  /* We have to extract the values this way to allow for a
     host whose endian-ness is different from the target.  */
  namesz = FUNC0 (abfd, buffer);
  descsz = FUNC0 (abfd, buffer + FUNC1 (arm_Note, descsz));
  type   = FUNC0 (abfd, buffer + FUNC1 (arm_Note, type));
  descr  = (char *) buffer + FUNC1 (arm_Note, name);

  /* Check for buffer overflow.  */
  if (namesz + descsz + FUNC1 (arm_Note, name) > buffer_size)
    return FALSE;

  if (expected_name == NULL)
    {
      if (namesz != 0)
	return FALSE;
    }
  else
    { 
      if (namesz != ((FUNC3 (expected_name) + 1 + 3) & ~3))
	return FALSE;
      
      if (FUNC2 (descr, expected_name) != 0)
	return FALSE;

      descr += (namesz + 3) & ~3;
    }

  /* FIXME: We should probably check the type as well.  */

  if (description_return != NULL)
    * description_return = descr;

  return TRUE;
}