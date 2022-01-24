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
struct scp_msg {int /*<<< orphan*/  data; int /*<<< orphan*/  hdr; } ;
struct hda_codec {struct ca0132_spec* spec; } ;
struct ca0132_spec {unsigned int wait_scp_header; unsigned int wait_num_data; int wait_scp; int scp_resp_count; int /*<<< orphan*/ * scp_resp_data; int /*<<< orphan*/  scp_resp_header; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int FUNC0 (struct hda_codec*,unsigned int*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,unsigned int*,unsigned int*,unsigned int*,int /*<<< orphan*/ *,unsigned int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int*) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned long FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct hda_codec *codec,
				  unsigned char *send_buf,
				  unsigned int send_buf_size,
				  unsigned char *return_buf,
				  unsigned int return_buf_size,
				  unsigned int *bytes_returned)
{
	struct ca0132_spec *spec = codec->spec;
	int status = -1;
	unsigned int scp_send_size = 0;
	unsigned int total_size;
	bool waiting_for_resp = false;
	unsigned int header;
	struct scp_msg *ret_msg;
	unsigned int resp_src_id, resp_target_id;
	unsigned int data_size, src_id, target_id, get_flag, device_flag;

	if (bytes_returned)
		*bytes_returned = 0;

	/* get scp header from buffer */
	header = *((unsigned int *)send_buf);
	FUNC1(header, &target_id, &src_id, &get_flag, NULL,
			   &device_flag, NULL, NULL, &data_size);
	scp_send_size = data_size + 1;
	total_size = (scp_send_size * 4);

	if (send_buf_size < total_size)
		return -EINVAL;

	if (get_flag || device_flag) {
		if (!return_buf || return_buf_size < 4 || !bytes_returned)
			return -EINVAL;

		spec->wait_scp_header = *((unsigned int *)send_buf);

		/* swap source id with target id */
		resp_target_id = src_id;
		resp_src_id = target_id;
		spec->wait_scp_header &= 0xffff0000;
		spec->wait_scp_header |= (resp_src_id << 8) | (resp_target_id);
		spec->wait_num_data = return_buf_size/sizeof(unsigned int) - 1;
		spec->wait_scp = 1;
		waiting_for_resp = true;
	}

	status = FUNC0(codec, (unsigned int *)send_buf,
				      scp_send_size);
	if (status < 0) {
		spec->wait_scp = 0;
		return status;
	}

	if (waiting_for_resp) {
		unsigned long timeout = jiffies + FUNC4(1000);
		FUNC3(return_buf, 0, return_buf_size);
		do {
			FUNC5(20);
		} while (spec->wait_scp && FUNC6(jiffies, timeout));
		waiting_for_resp = false;
		if (!spec->wait_scp) {
			ret_msg = (struct scp_msg *)return_buf;
			FUNC2(&ret_msg->hdr, &spec->scp_resp_header, 4);
			FUNC2(&ret_msg->data, spec->scp_resp_data,
			       spec->wait_num_data);
			*bytes_returned = (spec->scp_resp_count + 1) * 4;
			status = 0;
		} else {
			status = -EIO;
		}
		spec->wait_scp = 0;
	}

	return status;
}