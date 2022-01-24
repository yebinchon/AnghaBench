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
struct nfs4_client {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (char const*) ; 
 struct nfs4_client* FUNC1 (char const*,unsigned int,int) ; 

int
FUNC2(const char *name, bool use_exchange_id)
{
	unsigned int strhashval = FUNC0(name);
	struct nfs4_client *clp;

	clp = FUNC1(name, strhashval, use_exchange_id);
	return clp ? 1 : 0;
}