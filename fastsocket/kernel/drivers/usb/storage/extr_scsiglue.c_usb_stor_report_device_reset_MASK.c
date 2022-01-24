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
struct us_data {int fflags; } ;
struct Scsi_Host {int max_id; } ;

/* Variables and functions */
 int US_FL_SCM_MULT_TARG ; 
 int /*<<< orphan*/  FUNC0 (struct Scsi_Host*,int /*<<< orphan*/ ,int) ; 
 struct Scsi_Host* FUNC1 (struct us_data*) ; 

void FUNC2(struct us_data *us)
{
	int i;
	struct Scsi_Host *host = FUNC1(us);

	FUNC0(host, 0, 0);
	if (us->fflags & US_FL_SCM_MULT_TARG) {
		for (i = 1; i < host->max_id; ++i)
			FUNC0(host, 0, i);
	}
}