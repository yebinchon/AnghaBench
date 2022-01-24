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
typedef  int /*<<< orphan*/  uint8_t ;
struct carlfw_file {unsigned long len; int /*<<< orphan*/ * data; scalar_t__ name; } ;
struct carlfw {struct carlfw_file fw; struct carlfw_file hdr; int /*<<< orphan*/  desc_list; } ;
struct carl9170fw_otus_desc {int dummy; } ;
struct carl9170fw_last_desc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CARL9170FW_LAST_DESC_CUR_VER ; 
 int /*<<< orphan*/  CARL9170FW_OTUS_DESC_CUR_VER ; 
 int ENODATA ; 
 int ENOMEM ; 
 struct carlfw* FUNC0 (int) ; 
 scalar_t__ LAST_MAGIC ; 
 scalar_t__ OTUS_MAGIC ; 
 void* FUNC1 (struct carlfw_file*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct carlfw_file*,char const*,char*) ; 
 struct carlfw* FUNC3 (int,int) ; 
 int FUNC4 (struct carlfw*) ; 
 int FUNC5 (struct carlfw*,struct carl9170fw_otus_desc*) ; 
 int /*<<< orphan*/  FUNC6 (struct carlfw*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

struct carlfw *FUNC10(const char *basename)
{
	char filename[256];
	struct carlfw *fw;
	struct carl9170fw_otus_desc *otus_desc;
	struct carl9170fw_last_desc *last_desc;
	struct carlfw_file *hdr_file;
	unsigned long fin, diff, off, rem;
	int err;

	fw = FUNC3(1, sizeof(*fw));
	if (!fw)
		return FUNC0(-ENOMEM);

	FUNC7(&fw->desc_list);

	err = FUNC2(&fw->fw, basename, "r");
	if (err)
		goto err_out;

	if (fw->hdr.name)
		hdr_file = &fw->hdr;
	else
		hdr_file = &fw->fw;

	otus_desc = FUNC1(hdr_file, (uint8_t *) OTUS_MAGIC,
				       sizeof(*otus_desc),
				       CARL9170FW_OTUS_DESC_CUR_VER);
	last_desc = FUNC1(hdr_file, (uint8_t *) LAST_MAGIC,
				       sizeof(*last_desc),
				       CARL9170FW_LAST_DESC_CUR_VER);

	if (!otus_desc || !last_desc ||
	    (unsigned long) otus_desc > (unsigned long) last_desc) {
		err = -ENODATA;
		goto err_out;
	}

	err = FUNC5(fw, otus_desc);
	if (err)
		goto err_out;

	fin = (unsigned long)last_desc + sizeof(*last_desc);
	diff = fin - (unsigned long)otus_desc;
	rem = hdr_file->len - (fin - (unsigned long) hdr_file->data);

	if (rem) {
		off = (unsigned long)otus_desc - (unsigned long)hdr_file->data;
		FUNC8(&hdr_file->data[off],
			((uint8_t *)last_desc) + sizeof(*last_desc), rem);
	}

	hdr_file->len -= diff;
	hdr_file->data = FUNC9(hdr_file->data, hdr_file->len);
	if (!hdr_file->data && hdr_file->len) {
		err = -ENOMEM;
		goto err_out;
	}

	err = FUNC4(fw);
	if (err && err != -ENODATA)
		goto err_out;

	return fw;

err_out:
	FUNC6(fw);
	return FUNC0(err);
}