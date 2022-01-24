#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int rc_uint_type ;
struct TYPE_10__ {int /*<<< orphan*/  id; } ;
struct TYPE_11__ {TYPE_1__ u; scalar_t__ named; } ;
typedef  TYPE_2__ rc_res_id ;
typedef  int /*<<< orphan*/  rc_rcdata_item ;
typedef  int /*<<< orphan*/  rc_dialog_ex ;
struct TYPE_12__ {int help; int /*<<< orphan*/ * data; TYPE_2__ text; } ;
typedef  TYPE_3__ rc_dialog_control ;

/* Variables and functions */
 int /*<<< orphan*/  CTL_STATIC ; 
 int SS_ICON ; 
 int WS_CHILD ; 
 int WS_VISIBLE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_3__* FUNC1 (TYPE_2__,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*) ; 

rc_dialog_control *
FUNC4 (rc_res_id iid, rc_uint_type id, rc_uint_type x,
		     rc_uint_type y, rc_uint_type style,
		     rc_uint_type exstyle, rc_uint_type help,
		     rc_rcdata_item *data, rc_dialog_ex *ex)
{
  rc_dialog_control *n;
  rc_res_id tid;
  rc_res_id cid;

  if (style == 0)
    style = SS_ICON | WS_CHILD | WS_VISIBLE;
  FUNC3 (&tid, "");
  cid.named = 0;
  cid.u.id = CTL_STATIC;
  n = FUNC1 (tid, id, x, y, 0, 0, cid, style, exstyle);
  n->text = iid;
  if (help && ! ex)
    FUNC2 (FUNC0("help ID requires DIALOGEX"));
  if (data && ! ex)
    FUNC2 (FUNC0("control data requires DIALOGEX"));
  n->help = help;
  n->data = data;

  return n;
}