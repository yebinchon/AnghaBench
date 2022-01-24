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
#define  ELFCLASS32 130 
#define  ELFCLASS64 129 
#define  ELFCLASSNONE 128 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,unsigned int) ; 

__attribute__((used)) static const char *
FUNC2 (unsigned int elf_class)
{
  static char buff[32];

  switch (elf_class)
    {
    case ELFCLASSNONE: return FUNC0("none");
    case ELFCLASS32:   return "ELF32";
    case ELFCLASS64:   return "ELF64";
    default:
      FUNC1 (buff, sizeof (buff), FUNC0("<unknown: %x>"), elf_class);
      return buff;
    }
}