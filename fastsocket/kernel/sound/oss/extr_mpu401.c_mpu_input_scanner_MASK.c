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
struct mpu_config {int m_state; int last_status; int m_ptr; int* m_buf; int /*<<< orphan*/  synthno; int /*<<< orphan*/  m_left; int /*<<< orphan*/  timer_flag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mpu_config*) ; 
 int MPU_ACK ; 
#define  ST_DATABYTE 134 
#define  ST_INIT 133 
#define  ST_MTC 132 
#define  ST_SONGPOS 131 
 int ST_SONGSEL ; 
#define  ST_SYSEX 130 
#define  ST_SYSMSG 129 
#define  ST_TIMED 128 
 int /*<<< orphan*/  TMR_CLOCK ; 
 int /*<<< orphan*/  TMR_CONTINUE ; 
 int /*<<< orphan*/  TMR_SPP ; 
 int /*<<< orphan*/  TMR_START ; 
 int /*<<< orphan*/  TMR_STOP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/ * len_tab ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct mpu_config*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct mpu_config *devc, unsigned char midic)
{

	switch (devc->m_state)
	{
		case ST_INIT:
			switch (midic)
			{
				case 0xf8:
				/* Timer overflow */
					break;

				case 0xfc:
					FUNC3("<all end>");
			 		break;

				case 0xfd:
					if (devc->timer_flag)
						FUNC2();
					break;

				case 0xfe:
					return MPU_ACK;

				case 0xf0:
				case 0xf1:
				case 0xf2:
				case 0xf3:
				case 0xf4:
				case 0xf5:
				case 0xf6:
				case 0xf7:
					FUNC3("<Trk data rq #%d>", midic & 0x0f);
					break;

				case 0xf9:
					FUNC3("<conductor rq>");
					break;

				case 0xff:
					devc->m_state = ST_SYSMSG;
					break;

				default:
					if (midic <= 0xef)
					{
						/* printk( "mpu time: %d ",  midic); */
						devc->m_state = ST_TIMED;
					}
					else
						FUNC3("<MPU: Unknown event %02x> ", midic);
			}
			break;

		case ST_TIMED:
			{
				int msg = ((int) (midic & 0xf0) >> 4);

				devc->m_state = ST_DATABYTE;

				if (msg < 8)	/* Data byte */
				{
					/* printk( "midi msg (running status) "); */
					msg = ((int) (devc->last_status & 0xf0) >> 4);
					msg -= 8;
					devc->m_left = len_tab[msg] - 1;

					devc->m_ptr = 2;
					devc->m_buf[0] = devc->last_status;
					devc->m_buf[1] = midic;

					if (devc->m_left <= 0)
					{
						devc->m_state = ST_INIT;
						FUNC1(devc->synthno, devc->m_buf, devc->m_ptr);
						devc->m_ptr = 0;
					}
				}
				else if (msg == 0xf)	/* MPU MARK */
				{
					devc->m_state = ST_INIT;

					switch (midic)
					{
						case 0xf8:
							/* printk( "NOP "); */
							break;

						case 0xf9:
							/* printk( "meas end "); */
							break;

						case 0xfc:
							/* printk( "data end "); */
							break;

						default:
							FUNC3("Unknown MPU mark %02x\n", midic);
					}
				}
				else
				{
					devc->last_status = midic;
					/* printk( "midi msg "); */
					msg -= 8;
					devc->m_left = len_tab[msg];

					devc->m_ptr = 1;
					devc->m_buf[0] = midic;

					if (devc->m_left <= 0)
					{
						devc->m_state = ST_INIT;
						FUNC1(devc->synthno, devc->m_buf, devc->m_ptr);
						devc->m_ptr = 0;
					}
				}
			}
			break;

		case ST_SYSMSG:
			switch (midic)
			{
				case 0xf0:
					FUNC3("<SYX>");
					devc->m_state = ST_SYSEX;
					break;

				case 0xf1:
					devc->m_state = ST_MTC;
					break;

				case 0xf2:
					devc->m_state = ST_SONGPOS;
					devc->m_ptr = 0;
					break;

				case 0xf3:
					devc->m_state = ST_SONGSEL;
					break;

				case 0xf6:
					/* printk( "tune_request\n"); */
					devc->m_state = ST_INIT;

					/*
					 *    Real time messages
					 */
				case 0xf8:
					/* midi clock */
					devc->m_state = ST_INIT;
					FUNC4(devc, TMR_CLOCK, 0);
					break;

				case 0xfA:
					devc->m_state = ST_INIT;
					FUNC4(devc, TMR_START, 0);
					break;

				case 0xFB:
					devc->m_state = ST_INIT;
					FUNC4(devc, TMR_CONTINUE, 0);
					break;

				case 0xFC:
					devc->m_state = ST_INIT;
					FUNC4(devc, TMR_STOP, 0);
					break;

				case 0xFE:
					/* active sensing */
					devc->m_state = ST_INIT;
					break;

				case 0xff:
					/* printk( "midi hard reset"); */
					devc->m_state = ST_INIT;
					break;

				default:
					FUNC3("unknown MIDI sysmsg %0x\n", midic);
					devc->m_state = ST_INIT;
			}
			break;

		case ST_MTC:
			devc->m_state = ST_INIT;
			FUNC3("MTC frame %x02\n", midic);
			break;

		case ST_SYSEX:
			if (midic == 0xf7)
			{
				FUNC3("<EOX>");
				devc->m_state = ST_INIT;
			}
			else
				FUNC3("%02x ", midic);
			break;

		case ST_SONGPOS:
			FUNC0(devc);
			devc->m_buf[devc->m_ptr++] = midic;
			if (devc->m_ptr == 2)
			{
				devc->m_state = ST_INIT;
				devc->m_ptr = 0;
				FUNC4(devc, TMR_SPP,
					((devc->m_buf[1] & 0x7f) << 7) |
					(devc->m_buf[0] & 0x7f));
			}
			break;

		case ST_DATABYTE:
			FUNC0(devc);
			devc->m_buf[devc->m_ptr++] = midic;
			if ((--devc->m_left) <= 0)
			{
				devc->m_state = ST_INIT;
				FUNC1(devc->synthno, devc->m_buf, devc->m_ptr);
				devc->m_ptr = 0;
			}
			break;

		default:
			FUNC3("Bad state %d ", devc->m_state);
			devc->m_state = ST_INIT;
	}
	return 1;
}