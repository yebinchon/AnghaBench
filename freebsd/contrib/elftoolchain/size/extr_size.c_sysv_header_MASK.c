#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* ar_name; } ;
typedef  TYPE_1__ Elf_Arhdr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 scalar_t__ text_size_total ; 

__attribute__((used)) static void
FUNC4(const char *name, Elf_Arhdr *arhdr)
{

	text_size_total = 0;
	if (arhdr != NULL)
		(void) FUNC0("%s   (ex %s):\n", arhdr->ar_name, name);
	else
		(void) FUNC0("%s  :\n", name);
	FUNC2(3);
	FUNC1();
	FUNC3("section", 0);
	FUNC3("size", 1);
	FUNC3("addr", 2);
}