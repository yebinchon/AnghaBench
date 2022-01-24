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

/* Variables and functions */
#define  SHT_IA_64_EXT 130 
 unsigned int SHT_IA_64_LOPSREG ; 
#define  SHT_IA_64_PRIORITY_INIT 129 
#define  SHT_IA_64_UNWIND 128 
 char const* FUNC0 (unsigned int) ; 

__attribute__((used)) static const char *
FUNC1 (unsigned int sh_type)
{
  /* If the top 8 bits are 0x78 the next 8 are the os/abi ID.  */
  if ((sh_type & 0xFF000000) == SHT_IA_64_LOPSREG)
    return FUNC0 ((sh_type & 0x00FF0000) >> 16);

  switch (sh_type)
    {
    case SHT_IA_64_EXT:		  return "IA_64_EXT";
    case SHT_IA_64_UNWIND:	  return "IA_64_UNWIND";
    case SHT_IA_64_PRIORITY_INIT: return "IA_64_PRIORITY_INIT";
    default:
      break;
    }
  return NULL;
}