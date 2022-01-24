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
struct rds_cong_map {scalar_t__* m_page_addrs; int /*<<< orphan*/  m_addr; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 unsigned long RDS_CONG_MAP_PAGE_BITS ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,void*) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct rds_cong_map*) ; 

void FUNC4(struct rds_cong_map *map, __be16 port)
{
	unsigned long i;
	unsigned long off;

	FUNC3("setting congestion for %pI4:%u in map %p\n",
	  &map->m_addr, FUNC2(port), map);

	i = FUNC1(port) / RDS_CONG_MAP_PAGE_BITS;
	off = FUNC1(port) % RDS_CONG_MAP_PAGE_BITS;

	FUNC0(off, (void *)map->m_page_addrs[i]);
}