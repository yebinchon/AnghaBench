#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {struct se_device* lun_se_dev; } ;
struct se_portal_group {TYPE_3__ tpg_virt_lun0; } ;
struct se_device {TYPE_4__* transport; } ;
struct se_cmd {unsigned char* t_task_cdb; int /*<<< orphan*/  data_length; TYPE_2__* se_lun; struct se_device* se_dev; } ;
typedef  int /*<<< orphan*/  sense_reason_t ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_11__ {unsigned char page; int /*<<< orphan*/  (* emulate ) (struct se_cmd*,unsigned char*) ;} ;
struct TYPE_10__ {unsigned char (* get_device_type ) (struct se_device*) ;} ;
struct TYPE_8__ {TYPE_1__* lun_sep; } ;
struct TYPE_7__ {struct se_portal_group* sep_tpg; } ;

/* Variables and functions */
 int FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  GOOD ; 
 int SE_INQUIRY_BUF ; 
 int /*<<< orphan*/  TCM_INVALID_CDB_FIELD ; 
 TYPE_5__* evpd_handlers ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned char) ; 
 int /*<<< orphan*/  FUNC5 (struct se_cmd*,unsigned char*) ; 
 unsigned char FUNC6 (struct se_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct se_cmd*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC8 (struct se_cmd*,int /*<<< orphan*/ ) ; 
 unsigned char* FUNC9 (struct se_cmd*) ; 
 int /*<<< orphan*/  FUNC10 (struct se_cmd*) ; 
 int /*<<< orphan*/  u32 ; 

__attribute__((used)) static sense_reason_t
FUNC11(struct se_cmd *cmd)
{
	struct se_device *dev = cmd->se_dev;
	struct se_portal_group *tpg = cmd->se_lun->lun_sep->sep_tpg;
	unsigned char *rbuf;
	unsigned char *cdb = cmd->t_task_cdb;
	unsigned char buf[SE_INQUIRY_BUF];
	sense_reason_t ret;
	int p;

	FUNC2(buf, 0, SE_INQUIRY_BUF);

	if (dev == tpg->tpg_virt_lun0.lun_se_dev)
		buf[0] = 0x3f; /* Not connected */
	else
		buf[0] = dev->transport->get_device_type(dev);

	if (!(cdb[1] & 0x1)) {
		if (cdb[2]) {
			FUNC4("INQUIRY with EVPD==0 but PAGE CODE=%02x\n",
			       cdb[2]);
			ret = TCM_INVALID_CDB_FIELD;
			goto out;
		}

		ret = FUNC5(cmd, buf);
		goto out;
	}

	for (p = 0; p < FUNC0(evpd_handlers); ++p) {
		if (cdb[2] == evpd_handlers[p].page) {
			buf[1] = cdb[2];
			ret = evpd_handlers[p].emulate(cmd, buf);
			goto out;
		}
	}

	FUNC4("Unknown VPD Code: 0x%02x\n", cdb[2]);
	ret = TCM_INVALID_CDB_FIELD;

out:
	rbuf = FUNC9(cmd);
	if (rbuf) {
		FUNC1(rbuf, buf, FUNC3(u32, sizeof(buf), cmd->data_length));
		FUNC10(cmd);
	}

	if (!ret)
		FUNC8(cmd, GOOD);
	return ret;
}