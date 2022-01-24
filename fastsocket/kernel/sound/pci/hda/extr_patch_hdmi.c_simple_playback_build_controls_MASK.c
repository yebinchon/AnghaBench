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
struct hdmi_spec_per_cvt {int /*<<< orphan*/  cvt_nid; } ;
struct hdmi_spec {int dummy; } ;
struct hda_codec {struct hdmi_spec* spec; } ;

/* Variables and functions */
 struct hdmi_spec_per_cvt* FUNC0 (struct hdmi_spec*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct hda_codec *codec)
{
	struct hdmi_spec *spec = codec->spec;
	struct hdmi_spec_per_cvt *per_cvt;
	int err;

	per_cvt = FUNC0(spec, 0);
	err = FUNC2(codec, per_cvt->cvt_nid,
					    per_cvt->cvt_nid);
	if (err < 0)
		return err;
	return FUNC1(codec, 0);
}