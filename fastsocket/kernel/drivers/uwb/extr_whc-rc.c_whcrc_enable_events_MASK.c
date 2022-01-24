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
typedef  int u32 ;
struct whcrc {int /*<<< orphan*/  irq_lock; scalar_t__ rc_base; int /*<<< orphan*/  evt_dma_buf; } ;

/* Variables and functions */
 scalar_t__ URCCMD ; 
 int URCCMD_ACTIVE ; 
 int URCCMD_EARV ; 
 scalar_t__ URCEVTADDR ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static
void FUNC5(struct whcrc *whcrc)
{
	u32 urccmd;

	FUNC2(whcrc->evt_dma_buf, whcrc->rc_base + URCEVTADDR);

	FUNC3(&whcrc->irq_lock);
	urccmd = FUNC0(whcrc->rc_base + URCCMD) & ~URCCMD_ACTIVE;
	FUNC1(urccmd | URCCMD_EARV, whcrc->rc_base + URCCMD);
	FUNC4(&whcrc->irq_lock);
}