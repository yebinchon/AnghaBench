#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  windres_bfd ;
struct bin_dialogfont {struct bin_dialogfont* off; struct bin_dialogfont* id; struct bin_dialogfont* height; struct bin_dialogfont* width; struct bin_dialogfont* y; struct bin_dialogfont* x; struct bin_dialogfont* style; struct bin_dialogfont* exstyle; struct bin_dialogfont* help; int /*<<< orphan*/  charset; int /*<<< orphan*/  italic; struct bin_dialogfont* weight; struct bin_dialogfont* pointsize; struct bin_dialogfont* sig2; struct bin_dialogfont* sig1; } ;
struct bin_dialogexfont {struct bin_dialogexfont* off; struct bin_dialogexfont* id; struct bin_dialogexfont* height; struct bin_dialogexfont* width; struct bin_dialogexfont* y; struct bin_dialogexfont* x; struct bin_dialogexfont* style; struct bin_dialogexfont* exstyle; struct bin_dialogexfont* help; int /*<<< orphan*/  charset; int /*<<< orphan*/  italic; struct bin_dialogexfont* weight; struct bin_dialogexfont* pointsize; struct bin_dialogexfont* sig2; struct bin_dialogexfont* sig1; } ;
struct bin_dialogex_control {struct bin_dialogex_control* off; struct bin_dialogex_control* id; struct bin_dialogex_control* height; struct bin_dialogex_control* width; struct bin_dialogex_control* y; struct bin_dialogex_control* x; struct bin_dialogex_control* style; struct bin_dialogex_control* exstyle; struct bin_dialogex_control* help; int /*<<< orphan*/  charset; int /*<<< orphan*/  italic; struct bin_dialogex_control* weight; struct bin_dialogex_control* pointsize; struct bin_dialogex_control* sig2; struct bin_dialogex_control* sig1; } ;
struct bin_dialogex {struct bin_dialogex* off; struct bin_dialogex* id; struct bin_dialogex* height; struct bin_dialogex* width; struct bin_dialogex* y; struct bin_dialogex* x; struct bin_dialogex* style; struct bin_dialogex* exstyle; struct bin_dialogex* help; int /*<<< orphan*/  charset; int /*<<< orphan*/  italic; struct bin_dialogex* weight; struct bin_dialogex* pointsize; struct bin_dialogex* sig2; struct bin_dialogex* sig1; } ;
struct bin_dialog_control {struct bin_dialog_control* off; struct bin_dialog_control* id; struct bin_dialog_control* height; struct bin_dialog_control* width; struct bin_dialog_control* y; struct bin_dialog_control* x; struct bin_dialog_control* style; struct bin_dialog_control* exstyle; struct bin_dialog_control* help; int /*<<< orphan*/  charset; int /*<<< orphan*/  italic; struct bin_dialog_control* weight; struct bin_dialog_control* pointsize; struct bin_dialog_control* sig2; struct bin_dialog_control* sig1; } ;
struct bin_dialog {struct bin_dialog* off; struct bin_dialog* id; struct bin_dialog* height; struct bin_dialog* width; struct bin_dialog* y; struct bin_dialog* x; struct bin_dialog* style; struct bin_dialog* exstyle; struct bin_dialog* help; int /*<<< orphan*/  charset; int /*<<< orphan*/  italic; struct bin_dialog* weight; struct bin_dialog* pointsize; struct bin_dialog* sig2; struct bin_dialog* sig1; } ;
typedef  int rc_uint_type ;
struct TYPE_7__ {int style; int exstyle; int x; int y; int width; int height; int id; int help; int /*<<< orphan*/ * data; int /*<<< orphan*/  text; int /*<<< orphan*/  class; struct TYPE_7__* next; } ;
typedef  TYPE_2__ rc_dialog_control ;
struct TYPE_8__ {int style; int exstyle; int x; int y; int width; int height; int pointsize; TYPE_2__* controls; int /*<<< orphan*/  font; TYPE_1__* ex; int /*<<< orphan*/  caption; int /*<<< orphan*/  class; int /*<<< orphan*/  menu; } ;
typedef  TYPE_3__ rc_dialog ;
typedef  struct bin_dialogfont bfd_byte ;
struct TYPE_6__ {int help; int weight; int italic; int charset; } ;

