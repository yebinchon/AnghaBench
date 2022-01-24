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
struct snd_info_buffer {int dummy; } ;
struct hda_codec {int dummy; } ;
typedef  int /*<<< orphan*/  hda_nid_t ;

/* Variables and functions */
 int /*<<< orphan*/  AC_VERB_GET_CONNECT_SEL ; 
 unsigned int AC_WID_AUD_MIX ; 
 unsigned int AC_WID_POWER ; 
 unsigned int AC_WID_VOL_KNB ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_info_buffer*,char*,...) ; 

__attribute__((used)) static void FUNC4(struct snd_info_buffer *buffer,
			    struct hda_codec *codec, hda_nid_t nid,
			    unsigned int wid_type, hda_nid_t *conn,
			    int conn_len)
{
	int c, curr = -1;
	const hda_nid_t *list;
	int cache_len;

	if (conn_len > 1 &&
	    wid_type != AC_WID_AUD_MIX &&
	    wid_type != AC_WID_VOL_KNB &&
	    wid_type != AC_WID_POWER)
		curr = FUNC1(codec, nid, 0,
					  AC_VERB_GET_CONNECT_SEL, 0);
	FUNC3(buffer, "  Connection: %d\n", conn_len);
	if (conn_len > 0) {
		FUNC3(buffer, "    ");
		for (c = 0; c < conn_len; c++) {
			FUNC3(buffer, " 0x%02x", conn[c]);
			if (c == curr)
				FUNC3(buffer, "*");
		}
		FUNC3(buffer, "\n");
	}

	/* Get Cache connections info */
	cache_len = FUNC2(codec, nid, &list);
	if (cache_len != conn_len
			|| FUNC0(list, conn, conn_len)) {
		FUNC3(buffer, "  In-driver Connection: %d\n", cache_len);
		if (cache_len > 0) {
			FUNC3(buffer, "    ");
			for (c = 0; c < cache_len; c++)
				FUNC3(buffer, " 0x%02x", list[c]);
			FUNC3(buffer, "\n");
		}
	}
}