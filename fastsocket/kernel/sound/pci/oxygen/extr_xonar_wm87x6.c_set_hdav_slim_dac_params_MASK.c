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
struct xonar_wm87x6 {int /*<<< orphan*/  hdmi; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct oxygen {struct xonar_wm87x6* model_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct oxygen*,int /*<<< orphan*/ *,struct snd_pcm_hw_params*) ; 

__attribute__((used)) static void FUNC1(struct oxygen *chip,
				     struct snd_pcm_hw_params *params)
{
	struct xonar_wm87x6 *data = chip->model_data;

	FUNC0(chip, &data->hdmi, params);
}