/* Variables and functions */
 int BIN_DIALOGEXFONT_SIZE ; 
 int BIN_DIALOGEX_CONTROL_SIZE ; 
 int BIN_DIALOGEX_SIZE ; 
 int BIN_DIALOGFONT_SIZE ; 
 int BIN_DIALOG_CONTROL_SIZE ; 
 int BIN_DIALOG_SIZE ; 
 int DS_SETFONT ; 
 int FUNC0 (TYPE_3__ const*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct bin_dialogfont*,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct bin_dialogfont*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct bin_dialogfont*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static rc_uint_type
FUNC8 (windres_bfd *wrbfd, rc_uint_type off, const rc_dialog *dialog)
{
  rc_uint_type off_delta;
  rc_uint_type start, marker;
  int dialogex;
  int c;
  rc_dialog_control *dc;
  struct bin_dialogex bdx;
  struct bin_dialog bd;

  off_delta = off;
  start = off;
  dialogex = FUNC0 (dialog);

  if (wrbfd)
    {
  if (! dialogex)
    {
	  FUNC6 (wrbfd, bd.style, dialog->style);
	  FUNC6 (wrbfd, bd.exstyle, dialog->exstyle);
	  FUNC5 (wrbfd, bd.x, dialog->x);
	  FUNC5 (wrbfd, bd.y, dialog->y);
	  FUNC5 (wrbfd, bd.width, dialog->width);
	  FUNC5 (wrbfd, bd.height, dialog->height);
    }
  else
    {
	  FUNC5 (wrbfd, bdx.sig1, 1);
	  FUNC5 (wrbfd, bdx.sig2, 0xffff);
	  FUNC6 (wrbfd, bdx.help, (dialog->ex ? dialog->ex->help : 0));
	  FUNC6 (wrbfd, bdx.exstyle, dialog->exstyle);
	  FUNC6 (wrbfd, bdx.style, dialog->style);
	  FUNC5 (wrbfd, bdx.x, dialog->x);
	  FUNC5 (wrbfd, bdx.y, dialog->y);
	  FUNC5 (wrbfd, bdx.width, dialog->width);
	  FUNC5 (wrbfd, bdx.height, dialog->height);
	}
    }

  off += (dialogex != 0 ? BIN_DIALOGEX_SIZE : BIN_DIALOG_SIZE);

  off = FUNC2 (wrbfd, off, dialog->menu);
  off = FUNC2 (wrbfd, off, dialog->class);
  off = FUNC4 (wrbfd, off, dialog->caption);

  if ((dialog->style & DS_SETFONT) != 0)
    {
      if (wrbfd)
	{
	  if (! dialogex)
	    {
	      struct bin_dialogfont bdf;
	      FUNC5 (wrbfd, bdf.pointsize, dialog->pointsize);
	      FUNC3 (wrbfd, &bdf, off, BIN_DIALOGFONT_SIZE);
	    }
	  else
	    {
	      struct bin_dialogexfont bdxf;
	      FUNC5 (wrbfd, bdxf.pointsize, dialog->pointsize);
	      FUNC5 (wrbfd, bdxf.weight, (dialog->ex == NULL ? 0 : dialog->ex->weight));
	      FUNC7 (wrbfd, bdxf.italic, (dialog->ex == NULL ? 0 : dialog->ex->italic));
	      FUNC7 (wrbfd, bdxf.charset, (dialog->ex == NULL ? 1 : dialog->ex->charset));
	      FUNC3 (wrbfd, &bdxf, off, BIN_DIALOGEXFONT_SIZE);
	    }
	}
      off += (dialogex ? BIN_DIALOGEXFONT_SIZE : BIN_DIALOGFONT_SIZE);
      off = FUNC4 (wrbfd, off, dialog->font);
    }
  for (c = 0, dc = dialog->controls; dc != NULL; dc = dc->next, c++)
    {
      bfd_byte dc_rclen[2];

      off += (4 - ((off - off_delta) & 3)) & 3;
      if (wrbfd)
	{
      if (! dialogex)
	{
	      struct bin_dialog_control bdc;

	      FUNC6 (wrbfd, bdc.style, dc->style);
	      FUNC6 (wrbfd, bdc.exstyle, dc->exstyle);
	      FUNC5 (wrbfd, bdc.x, dc->x);
	      FUNC5 (wrbfd, bdc.y, dc->y);
	      FUNC5 (wrbfd, bdc.width, dc->width);
	      FUNC5 (wrbfd, bdc.height, dc->height);
	      FUNC5 (wrbfd, bdc.id, dc->id);
	      FUNC3 (wrbfd, &bdc, off, BIN_DIALOG_CONTROL_SIZE);
	}
      else
	{
	      struct bin_dialogex_control bdc;

	      FUNC6 (wrbfd, bdc.help, dc->help);
	      FUNC6 (wrbfd, bdc.exstyle, dc->exstyle);
	      FUNC6 (wrbfd, bdc.style, dc->style);
	      FUNC5 (wrbfd, bdc.x, dc->x);
	      FUNC5 (wrbfd, bdc.y, dc->y);
	      FUNC5 (wrbfd, bdc.width, dc->width);
	      FUNC5 (wrbfd, bdc.height, dc->height);
	      FUNC6 (wrbfd, bdc.id, dc->id);
	      FUNC3 (wrbfd, &bdc, off, BIN_DIALOGEX_CONTROL_SIZE);
	    }
	}      
      off += (dialogex != 0 ? BIN_DIALOGEX_CONTROL_SIZE : BIN_DIALOG_CONTROL_SIZE);

      off = FUNC2 (wrbfd, off, dc->class);
      off = FUNC2 (wrbfd, off, dc->text);

      marker = off; /* Save two bytes for size of optional data.  */
      off += 2;

      if (dc->data == NULL)
        {
	  if (wrbfd)
	    FUNC5 (wrbfd, dc_rclen, 0);
	}
      else
	{
	  rc_uint_type saved_off = off;
	  rc_uint_type old_off;
	  off += (4 - ((off - off_delta) & 3)) & 3;

	  old_off = off;
	  off = FUNC1 (wrbfd, off, dc->data);
	  if ((off - old_off) == 0)
	    old_off = off = saved_off;
	  if (wrbfd)
	    FUNC5 (wrbfd, dc_rclen, off - old_off);
	    }
      if (wrbfd)
	FUNC3 (wrbfd, dc_rclen, marker, 2);
	}

  if (wrbfd)
    {
      FUNC5 (wrbfd, (dialogex != 0 ? bdx.off : bd.off), c);
      if (! dialogex)
	FUNC3 (wrbfd, &bd, start, BIN_DIALOG_SIZE);
      else
	FUNC3 (wrbfd, &bdx, start, BIN_DIALOGEX_SIZE);
    }

  return off;
}