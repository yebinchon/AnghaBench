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
struct tty_struct {struct smd_tty_info* driver_data; } ;
struct smd_tty_info {int /*<<< orphan*/  ch; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,unsigned char const*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct tty_struct *tty, const unsigned char *buf, int len)
{
	struct smd_tty_info *info = tty->driver_data;
	int avail;

	/* if we're writing to a packet channel we will
	** never be able to write more data than there
	** is currently space for
	*/
	avail = FUNC1(info->ch);
	if (len > avail)
		len = avail;

	return FUNC0(info->ch, buf, len);
}