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
struct sep_device {int dummy; } ;
struct inode {int dummy; } ;
struct file {struct sep_device* private_data; } ;

/* Variables and functions */
 int ENOTTY ; 
#define  SEP_IOCADDFLOWMESSAGE 145 
#define  SEP_IOCADDFLOWTABLE 144 
#define  SEP_IOCALLOCDATAPOLL 143 
#define  SEP_IOCCREATEFLOWDMATABLE 142 
#define  SEP_IOCCREATESYMDMATABLE 141 
#define  SEP_IOCENDTRANSACTION 140 
#define  SEP_IOCFREEDMATABLEDATA 139 
#define  SEP_IOCGETIME 138 
#define  SEP_IOCGETMAPPEDADDROFFSET 137 
#define  SEP_IOCGETSTATICPOOLADDR 136 
#define  SEP_IOCREADDATAPOLL 135 
#define  SEP_IOCREALLOCCACHERES 134 
#define  SEP_IOCSENDSEPCOMMAND 133 
#define  SEP_IOCSENDSEPRPLYCOMMAND 132 
#define  SEP_IOCSEPINIT 131 
#define  SEP_IOCSEPSTART 130 
#define  SEP_IOCSETFLOWID 129 
#define  SEP_IOCWRITEDATAPOLL 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 (struct sep_device*,unsigned long) ; 
 int FUNC3 (struct sep_device*,unsigned long) ; 
 int FUNC4 (struct sep_device*,unsigned long) ; 
 int FUNC5 (struct sep_device*,unsigned long) ; 
 int FUNC6 (struct sep_device*,unsigned long) ; 
 int FUNC7 (struct sep_device*,unsigned long) ; 
 int FUNC8 (struct sep_device*) ; 
 int FUNC9 (struct sep_device*,unsigned long) ; 
 int FUNC10 (struct sep_device*,unsigned long) ; 
 int FUNC11 (struct sep_device*,unsigned long) ; 
 int FUNC12 (struct sep_device*,unsigned long) ; 
 int FUNC13 (struct sep_device*,unsigned long) ; 
 int FUNC14 (struct sep_device*,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (struct sep_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct sep_device*) ; 
 int FUNC17 (struct sep_device*,unsigned long) ; 
 int FUNC18 (struct sep_device*) ; 
 int FUNC19 (struct sep_device*,unsigned long) ; 

__attribute__((used)) static int FUNC20(struct inode *inode, struct file *filp, unsigned int cmd, unsigned long arg)
{
	int error = 0;
	struct sep_device *sep = filp->private_data;

	FUNC0("------------>SEP Driver: ioctl start\n");

	FUNC1("SEP Driver: cmd is %x\n", cmd);

	switch (cmd) {
	case SEP_IOCSENDSEPCOMMAND:
		/* send command to SEP */
		FUNC15(sep);
		FUNC1("SEP Driver: after sep_send_command_handler\n");
		break;
	case SEP_IOCSENDSEPRPLYCOMMAND:
		/* send reply command to SEP */
		FUNC16(sep);
		break;
	case SEP_IOCALLOCDATAPOLL:
		/* allocate data pool */
		error = FUNC4(sep, arg);
		break;
	case SEP_IOCWRITEDATAPOLL:
		/* write data into memory pool */
		error = FUNC19(sep, arg);
		break;
	case SEP_IOCREADDATAPOLL:
		/* read data from data pool into application memory */
		error = FUNC13(sep, arg);
		break;
	case SEP_IOCCREATESYMDMATABLE:
		/* create dma table for synhronic operation */
		error = FUNC6(sep, arg);
		break;
	case SEP_IOCCREATEFLOWDMATABLE:
		/* create flow dma tables */
		error = FUNC5(sep, arg);
		break;
	case SEP_IOCFREEDMATABLEDATA:
		/* free the pages */
		error = FUNC8(sep);
		break;
	case SEP_IOCSETFLOWID:
		/* set flow id */
		error = FUNC17(sep, (unsigned long)arg);
		break;
	case SEP_IOCADDFLOWTABLE:
		/* add tables to the dynamic flow */
		error = FUNC2(sep, arg);
		break;
	case SEP_IOCADDFLOWMESSAGE:
		/* add message of add tables to flow */
		error = FUNC3(sep, arg);
		break;
	case SEP_IOCSEPSTART:
		/* start command to sep */
		error = FUNC18(sep);
		break;
	case SEP_IOCSEPINIT:
		/* init command to sep */
		error = FUNC12(sep, arg);
		break;
	case SEP_IOCGETSTATICPOOLADDR:
		/* get the physical and virtual addresses of the static pool */
		error = FUNC10(sep, arg);
		break;
	case SEP_IOCENDTRANSACTION:
		error = FUNC7(sep, arg);
		break;
	case SEP_IOCREALLOCCACHERES:
		error = FUNC14(sep, arg);
		break;
	case SEP_IOCGETMAPPEDADDROFFSET:
		error = FUNC9(sep, arg);
		break;
	case SEP_IOCGETIME:
		error = FUNC11(sep, arg);
		break;
	default:
		error = -ENOTTY;
		break;
	}
	FUNC0("SEP Driver:<-------- ioctl end\n");
	return error;
}