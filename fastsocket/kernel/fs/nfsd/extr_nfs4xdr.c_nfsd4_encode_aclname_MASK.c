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
typedef  int /*<<< orphan*/  uid_t ;
struct svc_rqst {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct svc_rqst*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ **,int*) ; 

__attribute__((used)) static inline __be32
FUNC1(struct svc_rqst *rqstp, int whotype, uid_t id, int group,
		__be32 **p, int *buflen)
{
	return FUNC0(rqstp, whotype, id, group, p, buflen);
}