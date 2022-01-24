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
struct es1938 {scalar_t__ dma1_size; int /*<<< orphan*/  dma1_start; int /*<<< orphan*/  last_capture_dmaaddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMAADDR ; 
 int /*<<< orphan*/  DMACLEAR ; 
 int /*<<< orphan*/  DMACOMMAND ; 
 int /*<<< orphan*/  DMACOUNT ; 
 int /*<<< orphan*/  DMAMASK ; 
 int /*<<< orphan*/  DMAMODE ; 
 int /*<<< orphan*/  FUNC0 (struct es1938*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct es1938 *chip)
{
	/* Enable DMA controller */
	FUNC1(0xc4, FUNC0(chip, DMACOMMAND));
	/* 1. Master reset */
	FUNC1(0, FUNC0(chip, DMACLEAR));
	/* 2. Mask DMA */
	FUNC1(1, FUNC0(chip, DMAMASK));
	FUNC1(0x14, FUNC0(chip, DMAMODE));
	FUNC2(chip->dma1_start, FUNC0(chip, DMAADDR));
	chip->last_capture_dmaaddr = chip->dma1_start;
	FUNC3(chip->dma1_size - 1, FUNC0(chip, DMACOUNT));
	/* 3. Unmask DMA */
	FUNC1(0, FUNC0(chip, DMAMASK));
}