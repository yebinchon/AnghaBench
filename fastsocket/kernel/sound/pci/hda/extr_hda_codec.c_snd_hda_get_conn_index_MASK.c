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
struct hda_codec {int dummy; } ;
typedef  int /*<<< orphan*/  const hda_nid_t ;

/* Variables and functions */
 unsigned int AC_WID_AUD_OUT ; 
 unsigned int AC_WID_PIN ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*,int /*<<< orphan*/  const) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct hda_codec*,int /*<<< orphan*/  const,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/  const) ; 

int FUNC4(struct hda_codec *codec, hda_nid_t mux,
			   hda_nid_t nid, int recursive)
{
	const hda_nid_t *conn;
	int i, nums;

	nums = FUNC2(codec, mux, &conn);
	for (i = 0; i < nums; i++)
		if (conn[i] == nid)
			return i;
	if (!recursive)
		return -1;
	if (recursive > 10) {
		FUNC3("hda_codec: too deep connection for 0x%x\n", nid);
		return -1;
	}
	recursive++;
	for (i = 0; i < nums; i++) {
		unsigned int type = FUNC1(FUNC0(codec, conn[i]));
		if (type == AC_WID_PIN || type == AC_WID_AUD_OUT)
			continue;
		if (FUNC4(codec, conn[i], nid, recursive) >= 0)
			return i;
	}
	return -1;
}