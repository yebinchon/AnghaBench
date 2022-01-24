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
struct r8180_priv {scalar_t__ epromtype; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ EPROM_93c56 ; 
 int /*<<< orphan*/  EPROM_CMD ; 
 int EPROM_CMD_NORMAL ; 
 int EPROM_CMD_OPERATING_MODE_SHIFT ; 
 int EPROM_CMD_PROGRAM ; 
 int /*<<< orphan*/  EPROM_DELAY ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int) ; 
 int FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,short*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 struct r8180_priv* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*,int /*<<< orphan*/ ,int) ; 

u32 FUNC9(struct net_device *dev, u32 addr)
{
	struct r8180_priv *priv = FUNC6(dev);
	short read_cmd[]={1,1,0};
	short addr_str[8];
	int i;
	int addr_len;
	u32 ret;

	ret=0;
        //enable EPROM programming
	FUNC8(dev, EPROM_CMD,
		       (EPROM_CMD_PROGRAM<<EPROM_CMD_OPERATING_MODE_SHIFT));
	FUNC5(dev);
	FUNC7(EPROM_DELAY);

	if (priv->epromtype==EPROM_93c56){
		addr_str[7]=addr & 1;
		addr_str[6]=addr & (1<<1);
		addr_str[5]=addr & (1<<2);
		addr_str[4]=addr & (1<<3);
		addr_str[3]=addr & (1<<4);
		addr_str[2]=addr & (1<<5);
		addr_str[1]=addr & (1<<6);
		addr_str[0]=addr & (1<<7);
		addr_len=8;
	}else{
		addr_str[5]=addr & 1;
		addr_str[4]=addr & (1<<1);
		addr_str[3]=addr & (1<<2);
		addr_str[2]=addr & (1<<3);
		addr_str[1]=addr & (1<<4);
		addr_str[0]=addr & (1<<5);
		addr_len=6;
	}
	FUNC1(dev, 1);
	FUNC0(dev);
	FUNC3(dev, read_cmd, 3);
	FUNC3(dev, addr_str, addr_len);

	//keep chip pin D to low state while reading.
	//I'm unsure if it is necessary, but anyway shouldn't hurt
	FUNC4(dev, 0);

	for(i=0;i<16;i++){
		//eeprom needs a clk cycle between writing opcode&adr
		//and reading data. (eeprom outs a dummy 0)
		FUNC0(dev);
		ret |= (FUNC2(dev)<<(15-i));
	}

	FUNC1(dev, 0);
	FUNC0(dev);

	//disable EPROM programming
	FUNC8(dev, EPROM_CMD,
		       (EPROM_CMD_NORMAL<<EPROM_CMD_OPERATING_MODE_SHIFT));
	return ret;
}