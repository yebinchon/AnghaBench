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
typedef  int unw_word ;
struct TYPE_2__ {scalar_t__ reg; } ;
struct unw_state_record {scalar_t__ region_len; scalar_t__ region_start; TYPE_1__ curr; } ;

/* Variables and functions */
 int /*<<< orphan*/  UNW_WHERE_SPREL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,scalar_t__,int) ; 

__attribute__((used)) static inline void
FUNC1 (unsigned char reg, unw_word spoff, struct unw_state_record *sr)
{
  FUNC0 (sr->curr.reg + reg, UNW_WHERE_SPREL,
	   sr->region_start + sr->region_len - 1,
	   4*spoff);
}