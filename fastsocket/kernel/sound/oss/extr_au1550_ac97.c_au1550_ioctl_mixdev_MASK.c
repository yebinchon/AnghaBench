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
struct inode {int dummy; } ;
struct file {scalar_t__ private_data; } ;
struct au1550_state {struct ac97_codec* codec; } ;
struct ac97_codec {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ac97_codec*,unsigned int,unsigned long) ; 

__attribute__((used)) static int
FUNC1(struct inode *inode, struct file *file,
			       unsigned int cmd, unsigned long arg)
{
	struct au1550_state *s = (struct au1550_state *)file->private_data;
	struct ac97_codec *codec = s->codec;

	return FUNC0(codec, cmd, arg);
}