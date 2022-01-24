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
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct file {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int ERANGE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SECURITY__COMPUTE_RELABEL ; 
 int SIMPLE_TRANSACTION_LIMIT ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int FUNC3 (int,int,int /*<<< orphan*/ ,int*) ; 
 int FUNC4 (char*,scalar_t__,int*) ; 
 int FUNC5 (int,char**,int*) ; 
 int FUNC6 (char*,char*,char*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (char*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC9(struct file *file, char *buf, size_t size)
{
	char *scon, *tcon;
	u32 ssid, tsid, newsid;
	u16 tclass;
	ssize_t length;
	char *newcon;
	u32 len;

	length = FUNC8(current, SECURITY__COMPUTE_RELABEL);
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
	if (FUNC6(buf, "%s %s %hu", scon, tcon, &tclass) != 3)
		goto out2;

	length = FUNC4(scon, FUNC7(scon)+1, &ssid);
	if (length < 0)
		goto out2;
	length = FUNC4(tcon, FUNC7(tcon)+1, &tsid);
	if (length < 0)
		goto out2;

	length = FUNC3(ssid, tsid, tclass, &newsid);
	if (length < 0)
		goto out2;

	length = FUNC5(newsid, &newcon, &len);
	if (length < 0)
		goto out2;

	if (len > SIMPLE_TRANSACTION_LIMIT) {
		length = -ERANGE;
		goto out3;
	}

	FUNC2(buf, newcon, len);
	length = len;
out3:
	FUNC0(newcon);
out2:
	FUNC0(tcon);
out:
	FUNC0(scon);
	return length;
}