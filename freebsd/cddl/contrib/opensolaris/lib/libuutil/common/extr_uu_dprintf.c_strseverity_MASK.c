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
typedef  int uu_dprintf_severity_t ;

/* Variables and functions */
 int /*<<< orphan*/  TEXT_DOMAIN ; 
#define  UU_DPRINTF_DEBUG 133 
#define  UU_DPRINTF_FATAL 132 
#define  UU_DPRINTF_INFO 131 
#define  UU_DPRINTF_NOTICE 130 
#define  UU_DPRINTF_SILENT 129 
#define  UU_DPRINTF_WARNING 128 
 char const* FUNC0 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static const char *
FUNC1(uu_dprintf_severity_t severity)
{
	switch (severity) {
	case UU_DPRINTF_SILENT:
		return (FUNC0(TEXT_DOMAIN, "silent"));
	case UU_DPRINTF_FATAL:
		return (FUNC0(TEXT_DOMAIN, "FATAL"));
	case UU_DPRINTF_WARNING:
		return (FUNC0(TEXT_DOMAIN, "WARNING"));
	case UU_DPRINTF_NOTICE:
		return (FUNC0(TEXT_DOMAIN, "note"));
	case UU_DPRINTF_INFO:
		return (FUNC0(TEXT_DOMAIN, "info"));
	case UU_DPRINTF_DEBUG:
		return (FUNC0(TEXT_DOMAIN, "debug"));
	default:
		return (FUNC0(TEXT_DOMAIN, "unspecified"));
	}
}