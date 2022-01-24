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
typedef  int u16 ;
struct isp1362_hcd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCDIRADDR ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  HCDMACFG ; 
 int /*<<< orphan*/  HCDMACFG_CTR_ENABLE ; 
 int ISP1362_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct isp1362_hcd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct isp1362_hcd*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct isp1362_hcd *isp1362_hcd, u16 offset, u16 len)
{
	FUNC2(offset & 1);
	FUNC2(offset >= ISP1362_BUF_SIZE);
	FUNC2(len > ISP1362_BUF_SIZE);
	FUNC2(offset + len > ISP1362_BUF_SIZE);
	len = (len + 1) & ~1;

	FUNC3(isp1362_hcd, HCDMACFG, HCDMACFG_CTR_ENABLE);
	FUNC4(isp1362_hcd, HCDIRADDR,
			    FUNC0(offset) | FUNC1(len));
}