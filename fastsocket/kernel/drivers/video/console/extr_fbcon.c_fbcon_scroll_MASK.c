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
struct vc_data {size_t vc_num; int vc_rows; int vc_cols; int vc_size_row; int /*<<< orphan*/  vc_video_erase_char; int /*<<< orphan*/  vc_origin; } ;
struct fb_info {int flags; } ;
struct display {int vrows; int /*<<< orphan*/  yscroll; int /*<<< orphan*/  scrollmode; } ;

/* Variables and functions */
 int /*<<< orphan*/  CM_ERASE ; 
 int EINVAL ; 
 int FBINFO_PARTIAL_PAN_OK ; 
 int FBINFO_READS_FAST ; 
#define  SCROLL_MOVE 134 
#define  SCROLL_PAN_MOVE 133 
#define  SCROLL_PAN_REDRAW 132 
#define  SCROLL_REDRAW 131 
#define  SCROLL_WRAP_MOVE 130 
#define  SM_DOWN 129 
#define  SM_UP 128 
 size_t* con2fb_map ; 
 struct display* fb_display ; 
 int /*<<< orphan*/  FUNC0 (struct vc_data*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct vc_data*,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct vc_data*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct vc_data*,struct fb_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct vc_data*,struct display*,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct vc_data*,struct fb_info*,struct display*,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct vc_data*,struct display*,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct vc_data*,int,int) ; 
 int /*<<< orphan*/  logo_shown ; 
 struct fb_info** registered_fb ; 
 int /*<<< orphan*/  FUNC8 (unsigned short*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  softback_top ; 
 int /*<<< orphan*/  FUNC9 (struct vc_data*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct vc_data*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct vc_data*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct vc_data*,int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct vc_data*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct vc_data*,int) ; 

__attribute__((used)) static int FUNC15(struct vc_data *vc, int t, int b, int dir,
			int count)
{
	struct fb_info *info = registered_fb[con2fb_map[vc->vc_num]];
	struct display *p = &fb_display[vc->vc_num];
	int scroll_partial = info->flags & FBINFO_PARTIAL_PAN_OK;

	if (FUNC3(vc, info))
		return -EINVAL;

	FUNC2(vc, CM_ERASE);

	/*
	 * ++Geert: Only use ywrap/ypan if the console is in text mode
	 * ++Andrew: Only use ypan on hardware text mode when scrolling the
	 *           whole screen (prevents flicker).
	 */

	switch (dir) {
	case SM_UP:
		if (count > vc->vc_rows)	/* Maximum realistic size */
			count = vc->vc_rows;
		if (softback_top)
			FUNC7(vc, t, count);
		if (logo_shown >= 0)
			goto redraw_up;
		switch (p->scrollmode) {
		case SCROLL_MOVE:
			FUNC5(vc, info, p, t, b - t - count,
				     count);
			FUNC1(vc, b - count, 0, count, vc->vc_cols);
			FUNC8((unsigned short *) (vc->vc_origin +
							vc->vc_size_row *
							(b - count)),
				    vc->vc_video_erase_char,
				    vc->vc_size_row * count);
			return 1;
			break;

		case SCROLL_WRAP_MOVE:
			if (b - t - count > 3 * vc->vc_rows >> 2) {
				if (t > 0)
					FUNC0(vc, 0, 0, count, 0, t,
						    vc->vc_cols);
				FUNC14(vc, count);
				if (vc->vc_rows - b > 0)
					FUNC0(vc, b - count, 0, b, 0,
						    vc->vc_rows - b,
						    vc->vc_cols);
			} else if (info->flags & FBINFO_READS_FAST)
				FUNC0(vc, t + count, 0, t, 0,
					    b - t - count, vc->vc_cols);
			else
				goto redraw_up;
			FUNC1(vc, b - count, 0, count, vc->vc_cols);
			break;

		case SCROLL_PAN_REDRAW:
			if ((p->yscroll + count <=
			     2 * (p->vrows - vc->vc_rows))
			    && ((!scroll_partial && (b - t == vc->vc_rows))
				|| (scroll_partial
				    && (b - t - count >
					3 * vc->vc_rows >> 2)))) {
				if (t > 0)
					FUNC6(vc, p, 0, t, count);
				FUNC12(vc, t, count);
				if (vc->vc_rows - b > 0)
					FUNC6(vc, p, b,
							  vc->vc_rows - b, b);
			} else
				FUNC6(vc, p, t + count, b - t - count, t);
			FUNC1(vc, b - count, 0, count, vc->vc_cols);
			break;

		case SCROLL_PAN_MOVE:
			if ((p->yscroll + count <=
			     2 * (p->vrows - vc->vc_rows))
			    && ((!scroll_partial && (b - t == vc->vc_rows))
				|| (scroll_partial
				    && (b - t - count >
					3 * vc->vc_rows >> 2)))) {
				if (t > 0)
					FUNC0(vc, 0, 0, count, 0, t,
						    vc->vc_cols);
				FUNC11(vc, count);
				if (vc->vc_rows - b > 0)
					FUNC0(vc, b - count, 0, b, 0,
						    vc->vc_rows - b,
						    vc->vc_cols);
			} else if (info->flags & FBINFO_READS_FAST)
				FUNC0(vc, t + count, 0, t, 0,
					    b - t - count, vc->vc_cols);
			else
				goto redraw_up;
			FUNC1(vc, b - count, 0, count, vc->vc_cols);
			break;

		case SCROLL_REDRAW:
		      redraw_up:
			FUNC4(vc, p, t, b - t - count,
				     count * vc->vc_cols);
			FUNC1(vc, b - count, 0, count, vc->vc_cols);
			FUNC8((unsigned short *) (vc->vc_origin +
							vc->vc_size_row *
							(b - count)),
				    vc->vc_video_erase_char,
				    vc->vc_size_row * count);
			return 1;
		}
		break;

	case SM_DOWN:
		if (count > vc->vc_rows)	/* Maximum realistic size */
			count = vc->vc_rows;
		if (logo_shown >= 0)
			goto redraw_down;
		switch (p->scrollmode) {
		case SCROLL_MOVE:
			FUNC5(vc, info, p, b - 1, b - t - count,
				     -count);
			FUNC1(vc, t, 0, count, vc->vc_cols);
			FUNC8((unsigned short *) (vc->vc_origin +
							vc->vc_size_row *
							t),
				    vc->vc_video_erase_char,
				    vc->vc_size_row * count);
			return 1;
			break;

		case SCROLL_WRAP_MOVE:
			if (b - t - count > 3 * vc->vc_rows >> 2) {
				if (vc->vc_rows - b > 0)
					FUNC0(vc, b, 0, b - count, 0,
						    vc->vc_rows - b,
						    vc->vc_cols);
				FUNC13(vc, count);
				if (t > 0)
					FUNC0(vc, count, 0, 0, 0, t,
						    vc->vc_cols);
			} else if (info->flags & FBINFO_READS_FAST)
				FUNC0(vc, t, 0, t + count, 0,
					    b - t - count, vc->vc_cols);
			else
				goto redraw_down;
			FUNC1(vc, t, 0, count, vc->vc_cols);
			break;

		case SCROLL_PAN_MOVE:
			if ((count - p->yscroll <= p->vrows - vc->vc_rows)
			    && ((!scroll_partial && (b - t == vc->vc_rows))
				|| (scroll_partial
				    && (b - t - count >
					3 * vc->vc_rows >> 2)))) {
				if (vc->vc_rows - b > 0)
					FUNC0(vc, b, 0, b - count, 0,
						    vc->vc_rows - b,
						    vc->vc_cols);
				FUNC9(vc, count);
				if (t > 0)
					FUNC0(vc, count, 0, 0, 0, t,
						    vc->vc_cols);
			} else if (info->flags & FBINFO_READS_FAST)
				FUNC0(vc, t, 0, t + count, 0,
					    b - t - count, vc->vc_cols);
			else
				goto redraw_down;
			FUNC1(vc, t, 0, count, vc->vc_cols);
			break;

		case SCROLL_PAN_REDRAW:
			if ((count - p->yscroll <= p->vrows - vc->vc_rows)
			    && ((!scroll_partial && (b - t == vc->vc_rows))
				|| (scroll_partial
				    && (b - t - count >
					3 * vc->vc_rows >> 2)))) {
				if (vc->vc_rows - b > 0)
					FUNC6(vc, p, b, vc->vc_rows - b,
							  b - count);
				FUNC10(vc, t, count);
				if (t > 0)
					FUNC6(vc, p, count, t, 0);
			} else
				FUNC6(vc, p, t, b - t - count, t + count);
			FUNC1(vc, t, 0, count, vc->vc_cols);
			break;

		case SCROLL_REDRAW:
		      redraw_down:
			FUNC4(vc, p, b - 1, b - t - count,
				     -count * vc->vc_cols);
			FUNC1(vc, t, 0, count, vc->vc_cols);
			FUNC8((unsigned short *) (vc->vc_origin +
							vc->vc_size_row *
							t),
				    vc->vc_video_erase_char,
				    vc->vc_size_row * count);
			return 1;
		}
	}
	return 0;
}