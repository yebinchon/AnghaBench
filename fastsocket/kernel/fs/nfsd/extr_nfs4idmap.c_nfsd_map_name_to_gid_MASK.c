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
struct svc_rqst {int dummy; } ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  IDMAP_TYPE_GROUP ; 
 int FUNC0 (struct svc_rqst*,int /*<<< orphan*/ ,char const*,size_t,int /*<<< orphan*/ *) ; 

int
FUNC1(struct svc_rqst *rqstp, const char *name, size_t namelen,
		__u32 *id)
{
	return FUNC0(rqstp, IDMAP_TYPE_GROUP, name, namelen, id);
}