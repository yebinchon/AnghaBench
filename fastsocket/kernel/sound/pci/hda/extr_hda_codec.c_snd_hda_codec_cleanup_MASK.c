#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_pcm_substream {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* cleanup ) (struct hda_pcm_stream*,struct hda_codec*,struct snd_pcm_substream*) ;} ;
struct hda_pcm_stream {TYPE_1__ ops; } ;
struct hda_codec {TYPE_2__* bus; } ;
struct TYPE_4__ {int /*<<< orphan*/  prepare_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_pcm_stream*,struct hda_codec*,struct snd_pcm_substream*) ; 

void FUNC3(struct hda_codec *codec,
			   struct hda_pcm_stream *hinfo,
			   struct snd_pcm_substream *substream)
{
	FUNC0(&codec->bus->prepare_mutex);
	hinfo->ops.cleanup(hinfo, codec, substream);
	FUNC1(&codec->bus->prepare_mutex);
}