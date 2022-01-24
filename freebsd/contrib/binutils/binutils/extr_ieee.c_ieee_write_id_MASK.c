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
struct ieee_handle {int dummy; } ;
typedef  int /*<<< orphan*/  bfd_boolean ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 scalar_t__ ieee_extension_length_1_enum ; 
 scalar_t__ ieee_extension_length_2_enum ; 
 int /*<<< orphan*/  FUNC2 (struct ieee_handle*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee_handle*,char const) ; 
 int /*<<< orphan*/  stderr ; 
 unsigned int FUNC4 (char const*) ; 

__attribute__((used)) static bfd_boolean
FUNC5 (struct ieee_handle *info, const char *s)
{
  unsigned int len;

  len = FUNC4 (s);
  if (len <= 0x7f)
    {
      if (! FUNC3 (info, len))
	return FALSE;
    }
  else if (len <= 0xff)
    {
      if (! FUNC3 (info, (int) ieee_extension_length_1_enum)
	  || ! FUNC3 (info, len))
	return FALSE;
    }
  else if (len <= 0xffff)
    {
      if (! FUNC3 (info, (int) ieee_extension_length_2_enum)
	  || ! FUNC2 (info, len))
	return FALSE;
    }
  else
    {
      FUNC1 (stderr, FUNC0("IEEE string length overflow: %u\n"), len);
      return FALSE;
    }

  for (; *s != '\0'; s++)
    if (! FUNC3 (info, *s))
      return FALSE;

  return TRUE;
}