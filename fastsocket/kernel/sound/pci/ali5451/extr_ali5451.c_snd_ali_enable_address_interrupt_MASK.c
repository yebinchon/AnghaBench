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
 int /*<<< orphan*/  ALI_GC_CIR ; 
 int /*<<< orphan*/  FUNC0 (struct snd_ali*,int /*<<< orphan*/ ) ; 
 unsigned int ENDLP_IE ; 
 unsigned int MIDLP_IE ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct snd_ali *codec)
{
	unsigned int gc;

	gc  = FUNC1(FUNC0(codec, ALI_GC_CIR));
	gc |= ENDLP_IE;
	gc |= MIDLP_IE;
	FUNC2( gc, FUNC0(codec, ALI_GC_CIR));
}