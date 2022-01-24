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
struct es1938 {int /*<<< orphan*/  dma2_size; int /*<<< orphan*/  dma2_start; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIO2DMAADDR ; 
 int /*<<< orphan*/  AUDIO2DMACOUNT ; 
 int /*<<< orphan*/  AUDIO2MODE ; 
 int /*<<< orphan*/  FUNC0 (struct es1938*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct es1938 *chip)
{
	FUNC1(0x00, FUNC0(chip, AUDIO2MODE));
	FUNC2(chip->dma2_start, FUNC0(chip, AUDIO2DMAADDR));
	FUNC3(0, FUNC0(chip, AUDIO2DMACOUNT));
	FUNC3(chip->dma2_size, FUNC0(chip, AUDIO2DMACOUNT));
}