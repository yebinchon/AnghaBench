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
struct page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  KM_USER0 ; 
 size_t PAGE_CACHE_MASK ; 
 size_t PAGE_CACHE_SHIFT ; 
 size_t PAGE_CACHE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 char* FUNC1 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,size_t) ; 

__attribute__((used)) static void
FUNC4(struct page **pages, size_t pgbase, const char *p, size_t len)
{
	struct page **pgto;
	char *vto;
	size_t copy;

	pgto = pages + (pgbase >> PAGE_CACHE_SHIFT);
	pgbase &= ~PAGE_CACHE_MASK;

	for (;;) {
		copy = PAGE_CACHE_SIZE - pgbase;
		if (copy > len)
			copy = len;

		vto = FUNC1(*pgto, KM_USER0);
		FUNC3(vto + pgbase, p, copy);
		FUNC2(vto, KM_USER0);

		len -= copy;
		if (len == 0)
			break;

		pgbase += copy;
		if (pgbase == PAGE_CACHE_SIZE) {
			FUNC0(*pgto);
			pgbase = 0;
			pgto++;
		}
		p += copy;
	}
	FUNC0(*pgto);
}