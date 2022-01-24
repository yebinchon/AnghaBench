#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* page; } ;
struct small_page_entry {int /*<<< orphan*/  alloc_bits; TYPE_1__ common; } ;

/* Variables and functions */
 int BYTES_PER_ALLOC_BIT ; 
 int SMALL_PAGE_SIZE ; 
 unsigned int FUNC0 (char const*) ; 
 unsigned int FUNC1 (char const*) ; 
 size_t FUNC2 (int /*<<< orphan*/ ,unsigned int,unsigned int,size_t) ; 

__attribute__((used)) static inline size_t
FUNC3 (struct small_page_entry *page,
		       const void *object)
{
  const char *object_midptr = (const char *) object + BYTES_PER_ALLOC_BIT;
  unsigned int start_word = FUNC1 (object_midptr);
  unsigned int start_bit = FUNC0 (object_midptr);
  size_t max_size = (page->common.page + SMALL_PAGE_SIZE
		     - (char *) object);

  return FUNC2 (page->alloc_bits, start_word, start_bit,
			     max_size);
}