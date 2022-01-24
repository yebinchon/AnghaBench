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
typedef  int /*<<< orphan*/  u8 ;
struct printf_spec {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/  const*,int) ; 
 char* FUNC1 (char*,char*,char*,struct printf_spec) ; 

__attribute__((used)) static char *FUNC2(char *buf, char *end, const u8 *addr,
			     struct printf_spec spec, const char *fmt)
{
	char ip4_addr[sizeof("255.255.255.255")];

	FUNC0(ip4_addr, addr, fmt[0] == 'i');

	return FUNC1(buf, end, ip4_addr, spec);
}