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
typedef  int /*<<< orphan*/  u_int ;
struct transport {int /*<<< orphan*/  table; } ;
struct tport {int dummy; } ;
struct asn_oid {int dummy; } ;

/* Variables and functions */
 struct tport* FUNC0 (int /*<<< orphan*/ *,struct asn_oid const*,int /*<<< orphan*/ ) ; 

struct tport *
FUNC1(struct transport *t, const struct asn_oid *idx, u_int sub)
{

	return (FUNC0(&t->table, idx, sub));
}