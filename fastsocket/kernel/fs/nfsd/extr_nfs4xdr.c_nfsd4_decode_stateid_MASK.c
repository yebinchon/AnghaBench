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
struct nfsd4_compoundargs {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  si_opaque; int /*<<< orphan*/  si_generation; } ;
typedef  TYPE_1__ stateid_t ;
typedef  int /*<<< orphan*/  stateid_opaque_t ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  DECODE_HEAD ; 
 int /*<<< orphan*/  DECODE_TAIL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static __be32
FUNC3(struct nfsd4_compoundargs *argp, stateid_t *sid)
{
	DECODE_HEAD;

	FUNC2(sizeof(stateid_t));
	FUNC1(sid->si_generation);
	FUNC0(&sid->si_opaque, sizeof(stateid_opaque_t));

	DECODE_TAIL;
}