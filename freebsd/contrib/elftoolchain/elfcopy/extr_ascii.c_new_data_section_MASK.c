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
typedef  int /*<<< orphan*/  uint64_t ;
struct section {int dummy; } ;
struct elfcopy {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ELF_T_BYTE ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int SHF_ALLOC ; 
 int SHF_WRITE ; 
 int /*<<< orphan*/  SHT_PROGBITS ; 
 int /*<<< orphan*/  _SEC_NAMESZ ; 
 struct section* FUNC0 (struct elfcopy*,char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static struct section *
FUNC4(struct elfcopy *ecp, int sec_index, uint64_t off,
    uint64_t addr)
{
	char *name;

	if ((name = FUNC2(_SEC_NAMESZ)) == NULL)
		FUNC1(EXIT_FAILURE, "malloc failed");
	FUNC3(name, _SEC_NAMESZ, ".sec%d", sec_index);

	return (FUNC0(ecp, name, name, NULL, 0, off,
		SHT_PROGBITS, ELF_T_BYTE, SHF_ALLOC | SHF_WRITE, 1, addr, 0));
}