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
struct ebitmap_node {unsigned int startbit; int /*<<< orphan*/  maps; struct ebitmap_node* next; } ;
struct ebitmap {int dummy; } ;

/* Variables and functions */
 unsigned int EBITMAP_SIZE ; 
 unsigned int FUNC0 (struct ebitmap*) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 

__attribute__((used)) static inline unsigned int FUNC3(struct ebitmap *e,
						 struct ebitmap_node **n,
						 unsigned int bit)
{
	unsigned int ofs;

	ofs = FUNC2((*n)->maps, EBITMAP_SIZE, bit - (*n)->startbit + 1);
	if (ofs < EBITMAP_SIZE)
		return ofs + (*n)->startbit;

	for (*n = (*n)->next; *n; *n = (*n)->next) {
		ofs = FUNC1((*n)->maps, EBITMAP_SIZE);
		if (ofs < EBITMAP_SIZE)
			return ofs + (*n)->startbit;
	}
	return FUNC0(e);
}