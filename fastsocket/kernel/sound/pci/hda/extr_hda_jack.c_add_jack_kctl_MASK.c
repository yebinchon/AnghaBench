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
struct auto_pin_cfg {int dummy; } ;
typedef  int /*<<< orphan*/  name ;
typedef  int /*<<< orphan*/  hda_nid_t ;

/* Variables and functions */
 unsigned int AC_JACK_PORT_COMPLEX ; 
 unsigned int AC_JACK_PORT_NONE ; 
 int FUNC0 (struct hda_codec*,int /*<<< orphan*/ ,char*,int,int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 int FUNC2 (struct hda_codec*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hda_codec*,int /*<<< orphan*/ ,struct auto_pin_cfg const*,char*,int,int*) ; 
 int FUNC6 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,int) ; 
 int FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int) ; 

__attribute__((used)) static int FUNC10(struct hda_codec *codec, hda_nid_t nid,
			 const struct auto_pin_cfg *cfg,
			 const char *base_name)
{
	unsigned int def_conf, conn;
	char name[44];
	int idx, err;
	bool phantom_jack;

	if (!nid)
		return 0;
	def_conf = FUNC4(codec, nid);
	conn = FUNC1(def_conf);
	if (conn == AC_JACK_PORT_NONE)
		return 0;
	phantom_jack = (conn != AC_JACK_PORT_COMPLEX) ||
		       !FUNC3(codec, nid);

	if (base_name) {
		FUNC7(name, base_name, sizeof(name));
		idx = 0;
	} else
		FUNC5(codec, nid, cfg, name, sizeof(name), &idx);
	if (phantom_jack)
		/* Example final name: "Internal Mic Phantom Jack" */
		FUNC9(name, " Phantom", sizeof(name) - FUNC8(name) - 1);
	idx = FUNC2(codec, name, idx);
	err = FUNC0(codec, nid, name, idx, phantom_jack);
	if (err < 0)
		return err;

	if (!phantom_jack)
		return FUNC6(codec, nid, 0);
	return 0;
}