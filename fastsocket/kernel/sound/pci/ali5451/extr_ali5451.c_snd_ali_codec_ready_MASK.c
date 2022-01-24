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
struct snd_ali {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 unsigned long jiffies ; 
 unsigned long FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 unsigned int FUNC2 (struct snd_ali*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_ali*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct snd_ali *codec,
			       unsigned int port)
{
	unsigned long end_time;
	unsigned int res;
	
	end_time = jiffies + FUNC0(250);

	for (;;) {
		res = FUNC2(codec,port);
		if (!(res & 0x8000))
			return 0;
		if (!FUNC5(end_time, jiffies))
			break;
		FUNC1(1);
	}

	FUNC3(codec, port, res & ~0x8000);
	FUNC4("ali_codec_ready: codec is not ready.\n ");
	return -EIO;
}