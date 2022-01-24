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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int len_config ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 char* str_config ; 

__attribute__((used)) static void FUNC2(const char * name, int len)
{
	FUNC0(len + 1);

	FUNC1(str_config+len_config, name, len);
	len_config += len;
	str_config[len_config++] = '\n';
}