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
struct snd_info_entry {struct hda_codec* private_data; } ;
struct snd_info_buffer {int dummy; } ;
struct hda_codec {unsigned int addr; unsigned int afg; unsigned int mfg; unsigned int vendor_id; unsigned int subsystem_id; unsigned int revision_id; int /*<<< orphan*/  (* proc_widget_hook ) (struct snd_info_buffer*,struct hda_codec*,unsigned int) ;scalar_t__ pin_amp_workaround; scalar_t__ single_adc_amp; int /*<<< orphan*/  nids; int /*<<< orphan*/  mixers; int /*<<< orphan*/  mfg_unsol; int /*<<< orphan*/  mfg_function_id; int /*<<< orphan*/  afg_unsol; int /*<<< orphan*/  afg_function_id; scalar_t__ chip_name; scalar_t__ vendor_name; } ;
typedef  unsigned int hda_nid_t ;

/* Variables and functions */
 int /*<<< orphan*/  AC_PAR_AUDIO_WIDGET_CAP ; 
 unsigned int AC_WCAP_CONN_LIST ; 
 unsigned int AC_WCAP_CP_CAPS ; 
 unsigned int AC_WCAP_DELAY ; 
 unsigned int AC_WCAP_DELAY_SHIFT ; 
 unsigned int AC_WCAP_DIGITAL ; 
 unsigned int AC_WCAP_FORMAT_OVRD ; 
 unsigned int AC_WCAP_IN_AMP ; 
 unsigned int AC_WCAP_LR_SWAP ; 
 unsigned int AC_WCAP_OUT_AMP ; 
 unsigned int AC_WCAP_POWER ; 
 unsigned int AC_WCAP_PROC_WID ; 
 unsigned int AC_WCAP_STEREO ; 
 unsigned int AC_WCAP_STRIPE ; 
 unsigned int AC_WCAP_UNSOL_CAP ; 
