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
struct msm_adsp_module {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EAGAIN ; 
 int FUNC0 (struct msm_adsp_module*,unsigned int,void*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

int FUNC3(struct msm_adsp_module *module, unsigned dsp_queue_addr,
		   void *cmd_buf, size_t cmd_size)
{
	int rc, retries = 0;
	do {
		rc = FUNC0(module, dsp_queue_addr, cmd_buf, cmd_size);
		if (rc == -EAGAIN)
			FUNC2(10);
	} while(rc == -EAGAIN && retries++ < 100);
	if (retries > 50)
		FUNC1("adsp: %s command took %d attempts: rc %d\n",
				module->name, retries, rc);
	return rc;
}