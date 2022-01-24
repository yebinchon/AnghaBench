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
typedef  int /*<<< orphan*/  zdev_t ;
typedef  int /*<<< orphan*/  zbuf_t ;
typedef  int u8_t ;
typedef  int u16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

void FUNC4(zdev_t* dev, zbuf_t *buf) {
    u16_t start_seq, len;
    u8_t i, bitmap[8];
    len = FUNC2(dev, buf);
    start_seq = FUNC3(dev, buf, len-2);
    FUNC0("Received a BAR Control frame, start_seq=%d", start_seq>>4);
    /* todo: set the bitmap by reordering buffer! */
    for (i=0; i<8; i++) bitmap[i]=0;
    FUNC1(dev, start_seq, bitmap);
}