#define  AC_WID_AUD_IN 131 
#define  AC_WID_AUD_OUT 130 
#define  AC_WID_PIN 129 
#define  AC_WID_VOL_KNB 128 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HDA_INPUT ; 
 int /*<<< orphan*/  HDA_OUTPUT ; 
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int*) ; 
 unsigned int* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_info_buffer*,struct hda_codec*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_info_buffer*,struct hda_codec*,unsigned int,int /*<<< orphan*/ ,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_info_buffer*,struct hda_codec*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_info_buffer*,struct hda_codec*,unsigned int,unsigned int,unsigned int*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_info_buffer*,struct hda_codec*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (struct snd_info_buffer*,struct hda_codec*,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (struct snd_info_buffer*,struct hda_codec*,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct snd_info_buffer*,struct hda_codec*,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (struct snd_info_buffer*,struct hda_codec*,unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (struct snd_info_buffer*,struct hda_codec*,unsigned int,int*) ; 
 int /*<<< orphan*/  FUNC15 (struct snd_info_buffer*,struct hda_codec*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC16 (struct snd_info_buffer*,struct hda_codec*,unsigned int) ; 
 int /*<<< orphan*/  FUNC17 (struct snd_info_buffer*,struct hda_codec*,unsigned int) ; 
 int /*<<< orphan*/  FUNC18 (struct snd_info_buffer*,struct hda_codec*,unsigned int) ; 
 int /*<<< orphan*/  FUNC19 (struct snd_info_buffer*,struct hda_codec*,unsigned int) ; 
 int FUNC20 (struct hda_codec*,unsigned int) ; 
 scalar_t__ FUNC21 (struct hda_codec*,unsigned int,unsigned int*,int) ; 
 int FUNC22 (struct hda_codec*,unsigned int,unsigned int*) ; 
 unsigned int FUNC23 (struct hda_codec*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC25 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC26 (struct snd_info_buffer*,char*,...) ; 
 int /*<<< orphan*/  FUNC27 (struct snd_info_buffer*,struct hda_codec*,unsigned int) ; 
 int /*<<< orphan*/  FUNC28 (struct snd_info_buffer*,struct hda_codec*,unsigned int) ; 

__attribute__((used)) static void FUNC29(struct snd_info_entry *entry,
			     struct snd_info_buffer *buffer)
{
	struct hda_codec *codec = entry->private_data;
	hda_nid_t nid;
	int i, nodes;

	FUNC26(buffer, "Codec: ");
	if (codec->vendor_name && codec->chip_name)
		FUNC26(buffer, "%s %s\n",
			    codec->vendor_name, codec->chip_name);
	else
		FUNC26(buffer, "Not Set\n");
	FUNC26(buffer, "Address: %d\n", codec->addr);
	if (codec->afg)
		FUNC26(buffer, "AFG Function Id: 0x%x (unsol %u)\n",
			codec->afg_function_id, codec->afg_unsol);
	if (codec->mfg)
		FUNC26(buffer, "MFG Function Id: 0x%x (unsol %u)\n",
			codec->mfg_function_id, codec->mfg_unsol);
	FUNC26(buffer, "Vendor Id: 0x%08x\n", codec->vendor_id);
	FUNC26(buffer, "Subsystem Id: 0x%08x\n", codec->subsystem_id);
	FUNC26(buffer, "Revision Id: 0x%x\n", codec->revision_id);

	if (codec->mfg)
		FUNC26(buffer, "Modem Function Group: 0x%x\n", codec->mfg);
	else
		FUNC26(buffer, "No Modem Function Group found\n");

	if (! codec->afg)
		return;
	FUNC25(codec);
	FUNC26(buffer, "Default PCM:\n");
	FUNC13(buffer, codec, codec->afg);
	FUNC26(buffer, "Default Amp-In caps: ");
	FUNC5(buffer, codec, codec->afg, HDA_INPUT);
	FUNC26(buffer, "Default Amp-Out caps: ");
	FUNC5(buffer, codec, codec->afg, HDA_OUTPUT);
	FUNC26(buffer, "State of AFG node 0x%02x:\n", codec->afg);
	FUNC16(buffer, codec, codec->afg);

	nodes = FUNC22(codec, codec->afg, &nid);
	if (! nid || nodes < 0) {
		FUNC26(buffer, "Invalid AFG subtree\n");
		FUNC24(codec);
		return;
	}

	FUNC10(buffer, codec, codec->afg);
	if (codec->proc_widget_hook)
		codec->proc_widget_hook(buffer, codec, codec->afg);

	for (i = 0; i < nodes; i++, nid++) {
		unsigned int wid_caps =
			FUNC23(codec, nid,
					   AC_PAR_AUDIO_WIDGET_CAP);
		unsigned int wid_type = FUNC1(wid_caps);
		hda_nid_t *conn = NULL;
		int conn_len = 0;

		FUNC26(buffer, "Node 0x%02x [%s] wcaps 0x%x:", nid,
			    FUNC2(wid_type), wid_caps);
		if (wid_caps & AC_WCAP_STEREO) {
			unsigned int chans = FUNC0(wid_caps);
			if (chans == 2)
				FUNC26(buffer, " Stereo");
			else
				FUNC26(buffer, " %d-Channels", chans);
		} else
			FUNC26(buffer, " Mono");
		if (wid_caps & AC_WCAP_DIGITAL)
			FUNC26(buffer, " Digital");
		if (wid_caps & AC_WCAP_IN_AMP)
			FUNC26(buffer, " Amp-In");
		if (wid_caps & AC_WCAP_OUT_AMP)
			FUNC26(buffer, " Amp-Out");
		if (wid_caps & AC_WCAP_STRIPE)
			FUNC26(buffer, " Stripe");
		if (wid_caps & AC_WCAP_LR_SWAP)
			FUNC26(buffer, " R/L");
		if (wid_caps & AC_WCAP_CP_CAPS)
			FUNC26(buffer, " CP");
		FUNC26(buffer, "\n");

		FUNC11(buffer, codec, nid, &codec->mixers);
		FUNC11(buffer, codec, nid, &codec->nids);
		FUNC12(buffer, codec, nid);

		/* volume knob is a special widget that always have connection
		 * list
		 */
		if (wid_type == AC_WID_VOL_KNB)
			wid_caps |= AC_WCAP_CONN_LIST;

		if (wid_caps & AC_WCAP_CONN_LIST) {
			conn_len = FUNC20(codec, nid);
			if (conn_len > 0) {
				conn = FUNC4(sizeof(hda_nid_t) * conn_len,
					       GFP_KERNEL);
				if (!conn)
					return;
				if (FUNC21(codec, nid, conn,
								conn_len) < 0)
					conn_len = 0;
			}
		}

		if (wid_caps & AC_WCAP_IN_AMP) {
			FUNC26(buffer, "  Amp-In caps: ");
			FUNC5(buffer, codec, nid, HDA_INPUT);
			FUNC26(buffer, "  Amp-In vals: ");
			if (wid_type == AC_WID_PIN ||
			    (codec->single_adc_amp &&
			     wid_type == AC_WID_AUD_IN))
				FUNC6(buffer, codec, nid, HDA_INPUT,
					       wid_caps & AC_WCAP_STEREO,
					       1);
			else
				FUNC6(buffer, codec, nid, HDA_INPUT,
					       wid_caps & AC_WCAP_STEREO,
					       conn_len);
		}
		if (wid_caps & AC_WCAP_OUT_AMP) {
			FUNC26(buffer, "  Amp-Out caps: ");
			FUNC5(buffer, codec, nid, HDA_OUTPUT);
			FUNC26(buffer, "  Amp-Out vals: ");
			if (wid_type == AC_WID_PIN &&
			    codec->pin_amp_workaround)
				FUNC6(buffer, codec, nid, HDA_OUTPUT,
					       wid_caps & AC_WCAP_STEREO,
					       conn_len);
			else
				FUNC6(buffer, codec, nid, HDA_OUTPUT,
					       wid_caps & AC_WCAP_STEREO, 1);
		}

		switch (wid_type) {
		case AC_WID_PIN: {
			int supports_vref;
			FUNC14(buffer, codec, nid, &supports_vref);
			FUNC15(buffer, codec, nid, supports_vref);
			break;
		}
		case AC_WID_VOL_KNB:
			FUNC19(buffer, codec, nid);
			break;
		case AC_WID_AUD_OUT:
		case AC_WID_AUD_IN:
			FUNC7(buffer, codec, nid, wid_type);
			if (wid_caps & AC_WCAP_DIGITAL)
				FUNC9(buffer, codec, nid);
			if (wid_caps & AC_WCAP_FORMAT_OVRD) {
				FUNC26(buffer, "  PCM:\n");
				FUNC13(buffer, codec, nid);
			}
			break;
		}

		if (wid_caps & AC_WCAP_UNSOL_CAP)
			FUNC18(buffer, codec, nid);

		if (wid_caps & AC_WCAP_POWER)
			FUNC16(buffer, codec, nid);

		if (wid_caps & AC_WCAP_DELAY)
			FUNC26(buffer, "  Delay: %d samples\n",
				    (wid_caps & AC_WCAP_DELAY) >>
				    AC_WCAP_DELAY_SHIFT);

		if (wid_caps & AC_WCAP_CONN_LIST)
			FUNC8(buffer, codec, nid, wid_type,
					conn, conn_len);

		if (wid_caps & AC_WCAP_PROC_WID)
			FUNC17(buffer, codec, nid);

		if (codec->proc_widget_hook)
			codec->proc_widget_hook(buffer, codec, nid);

		FUNC3(conn);
	}
	FUNC24(codec);
}