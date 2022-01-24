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
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WORK_INFO ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_hw_params*) ; 
 int FUNC3 (struct snd_pcm_substream*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct snd_pcm_substream *substream,
			   struct snd_pcm_hw_params *hw_params)
{
	FUNC0(WORK_INFO, "hw_params(): desired buffer bytes=%d, desired "
	       "period bytes=%d\n",
	       FUNC1(hw_params), FUNC2(hw_params));
	return FUNC3(substream,
					FUNC1(hw_params));
}