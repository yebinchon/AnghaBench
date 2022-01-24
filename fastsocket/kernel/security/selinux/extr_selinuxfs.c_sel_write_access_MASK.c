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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct file {int dummy; } ;
struct av_decision {int /*<<< orphan*/  flags; int /*<<< orphan*/  seqno; int /*<<< orphan*/  auditdeny; int /*<<< orphan*/  auditallow; int /*<<< orphan*/  allowed; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SECURITY__COMPUTE_AV ; 
 int /*<<< orphan*/  SIMPLE_TRANSACTION_LIMIT ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct av_decision*) ; 
 int FUNC4 (char*,scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC5 (char*,char*,char*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (char*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC8(struct file *file, char *buf, size_t size)
{
	char *scon, *tcon;
	u32 ssid, tsid;
	u16 tclass;
	struct av_decision avd;
	ssize_t length;

	length = FUNC7(current, SECURITY__COMPUTE_AV);
	if (length)
		return length;

	length = -ENOMEM;
	scon = FUNC1(size+1, GFP_KERNEL);
	if (!scon)
		return length;

	tcon = FUNC1(size+1, GFP_KERNEL);
	if (!tcon)
		goto out;

	length = -EINVAL;
	if (FUNC5(buf, "%s %s %hu", scon, tcon, &tclass) != 3)
		goto out2;

	length = FUNC4(scon, FUNC6(scon)+1, &ssid);
	if (length < 0)
		goto out2;
	length = FUNC4(tcon, FUNC6(tcon)+1, &tsid);
	if (length < 0)
		goto out2;

	FUNC3(ssid, tsid, tclass, &avd);

	length = FUNC2(buf, SIMPLE_TRANSACTION_LIMIT,
			  "%x %x %x %x %u %x",
			  avd.allowed, 0xffffffff,
			  avd.auditallow, avd.auditdeny,
			  avd.seqno, avd.flags);
out2:
	FUNC0(tcon);
out:
	FUNC0(scon);
	return length;
}