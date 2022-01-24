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
struct dso {size_t symtab_type; } ;

/* Variables and functions */
#define  DSO_BINARY_TYPE__BUILDID_DEBUGINFO 140 
#define  DSO_BINARY_TYPE__BUILD_ID_CACHE 139 
#define  DSO_BINARY_TYPE__DEBUGLINK 138 
#define  DSO_BINARY_TYPE__FEDORA_DEBUGINFO 137 
#define  DSO_BINARY_TYPE__GUEST_KALLSYMS 136 
#define  DSO_BINARY_TYPE__GUEST_KMODULE 135 
#define  DSO_BINARY_TYPE__GUEST_VMLINUX 134 
#define  DSO_BINARY_TYPE__JAVA_JIT 133 
#define  DSO_BINARY_TYPE__KALLSYMS 132 
 size_t DSO_BINARY_TYPE__NOT_FOUND ; 
#define  DSO_BINARY_TYPE__SYSTEM_PATH_DSO 131 
#define  DSO_BINARY_TYPE__SYSTEM_PATH_KMODULE 130 
#define  DSO_BINARY_TYPE__UBUNTU_DEBUGINFO 129 
#define  DSO_BINARY_TYPE__VMLINUX 128 

char FUNC0(const struct dso *dso)
{
	static const char origin[] = {
		[DSO_BINARY_TYPE__KALLSYMS]		= 'k',
		[DSO_BINARY_TYPE__VMLINUX]		= 'v',
		[DSO_BINARY_TYPE__JAVA_JIT]		= 'j',
		[DSO_BINARY_TYPE__DEBUGLINK]		= 'l',
		[DSO_BINARY_TYPE__BUILD_ID_CACHE]	= 'B',
		[DSO_BINARY_TYPE__FEDORA_DEBUGINFO]	= 'f',
		[DSO_BINARY_TYPE__UBUNTU_DEBUGINFO]	= 'u',
		[DSO_BINARY_TYPE__BUILDID_DEBUGINFO]	= 'b',
		[DSO_BINARY_TYPE__SYSTEM_PATH_DSO]	= 'd',
		[DSO_BINARY_TYPE__SYSTEM_PATH_KMODULE]	= 'K',
		[DSO_BINARY_TYPE__GUEST_KALLSYMS]	= 'g',
		[DSO_BINARY_TYPE__GUEST_KMODULE]	= 'G',
		[DSO_BINARY_TYPE__GUEST_VMLINUX]	= 'V',
	};

	if (dso == NULL || dso->symtab_type == DSO_BINARY_TYPE__NOT_FOUND)
		return '!';
	return origin[dso->symtab_type];
}