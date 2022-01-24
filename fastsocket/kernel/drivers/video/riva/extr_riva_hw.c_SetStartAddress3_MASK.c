#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int IO; int /*<<< orphan*/  PCIO; int /*<<< orphan*/  (* LockUnlock ) (TYPE_1__*,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ RIVA_HW_INST ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3
(
    RIVA_HW_INST *chip,
    unsigned      start
)
{
    int offset = start >> 2;
    int pan    = (start & 3) << 1;
    unsigned char tmp;

    /*
     * Unlock extended registers.
     */
    chip->LockUnlock(chip, 0);
    /*
     * Set start address.
     */
    FUNC1(chip->PCIO, 0x3D4, 0x0D); FUNC1(chip->PCIO, 0x3D5, offset);
    offset >>= 8;
    FUNC1(chip->PCIO, 0x3D4, 0x0C); FUNC1(chip->PCIO, 0x3D5, offset);
    offset >>= 8;
    FUNC1(chip->PCIO, 0x3D4, 0x19); tmp = FUNC0(chip->PCIO, 0x3D5);
    FUNC1(chip->PCIO, 0x3D5, (offset & 0x01F) | (tmp & ~0x1F));
    FUNC1(chip->PCIO, 0x3D4, 0x2D); tmp = FUNC0(chip->PCIO, 0x3D5);
    FUNC1(chip->PCIO, 0x3D5, (offset & 0x60) | (tmp & ~0x60));
    /*
     * 4 pixel pan register.
     */
    offset = FUNC0(chip->PCIO, chip->IO + 0x0A);
    FUNC1(chip->PCIO, 0x3C0, 0x13);
    FUNC1(chip->PCIO, 0x3C0, pan);
}