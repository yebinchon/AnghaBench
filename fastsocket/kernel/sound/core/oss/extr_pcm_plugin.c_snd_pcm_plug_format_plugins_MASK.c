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
struct snd_pcm_plugin_format {scalar_t__ format; int channels; void* rate; } ;
struct snd_pcm_plugin {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ SNDRV_PCM_ACCESS_RW_INTERLEAVED ; 
 scalar_t__ SNDRV_PCM_ACCESS_RW_NONINTERLEAVED ; 
 scalar_t__ SNDRV_PCM_FORMAT_MU_LAW ; 
 scalar_t__ SNDRV_PCM_FORMAT_S16 ; 
#define  SNDRV_PCM_STREAM_CAPTURE 129 
#define  SNDRV_PCM_STREAM_PLAYBACK 128 
 scalar_t__ FUNC0 (struct snd_pcm_hw_params*) ; 
 int FUNC1 (struct snd_pcm_hw_params*) ; 
 void* FUNC2 (struct snd_pcm_hw_params*) ; 
 void* FUNC3 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC5 (void*,void*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int FUNC8 (struct snd_pcm_substream*) ; 
 int FUNC9 (struct snd_pcm_plugin*) ; 
 int FUNC10 (struct snd_pcm_substream*,struct snd_pcm_plugin_format*,struct snd_pcm_plugin_format*,struct snd_pcm_plugin**) ; 
 int FUNC11 (struct snd_pcm_substream*,struct snd_pcm_plugin_format*,struct snd_pcm_plugin_format*,struct snd_pcm_plugin**) ; 
 int FUNC12 (struct snd_pcm_substream*,struct snd_pcm_plugin_format*,struct snd_pcm_plugin_format*,struct snd_pcm_plugin**) ; 
 int FUNC13 (struct snd_pcm_substream*,struct snd_pcm_plugin_format*,struct snd_pcm_plugin_format*,struct snd_pcm_plugin**) ; 
 int FUNC14 (struct snd_pcm_substream*,struct snd_pcm_plugin_format*,struct snd_pcm_plugin_format*,struct snd_pcm_plugin**) ; 
 int /*<<< orphan*/  FUNC15 (struct snd_pcm_plugin*) ; 

int FUNC16(struct snd_pcm_substream *plug,
				struct snd_pcm_hw_params *params,
				struct snd_pcm_hw_params *slave_params)
{
	struct snd_pcm_plugin_format tmpformat;
	struct snd_pcm_plugin_format dstformat;
	struct snd_pcm_plugin_format srcformat;
	int src_access, dst_access;
	struct snd_pcm_plugin *plugin = NULL;
	int err;
	int stream = FUNC8(plug);
	int slave_interleaved = (FUNC1(slave_params) == 1 ||
				 FUNC0(slave_params) == SNDRV_PCM_ACCESS_RW_INTERLEAVED);

	switch (stream) {
	case SNDRV_PCM_STREAM_PLAYBACK:
		dstformat.format = FUNC2(slave_params);
		dstformat.rate = FUNC3(slave_params);
		dstformat.channels = FUNC1(slave_params);
		srcformat.format = FUNC2(params);
		srcformat.rate = FUNC3(params);
		srcformat.channels = FUNC1(params);
		src_access = SNDRV_PCM_ACCESS_RW_INTERLEAVED;
		dst_access = (slave_interleaved ? SNDRV_PCM_ACCESS_RW_INTERLEAVED :
						  SNDRV_PCM_ACCESS_RW_NONINTERLEAVED);
		break;
	case SNDRV_PCM_STREAM_CAPTURE:
		dstformat.format = FUNC2(params);
		dstformat.rate = FUNC3(params);
		dstformat.channels = FUNC1(params);
		srcformat.format = FUNC2(slave_params);
		srcformat.rate = FUNC3(slave_params);
		srcformat.channels = FUNC1(slave_params);
		src_access = (slave_interleaved ? SNDRV_PCM_ACCESS_RW_INTERLEAVED :
						  SNDRV_PCM_ACCESS_RW_NONINTERLEAVED);
		dst_access = SNDRV_PCM_ACCESS_RW_INTERLEAVED;
		break;
	default:
		FUNC6();
		return -EINVAL;
	}
	tmpformat = srcformat;
		
	FUNC4("srcformat: format=%i, rate=%i, channels=%i\n", 
		 srcformat.format,
		 srcformat.rate,
		 srcformat.channels);
	FUNC4("dstformat: format=%i, rate=%i, channels=%i\n", 
		 dstformat.format,
		 dstformat.rate,
		 dstformat.channels);

	/* Format change (linearization) */
	if (! FUNC5(srcformat.rate, dstformat.rate) &&
	    ! FUNC7(srcformat.format)) {
		if (srcformat.format != SNDRV_PCM_FORMAT_MU_LAW)
			return -EINVAL;
		tmpformat.format = SNDRV_PCM_FORMAT_S16;
		err = FUNC12(plug,
						 &srcformat, &tmpformat,
						 &plugin);
		if (err < 0)
			return err;
		err = FUNC9(plugin);
		if (err < 0) {
			FUNC15(plugin);
			return err;
		}
		srcformat = tmpformat;
		src_access = dst_access;
	}

	/* channels reduction */
	if (srcformat.channels > dstformat.channels) {
		tmpformat.channels = dstformat.channels;
		err = FUNC14(plug, &srcformat, &tmpformat, &plugin);
		FUNC4("channels reduction: src=%i, dst=%i returns %i\n", srcformat.channels, tmpformat.channels, err);
		if (err < 0)
			return err;
		err = FUNC9(plugin);
		if (err < 0) {
			FUNC15(plugin);
			return err;
		}
		srcformat = tmpformat;
		src_access = dst_access;
	}

	/* rate resampling */
	if (!FUNC5(srcformat.rate, dstformat.rate)) {
		if (srcformat.format != SNDRV_PCM_FORMAT_S16) {
			/* convert to S16 for resampling */
			tmpformat.format = SNDRV_PCM_FORMAT_S16;
			err = FUNC11(plug,
							  &srcformat, &tmpformat,
							  &plugin);
			if (err < 0)
				return err;
			err = FUNC9(plugin);
			if (err < 0) {
				FUNC15(plugin);
				return err;
			}
			srcformat = tmpformat;
			src_access = dst_access;
		}
		tmpformat.rate = dstformat.rate;
        	err = FUNC13(plug,
        					&srcformat, &tmpformat,
						&plugin);
		FUNC4("rate down resampling: src=%i, dst=%i returns %i\n", srcformat.rate, tmpformat.rate, err);
		if (err < 0)
			return err;
		err = FUNC9(plugin);
		if (err < 0) {
			FUNC15(plugin);
			return err;
		}
		srcformat = tmpformat;
		src_access = dst_access;
        }

	/* format change */
	if (srcformat.format != dstformat.format) {
		tmpformat.format = dstformat.format;
		if (srcformat.format == SNDRV_PCM_FORMAT_MU_LAW ||
		    tmpformat.format == SNDRV_PCM_FORMAT_MU_LAW) {
			err = FUNC12(plug,
							 &srcformat, &tmpformat,
							 &plugin);
		}
		else if (FUNC7(srcformat.format) &&
			 FUNC7(tmpformat.format)) {
			err = FUNC11(plug,
							  &srcformat, &tmpformat,
							  &plugin);
		}
		else
			return -EINVAL;
		FUNC4("format change: src=%i, dst=%i returns %i\n", srcformat.format, tmpformat.format, err);
		if (err < 0)
			return err;
		err = FUNC9(plugin);
		if (err < 0) {
			FUNC15(plugin);
			return err;
		}
		srcformat = tmpformat;
		src_access = dst_access;
	}

	/* channels extension */
	if (srcformat.channels < dstformat.channels) {
		tmpformat.channels = dstformat.channels;
		err = FUNC14(plug, &srcformat, &tmpformat, &plugin);
		FUNC4("channels extension: src=%i, dst=%i returns %i\n", srcformat.channels, tmpformat.channels, err);
		if (err < 0)
			return err;
		err = FUNC9(plugin);
		if (err < 0) {
			FUNC15(plugin);
			return err;
		}
		srcformat = tmpformat;
		src_access = dst_access;
	}

	/* de-interleave */
	if (src_access != dst_access) {
		err = FUNC10(plug,
						&srcformat,
						&tmpformat,
						&plugin);
		FUNC4("interleave change (copy: returns %i)\n", err);
		if (err < 0)
			return err;
		err = FUNC9(plugin);
		if (err < 0) {
			FUNC15(plugin);
			return err;
		}
	}

	return 0;
}