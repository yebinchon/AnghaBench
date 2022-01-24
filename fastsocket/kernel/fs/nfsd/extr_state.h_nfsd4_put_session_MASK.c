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
struct nfsd4_session {int /*<<< orphan*/  se_ref; } ;
struct kref {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void (*) (struct kref*)) ; 

__attribute__((used)) static inline void
FUNC1(struct nfsd4_session *ses)
{
	extern void FUNC2(struct kref *kref);
	FUNC0(&ses->se_ref, free_session);
}