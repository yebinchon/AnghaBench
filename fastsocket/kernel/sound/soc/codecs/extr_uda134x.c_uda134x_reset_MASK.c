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
typedef  int u8 ;
struct snd_soc_codec {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  UDA134X_STATUS0 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct snd_soc_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_codec*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC3(struct snd_soc_codec *codec)
{
	u8 reset_reg = FUNC1(codec, UDA134X_STATUS0);
	FUNC2(codec, UDA134X_STATUS0, reset_reg | (1<<6));
	FUNC0(1);
	FUNC2(codec, UDA134X_STATUS0, reset_reg & ~(1<<6));
}