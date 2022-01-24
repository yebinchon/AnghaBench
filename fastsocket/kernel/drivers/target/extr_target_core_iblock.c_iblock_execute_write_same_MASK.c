#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct se_cmd {int t_task_lba; int t_data_nents; struct iblock_req* priv; TYPE_2__* se_dev; struct scatterlist* t_data_sg; } ;
struct scatterlist {int length; int /*<<< orphan*/  offset; } ;
struct iblock_req {int /*<<< orphan*/  pending; } ;
struct bio_list {int dummy; } ;
struct bio {int dummy; } ;
typedef  int /*<<< orphan*/  sense_reason_t ;
typedef  int sector_t ;
struct TYPE_3__ {int block_size; } ;
struct TYPE_4__ {TYPE_1__ dev_attrib; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IBLOCK_LBA_SHIFT ; 
 int /*<<< orphan*/  TCM_INVALID_CDB_FIELD ; 
 int /*<<< orphan*/  TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE ; 
 int /*<<< orphan*/  WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (struct bio*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bio_list*,struct bio*) ; 
 int /*<<< orphan*/  FUNC4 (struct bio_list*) ; 
 struct bio* FUNC5 (struct bio_list*) ; 
 int /*<<< orphan*/  FUNC6 (struct bio*) ; 
 struct bio* FUNC7 (struct se_cmd*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct bio_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct iblock_req*) ; 
 struct iblock_req* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,int,int) ; 
 int FUNC12 (struct se_cmd*) ; 
 int /*<<< orphan*/  FUNC13 (struct scatterlist*) ; 

__attribute__((used)) static sense_reason_t
FUNC14(struct se_cmd *cmd)
{
	struct iblock_req *ibr;
	struct scatterlist *sg;
	struct bio *bio;
	struct bio_list list;
	sector_t block_lba = cmd->t_task_lba;
	sector_t sectors = FUNC12(cmd);

	sg = &cmd->t_data_sg[0];

	if (cmd->t_data_nents > 1 ||
	    sg->length != cmd->se_dev->dev_attrib.block_size) {
		FUNC11("WRITE_SAME: Illegal SGL t_data_nents: %u length: %u"
			" block_size: %u\n", cmd->t_data_nents, sg->length,
			cmd->se_dev->dev_attrib.block_size);
		return TCM_INVALID_CDB_FIELD;
	}

	ibr = FUNC10(sizeof(struct iblock_req), GFP_KERNEL);
	if (!ibr)
		goto fail;
	cmd->priv = ibr;

	bio = FUNC7(cmd, block_lba, 1);
	if (!bio)
		goto fail_free_ibr;

	FUNC4(&list);
	FUNC3(&list, bio);

	FUNC1(&ibr->pending, 1);

	while (sectors) {
		while (FUNC2(bio, FUNC13(sg), sg->length, sg->offset)
				!= sg->length) {

			bio = FUNC7(cmd, block_lba, 1);
			if (!bio)
				goto fail_put_bios;

			FUNC0(&ibr->pending);
			FUNC3(&list, bio);
		}

		/* Always in 512 byte units for Linux/Block */
		block_lba += sg->length >> IBLOCK_LBA_SHIFT;
		sectors -= 1;
	}

	FUNC8(&list, WRITE);
	return 0;

fail_put_bios:
	while ((bio = FUNC5(&list)))
		FUNC6(bio);
fail_free_ibr:
	FUNC9(ibr);
fail:
	return TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE;
}