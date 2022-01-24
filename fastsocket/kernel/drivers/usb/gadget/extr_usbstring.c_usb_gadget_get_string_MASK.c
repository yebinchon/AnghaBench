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
typedef  int u8 ;
struct usb_string {int id; int /*<<< orphan*/  s; } ;
struct usb_gadget_strings {int language; struct usb_string* strings; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int EINVAL ; 
 int USB_DT_STRING ; 
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

int
FUNC4 (struct usb_gadget_strings *table, int id, u8 *buf)
{
	struct usb_string	*s;
	int			len;

	/* descriptor 0 has the language id */
	if (id == 0) {
		buf [0] = 4;
		buf [1] = USB_DT_STRING;
		buf [2] = (u8) table->language;
		buf [3] = (u8) (table->language >> 8);
		return 4;
	}
	for (s = table->strings; s && s->s; s++)
		if (s->id == id)
			break;

	/* unrecognized: stall. */
	if (!s || !s->s)
		return -EINVAL;

	/* string descriptors have length, tag, then UTF16-LE text */
	len = FUNC1 ((size_t) 126, FUNC2 (s->s));
	FUNC0 (buf + 2, 0, 2 * len);	/* zero all the bytes */
	len = FUNC3(s->s, (__le16 *)&buf[2], len);
	if (len < 0)
		return -EINVAL;
	buf [0] = (len + 1) * 2;
	buf [1] = USB_DT_STRING;
	return buf [0];
}