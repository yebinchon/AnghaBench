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
typedef  int /*<<< orphan*/  buff ;

/* Variables and functions */
#define  NT_GNU_ABI_TAG 129 
#define  NT_GNU_BUILD_ID 128 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,unsigned int) ; 

__attribute__((used)) static const char *
FUNC2 (unsigned e_type)
{
  static char buff[64];

  switch (e_type)
    {
    case NT_GNU_ABI_TAG:
      return FUNC0("NT_GNU_ABI_TAG");
    case NT_GNU_BUILD_ID:
      return FUNC0("NT_GNU_BUILD_ID");
    }

  FUNC1 (buff, sizeof(buff), FUNC0("Unknown GNU note type: (0x%08x)"), e_type);
  return buff;
}