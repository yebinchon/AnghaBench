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
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* get16 ) (int /*<<< orphan*/  const*) ;} ;

/* Variables and functions */
 TYPE_1__* order ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static inline uint16_t FUNC1(const uint16_t *p) { return order->get16(p); }