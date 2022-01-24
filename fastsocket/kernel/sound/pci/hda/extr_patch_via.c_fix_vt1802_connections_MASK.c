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
typedef  int hda_nid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,int,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void FUNC2(struct hda_codec *codec)
{
	static hda_nid_t conn_24[] = { 0x14, 0x1c };
	static hda_nid_t conn_33[] = { 0x1c };

	FUNC1(codec, 0x24, FUNC0(conn_24), conn_24);
	FUNC1(codec, 0x33, FUNC0(conn_33), conn_33);
}