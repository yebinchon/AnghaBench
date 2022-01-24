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
struct rds_transport {int dummy; } ;
struct rds_connection {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 struct rds_connection* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rds_transport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct rds_connection *FUNC1(__be32 laddr, __be32 faddr,
				       struct rds_transport *trans, gfp_t gfp)
{
	return FUNC0(laddr, faddr, trans, gfp, 0);
}