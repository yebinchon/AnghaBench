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
typedef  int /*<<< orphan*/  hda_nid_t ;

/* Variables and functions */
 int AC_JACK_PORT_BOTH ; 
 scalar_t__ AC_JACK_PORT_NONE ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 unsigned char FUNC2 (unsigned int) ; 
 unsigned int FUNC3 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hda_codec*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC5(struct hda_codec *codec, hda_nid_t nid)
{
	unsigned int def_conf;
	unsigned char seqassoc;

	def_conf = FUNC3(codec, nid);
	seqassoc = (unsigned char) FUNC0(def_conf);
	seqassoc = (seqassoc << 4) | FUNC2(def_conf);
	if (FUNC1(def_conf) == AC_JACK_PORT_NONE
	    && (seqassoc == 0xf0 || seqassoc == 0xff)) {
		def_conf = def_conf & (~(AC_JACK_PORT_BOTH << 30));
		FUNC4(codec, nid, def_conf);
	}

	return;
}