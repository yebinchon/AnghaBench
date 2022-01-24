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
struct phonet_protocol {TYPE_1__* prot; } ;
struct TYPE_2__ {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 unsigned int PHONET_NPROTO ; 
 struct phonet_protocol** proto_tab ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct phonet_protocol *FUNC3(unsigned int protocol)
{
	struct phonet_protocol *pp;

	if (protocol >= PHONET_NPROTO)
		return NULL;

	FUNC0();
	pp = proto_tab[protocol];
	if (pp && !FUNC2(pp->prot->owner))
		pp = NULL;
	FUNC1();

	return pp;
}