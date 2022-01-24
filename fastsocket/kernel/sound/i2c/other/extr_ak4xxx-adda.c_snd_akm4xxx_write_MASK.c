#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  (* unlock ) (struct snd_akm4xxx*,int) ;int /*<<< orphan*/  (* write ) (struct snd_akm4xxx*,int,unsigned char,unsigned char) ;int /*<<< orphan*/  (* lock ) (struct snd_akm4xxx*,int) ;} ;
struct snd_akm4xxx {TYPE_1__ ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_akm4xxx*,int,unsigned char,unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_akm4xxx*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_akm4xxx*,int,unsigned char,unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_akm4xxx*,int) ; 

void FUNC4(struct snd_akm4xxx *ak, int chip, unsigned char reg,
		       unsigned char val)
{
	ak->ops.lock(ak, chip);
	ak->ops.write(ak, chip, reg, val);

	/* save the data */
	FUNC0(ak, chip, reg, val);
	ak->ops.unlock(ak, chip);
}