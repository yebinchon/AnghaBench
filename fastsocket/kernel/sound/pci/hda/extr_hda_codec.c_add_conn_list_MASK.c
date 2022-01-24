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
struct hda_conn_list {int len; int /*<<< orphan*/  list; int /*<<< orphan*/  conns; int /*<<< orphan*/  nid; } ;
struct hda_codec {int /*<<< orphan*/  conn_list; } ;
typedef  int /*<<< orphan*/  hda_nid_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct hda_conn_list* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static int FUNC3(struct hda_codec *codec, hda_nid_t nid, int len,
			 const hda_nid_t *list)
{
	struct hda_conn_list *p;

	p = FUNC0(sizeof(*p) + len * sizeof(hda_nid_t), GFP_KERNEL);
	if (!p)
		return -ENOMEM;
	p->len = len;
	p->nid = nid;
	FUNC2(p->conns, list, len * sizeof(hda_nid_t));
	FUNC1(&p->list, &codec->conn_list);
	return 0;
}