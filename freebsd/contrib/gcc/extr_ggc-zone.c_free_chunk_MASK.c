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
struct alloc_zone {size_t high_free_bin; struct alloc_chunk** free_chunks; } ;
struct alloc_chunk {size_t size; struct alloc_chunk* next_free; } ;
struct TYPE_2__ {int /*<<< orphan*/  debug_file; } ;

/* Variables and functions */
 TYPE_1__ G ; 
 int GGC_DEBUG_LEVEL ; 
 size_t NUM_FREE_BINS ; 
 size_t FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct alloc_chunk*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,void*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static inline void
FUNC6 (char *ptr, size_t size, struct alloc_zone *zone)
{
  struct alloc_chunk *chunk = (struct alloc_chunk *) ptr;
  size_t bin = 0;

  bin = FUNC0 (size);
  FUNC5 (bin != 0);
  if (bin > NUM_FREE_BINS)
    {
      bin = 0;
      FUNC1 (FUNC3 (chunk, sizeof (struct alloc_chunk)));
      chunk->size = size;
      chunk->next_free = zone->free_chunks[bin];
      FUNC1 (FUNC2 (ptr + sizeof (struct alloc_chunk),
						size - sizeof (struct alloc_chunk)));
    }
  else
    {
      FUNC1 (FUNC3 (chunk, sizeof (struct alloc_chunk *)));
      chunk->next_free = zone->free_chunks[bin];
      FUNC1 (FUNC2 (ptr + sizeof (struct alloc_chunk *),
						size - sizeof (struct alloc_chunk *)));
    }

  zone->free_chunks[bin] = chunk;
  if (bin > zone->high_free_bin)
    zone->high_free_bin = bin;
  if (GGC_DEBUG_LEVEL >= 3)
    FUNC4 (G.debug_file, "Deallocating object, chunk=%p\n", (void *)chunk);
}