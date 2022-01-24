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
struct frame_info {int dummy; } ;
struct frame_id {int dummy; } ;
struct amd64_frame_cache {scalar_t__ base; int /*<<< orphan*/  pc; } ;

/* Variables and functions */
 struct amd64_frame_cache* FUNC0 (struct frame_info*,void**) ; 
 struct frame_id FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2 (struct frame_info *next_frame, void **this_cache,
		     struct frame_id *this_id)
{
  struct amd64_frame_cache *cache =
    FUNC0 (next_frame, this_cache);

  /* This marks the outermost frame.  */
  if (cache->base == 0)
    return;

  (*this_id) = FUNC1 (cache->base + 16, cache->pc);
}