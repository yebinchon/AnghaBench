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
typedef  int /*<<< orphan*/  u32 ;
struct svc_rqst {int dummy; } ;
struct svc_export {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FSID_NUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct svc_export* FUNC1 (struct svc_rqst*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct svc_export *FUNC2(struct svc_rqst *rqstp)
{
	u32 fsidv[2];

	FUNC0(FSID_NUM, fsidv, 0, 0, 0, NULL);

	return FUNC1(rqstp, FSID_NUM, fsidv);
}