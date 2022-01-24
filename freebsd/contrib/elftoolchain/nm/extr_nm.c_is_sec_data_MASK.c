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
struct TYPE_3__ {int sh_flags; scalar_t__ sh_type; } ;
typedef  TYPE_1__ GElf_Shdr ;

/* Variables and functions */
 int SHF_ALLOC ; 
 scalar_t__ SHT_NOBITS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC1(GElf_Shdr *s)
{

	FUNC0(s != NULL && "shdr is NULL");

	return (((s->sh_flags & SHF_ALLOC) != 0) && s->sh_type != SHT_NOBITS);
}