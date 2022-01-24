#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int rec_frame_size; scalar_t__ rec_codec; int intercom; int read_buffer_ready; scalar_t__* ixj_signals; int /*<<< orphan*/  poll_q; int /*<<< orphan*/  read_q; int /*<<< orphan*/  frameswritten; scalar_t__ DSPbase; void** read_buffer; int /*<<< orphan*/  framesread; } ;
typedef  TYPE_1__ IXJ ;

/* Variables and functions */
 scalar_t__ G729 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  POLL_OUT ; 
 size_t SIG_READ_READY ; 
 TYPE_1__* FUNC2 (int) ; 
 void* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(IXJ *j)
{
	int cnt, dly;

	if (j->read_buffer) {
		for (cnt = 0; cnt < j->rec_frame_size * 2; cnt += 2) {
			if (!(cnt % 16) && !FUNC0(j)) {
				dly = 0;
				while (!FUNC0(j)) {
					if (dly++ > 5) {
						dly = 0;
						break;
					}
					FUNC6(10);
				}
			}
			/* Throw away word 0 of the 8021 compressed format to get standard G.729. */
			if (j->rec_codec == G729 && (cnt == 0 || cnt == 10 || cnt == 20)) {
				FUNC3(j->DSPbase + 0x0E);
				FUNC3(j->DSPbase + 0x0F);
			}
			*(j->read_buffer + cnt) = FUNC3(j->DSPbase + 0x0E);
			*(j->read_buffer + cnt + 1) = FUNC3(j->DSPbase + 0x0F);
		}
		++j->framesread;
		if (j->intercom != -1) {
			if (FUNC1(FUNC2(j->intercom))) {
				for (cnt = 0; cnt < j->rec_frame_size * 2; cnt += 2) {
					if (!(cnt % 16) && !FUNC1(j)) {
						dly = 0;
						while (!FUNC1(j)) {
							if (dly++ > 5) {
								dly = 0;
								break;
							}
							FUNC6(10);
						}
					}
					FUNC5(*(j->read_buffer + cnt), FUNC2(j->intercom)->DSPbase + 0x0C);
					FUNC5(*(j->read_buffer + cnt + 1), FUNC2(j->intercom)->DSPbase + 0x0D);
				}
				FUNC2(j->intercom)->frameswritten++;
			}
		} else {
			j->read_buffer_ready = 1;
			FUNC7(&j->read_q);	/* Wake any blocked readers */

			FUNC7(&j->poll_q);	/* Wake any blocked selects */

			if(j->ixj_signals[SIG_READ_READY])
				FUNC4(j, SIG_READ_READY, POLL_OUT);
		}
	}
}