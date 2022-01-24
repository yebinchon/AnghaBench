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
 unsigned int AC_DIG1_COPYRIGHT ; 
 unsigned int AC_DIG1_EMPHASIS ; 
 unsigned int AC_DIG1_ENABLE ; 
 unsigned int AC_DIG1_LEVEL ; 
 unsigned int AC_DIG1_NONAUDIO ; 
 unsigned int AC_DIG1_PROFESSIONAL ; 
 unsigned int AC_DIG1_V ; 
 unsigned int AC_DIG1_VCFG ; 
 unsigned char AC_DIG2_CC ; 
 unsigned char AC_DIG3_ICT ; 
 unsigned char AC_DIG3_KAE ; 
 int /*<<< orphan*/  AC_VERB_GET_DIGI_CONVERT_1 ; 
 unsigned int FUNC0 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_info_buffer*,char*,...) ; 

__attribute__((used)) static void FUNC2(struct snd_info_buffer *buffer,
			       struct hda_codec *codec, hda_nid_t nid)
{
	unsigned int digi1 = FUNC0(codec, nid, 0,
						AC_VERB_GET_DIGI_CONVERT_1, 0);
	unsigned char digi2 = digi1 >> 8;
	unsigned char digi3 = digi1 >> 16;

	FUNC1(buffer, "  Digital:");
	if (digi1 & AC_DIG1_ENABLE)
		FUNC1(buffer, " Enabled");
	if (digi1 & AC_DIG1_V)
		FUNC1(buffer, " Validity");
	if (digi1 & AC_DIG1_VCFG)
		FUNC1(buffer, " ValidityCfg");
	if (digi1 & AC_DIG1_EMPHASIS)
		FUNC1(buffer, " Preemphasis");
	if (digi1 & AC_DIG1_COPYRIGHT)
		FUNC1(buffer, " Non-Copyright");
	if (digi1 & AC_DIG1_NONAUDIO)
		FUNC1(buffer, " Non-Audio");
	if (digi1 & AC_DIG1_PROFESSIONAL)
		FUNC1(buffer, " Pro");
	if (digi1 & AC_DIG1_LEVEL)
		FUNC1(buffer, " GenLevel");
	if (digi3 & AC_DIG3_KAE)
		FUNC1(buffer, " KAE");
	FUNC1(buffer, "\n");
	FUNC1(buffer, "  Digital category: 0x%x\n",
		    digi2 & AC_DIG2_CC);
	FUNC1(buffer, "  IEC Coding Type: 0x%x\n",
			digi3 & AC_DIG3_ICT);
}