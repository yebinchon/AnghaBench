#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  buff ;
struct TYPE_2__ {scalar_t__ e_type; } ;

/* Variables and functions */
 scalar_t__ ET_CORE ; 
#define  NT_FREEBSD_ABI_TAG 141 
#define  NT_FREEBSD_ARCH_TAG 140 
#define  NT_FREEBSD_NOINIT_TAG 139 
#define  NT_PROCSTAT_AUXV 138 
#define  NT_PROCSTAT_FILES 137 
#define  NT_PROCSTAT_GROUPS 136 
#define  NT_PROCSTAT_OSREL 135 
#define  NT_PROCSTAT_PROC 134 
#define  NT_PROCSTAT_PSSTRINGS 133 
#define  NT_PROCSTAT_RLIMIT 132 
#define  NT_PROCSTAT_UMASK 131 
#define  NT_PROCSTAT_VMMAP 130 
#define  NT_THRMISC 129 
#define  NT_X86_XSTATE 128 
 char* FUNC0 (char*) ; 
 TYPE_1__ elf_header ; 
 char const* FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,unsigned int) ; 

__attribute__((used)) static const char *
FUNC3 (unsigned e_type)
{
  static char buff[64];

  if (elf_header.e_type == ET_CORE)
    switch (e_type)
      {
      case NT_THRMISC:
	return FUNC0("NT_THRMISC (thrmisc structure)");
      case NT_PROCSTAT_PROC:
	return FUNC0("NT_PROCSTAT_PROC (proc data)");
      case NT_PROCSTAT_FILES:
	return FUNC0("NT_PROCSTAT_FILES (files data)");
      case NT_PROCSTAT_VMMAP:
	return FUNC0("NT_PROCSTAT_VMMAP (vmmap data)");
      case NT_PROCSTAT_GROUPS:
	return FUNC0("NT_PROCSTAT_GROUPS (groups data)");
      case NT_PROCSTAT_UMASK:
	return FUNC0("NT_PROCSTAT_UMASK (umask data)");
      case NT_PROCSTAT_RLIMIT:
	return FUNC0("NT_PROCSTAT_RLIMIT (rlimit data)");
      case NT_PROCSTAT_OSREL:
	return FUNC0("NT_PROCSTAT_OSREL (osreldate data)");
      case NT_PROCSTAT_PSSTRINGS:
	return FUNC0("NT_PROCSTAT_PSSTRINGS (ps_strings data)");
      case NT_PROCSTAT_AUXV:
	return FUNC0("NT_PROCSTAT_AUXV (auxv data)");
      case NT_X86_XSTATE:
	return FUNC0("NT_X86_XSTATE (x86 XSAVE extended state)");
      default:
	return FUNC1(e_type);
      }
  else
    switch (e_type)
      {
      case NT_FREEBSD_ABI_TAG:
	return FUNC0("NT_FREEBSD_ABI_TAG");
      case NT_FREEBSD_NOINIT_TAG:
	return FUNC0("NT_FREEBSD_NOINIT_TAG");
      case NT_FREEBSD_ARCH_TAG:
	return FUNC0("NT_FREEBSD_ARCH_TAG");
      default:
	break;
      }

  FUNC2 (buff, sizeof(buff), FUNC0("Unknown note type: (0x%08x)"), e_type);
  return buff;
}