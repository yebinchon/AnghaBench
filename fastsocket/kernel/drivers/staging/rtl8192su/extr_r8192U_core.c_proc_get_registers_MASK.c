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
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  bMaskDWord ; 
 int FUNC1 (struct net_device*,int) ; 
 int FUNC2 (struct net_device*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*,int,char*,...) ; 

__attribute__((used)) static int FUNC4(char *page, char **start,
			  off_t offset, int count,
			  int *eof, void *data)
{
	struct net_device *dev = data;
//	struct r8192_priv *priv = (struct r8192_priv *)ieee80211_priv(dev);

	int len = 0;
	int i,n,page0,page1,page2;

	int max=0xff;
	page0 = 0x000;
	page1 = 0x100;
	page2 = 0x800;

	/* This dump the current register page */
	if(!FUNC0(page0)){
		len += FUNC3(page + len, count - len,
				"\n####################page %x##################\n ", (page0>>8));
		for(n=0;n<=max;)
		{
			len += FUNC3(page + len, count - len,
					"\nD:  %2x > ",n);
			for(i=0;i<16 && n<=max;i++,n++)
				len += FUNC3(page + len, count - len,
						"%2.2x ",FUNC1(dev,(page0|n)));
		}
	}else{
		len += FUNC3(page + len, count - len,
				"\n####################page %x##################\n ", (page0>>8));
		for(n=0;n<=max;)
		{
			len += FUNC3(page + len, count - len, "\nD:  %2x > ",n);
			for(i=0;i<4 && n<=max;n+=4,i++)
				len += FUNC3(page + len, count - len,
						"%8.8x ",FUNC2(dev,(page0|n), bMaskDWord));
		}
	}
	len += FUNC3(page + len, count - len,"\n");
	*eof = 1;
	return len;

}