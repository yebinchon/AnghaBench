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
typedef  unsigned int u32 ;
struct cx25821_dev {unsigned int _data_buf_phys_addr; int /*<<< orphan*/  _isNTSC; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 unsigned int NTSC_FIELD_HEIGHT ; 
 unsigned int NUM_NO_OPS ; 
 unsigned int RISC_EOL ; 
 unsigned int RISC_NOOP ; 
 unsigned int RISC_READ ; 
 unsigned int RISC_RESYNC ; 
 unsigned int RISC_SOL ; 
 scalar_t__ USE_RISC_NOOP_VIDEO ; 
 void* FUNC0 (unsigned int) ; 

__attribute__((used)) static __le32 *FUNC1(struct cx25821_dev *dev,
					  __le32 * rp, unsigned int offset,
					  unsigned int bpl, u32 sync_line,
					  unsigned int lines, int fifo_enable,
					  int field_type)
{
	unsigned int line, i;
	int dist_betwn_starts = bpl * 2;

	*(rp++) = FUNC0(RISC_RESYNC | sync_line);

	if (USE_RISC_NOOP_VIDEO) {
		for (i = 0; i < NUM_NO_OPS; i++) {
			*(rp++) = FUNC0(RISC_NOOP);
		}
	}

	/* scan lines */
	for (line = 0; line < lines; line++) {
		*(rp++) = FUNC0(RISC_READ | RISC_SOL | RISC_EOL | bpl);
		*(rp++) = FUNC0(dev->_data_buf_phys_addr + offset);
		*(rp++) = FUNC0(0);	/* bits 63-32 */

		if ((lines <= NTSC_FIELD_HEIGHT)
		    || (line < (NTSC_FIELD_HEIGHT - 1)) || !(dev->_isNTSC)) {
			offset += dist_betwn_starts;
		}
	}

	return rp;
}