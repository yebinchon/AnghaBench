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
#define  ET_CORE 132 
#define  ET_DYN 131 
#define  ET_EXEC 130 
 unsigned int ET_HIOS ; 
 unsigned int ET_HIPROC ; 
 unsigned int ET_LOOS ; 
 unsigned int ET_LOPROC ; 
#define  ET_NONE 129 
#define  ET_REL 128 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,unsigned int) ; 

__attribute__((used)) static char *
FUNC2 (unsigned e_type)
{
  static char buff[32];

  switch (e_type)
    {
    case ET_NONE:	return FUNC0("NONE (None)");
    case ET_REL:	return FUNC0("REL (Relocatable file)");
    case ET_EXEC:	return FUNC0("EXEC (Executable file)");
    case ET_DYN:	return FUNC0("DYN (Shared object file)");
    case ET_CORE:	return FUNC0("CORE (Core file)");

    default:
      if ((e_type >= ET_LOPROC) && (e_type <= ET_HIPROC))
	FUNC1 (buff, sizeof (buff), FUNC0("Processor Specific: (%x)"), e_type);
      else if ((e_type >= ET_LOOS) && (e_type <= ET_HIOS))
	FUNC1 (buff, sizeof (buff), FUNC0("OS Specific: (%x)"), e_type);
      else
	FUNC1 (buff, sizeof (buff), FUNC0("<unknown>: %x"), e_type);
      return buff;
    }
}