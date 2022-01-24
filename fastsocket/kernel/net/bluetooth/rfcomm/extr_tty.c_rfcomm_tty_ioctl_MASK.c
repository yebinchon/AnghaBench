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
struct tty_struct {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int ENOIOCTLCMD ; 
#define  TCGETS 136 
#define  TCSETS 135 
#define  TIOCGICOUNT 134 
#define  TIOCGSERIAL 133 
#define  TIOCMIWAIT 132 
#define  TIOCSERCONFIG 131 
#define  TIOCSERGETLSR 130 
#define  TIOCSERGSTRUCT 129 
#define  TIOCSSERIAL 128 

__attribute__((used)) static int FUNC2(struct tty_struct *tty, struct file *filp, unsigned int cmd, unsigned long arg)
{
	FUNC0("tty %p cmd 0x%02x", tty, cmd);

	switch (cmd) {
	case TCGETS:
		FUNC0("TCGETS is not supported");
		return -ENOIOCTLCMD;

	case TCSETS:
		FUNC0("TCSETS is not supported");
		return -ENOIOCTLCMD;

	case TIOCMIWAIT:
		FUNC0("TIOCMIWAIT");
		break;

	case TIOCGICOUNT:
		FUNC0("TIOCGICOUNT");
		break;

	case TIOCGSERIAL:
		FUNC1("TIOCGSERIAL is not supported");
		return -ENOIOCTLCMD;

	case TIOCSSERIAL:
		FUNC1("TIOCSSERIAL is not supported");
		return -ENOIOCTLCMD;

	case TIOCSERGSTRUCT:
		FUNC1("TIOCSERGSTRUCT is not supported");
		return -ENOIOCTLCMD;

	case TIOCSERGETLSR:
		FUNC1("TIOCSERGETLSR is not supported");
		return -ENOIOCTLCMD;

	case TIOCSERCONFIG:
		FUNC1("TIOCSERCONFIG is not supported");
		return -ENOIOCTLCMD;

	default:
		return -ENOIOCTLCMD;	/* ioctls which we must ignore */

	}

	return -ENOIOCTLCMD;
}