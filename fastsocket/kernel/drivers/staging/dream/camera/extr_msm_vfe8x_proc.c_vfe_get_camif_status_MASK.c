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
struct vfe_msg_camif_status {int /*<<< orphan*/  pixelCount; int /*<<< orphan*/  lineCount; scalar_t__ camifHalt; scalar_t__ camifState; } ;
struct vfe_irq_thread_msg {int /*<<< orphan*/  camifStatus; } ;
struct vfe_camif_stats {int /*<<< orphan*/  pixelCount; int /*<<< orphan*/  lineCount; scalar_t__ camifHalt; scalar_t__ camifState; } ;
typedef  int /*<<< orphan*/  rc ;
typedef  int /*<<< orphan*/  camifStatusTemp ;
typedef  scalar_t__ boolean ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vfe_msg_camif_status*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct vfe_msg_camif_status
FUNC1(struct vfe_irq_thread_msg *in)
{
	struct vfe_camif_stats camifStatusTemp;
	struct vfe_msg_camif_status rc;

	FUNC0(&rc, 0, sizeof(rc));
	FUNC0(&camifStatusTemp, 0, sizeof(camifStatusTemp));

	camifStatusTemp =
		*((struct vfe_camif_stats *)(&(in->camifStatus)));

	rc.camifState = (boolean)camifStatusTemp.camifHalt;
	rc.lineCount  = camifStatusTemp.lineCount;
	rc.pixelCount = camifStatusTemp.pixelCount;

	return rc;
}