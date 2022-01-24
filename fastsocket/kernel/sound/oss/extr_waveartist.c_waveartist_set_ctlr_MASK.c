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
struct address_info {unsigned int io_base; } ;

/* Variables and functions */
 unsigned int CTLR ; 
 unsigned char FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char,unsigned int) ; 

__attribute__((used)) static inline void
FUNC2(struct address_info *hw, unsigned char clear, unsigned char set)
{
	unsigned int ctlr_port = hw->io_base + CTLR;

	clear = ~clear & FUNC0(ctlr_port);

	FUNC1(clear | set, ctlr_port);
}