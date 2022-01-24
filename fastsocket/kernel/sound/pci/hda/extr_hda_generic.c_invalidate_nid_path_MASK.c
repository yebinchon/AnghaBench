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
struct nid_path {int dummy; } ;
struct hda_codec {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nid_path*,int /*<<< orphan*/ ,int) ; 
 struct nid_path* FUNC1 (struct hda_codec*,int) ; 

__attribute__((used)) static void FUNC2(struct hda_codec *codec, int idx)
{
	struct nid_path *path = FUNC1(codec, idx);
	if (!path)
		return;
	FUNC0(path, 0, sizeof(*path));
}