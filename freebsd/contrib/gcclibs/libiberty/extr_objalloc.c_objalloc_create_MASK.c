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
struct objalloc_chunk {int /*<<< orphan*/ * current_ptr; int /*<<< orphan*/ * next; } ;
struct objalloc {char* current_ptr; int current_space; int /*<<< orphan*/ * chunks; } ;
typedef  int /*<<< orphan*/ * PTR ;

/* Variables and functions */
 int CHUNK_HEADER_SIZE ; 
 int CHUNK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct objalloc*) ; 
 scalar_t__ FUNC1 (int) ; 

struct objalloc *
FUNC2 (void)
{
  struct objalloc *ret;
  struct objalloc_chunk *chunk;

  ret = (struct objalloc *) FUNC1 (sizeof *ret);
  if (ret == NULL)
    return NULL;

  ret->chunks = (PTR) FUNC1 (CHUNK_SIZE);
  if (ret->chunks == NULL)
    {
      FUNC0 (ret);
      return NULL;
    }

  chunk = (struct objalloc_chunk *) ret->chunks;
  chunk->next = NULL;
  chunk->current_ptr = NULL;

  ret->current_ptr = (char *) chunk + CHUNK_HEADER_SIZE;
  ret->current_space = CHUNK_SIZE - CHUNK_HEADER_SIZE;

  return ret;
}