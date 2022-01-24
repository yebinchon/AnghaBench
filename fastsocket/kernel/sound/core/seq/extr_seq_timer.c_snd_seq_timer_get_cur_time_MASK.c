#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct TYPE_5__ {int tv_sec; scalar_t__ tv_usec; } ;
struct TYPE_6__ {int tv_nsec; int tv_sec; } ;
struct snd_seq_timer {TYPE_1__ last_update; scalar_t__ running; TYPE_2__ cur_time; } ;
typedef  TYPE_2__ snd_seq_real_time_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct timeval*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 

snd_seq_real_time_t FUNC2(struct snd_seq_timer *tmr)
{
	snd_seq_real_time_t cur_time;

	cur_time = tmr->cur_time;
	if (tmr->running) { 
		struct timeval tm;
		int usec;
		FUNC0(&tm);
		usec = (int)(tm.tv_usec - tmr->last_update.tv_usec);
		if (usec < 0) {
			cur_time.tv_nsec += (1000000 + usec) * 1000;
			cur_time.tv_sec += tm.tv_sec - tmr->last_update.tv_sec - 1;
		} else {
			cur_time.tv_nsec += usec * 1000;
			cur_time.tv_sec += tm.tv_sec - tmr->last_update.tv_sec;
		}
		FUNC1(&cur_time);
	}
                
	return cur_time;	
}