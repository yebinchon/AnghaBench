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
struct snd_sb_csp {int version; int running; int codec_name; char* func_nr; int acc_rates; int mode; int acc_width; int acc_channels; int run_width; int run_channels; int qpos_left; char* qpos_right; int /*<<< orphan*/  acc_format; scalar_t__ q_enabled; } ;
struct snd_info_entry {struct snd_sb_csp* private_data; } ;
struct snd_info_buffer {int dummy; } ;

/* Variables and functions */
 int SNDRV_SB_CSP_MODE_DSP_READ ; 
 int SNDRV_SB_CSP_MODE_DSP_WRITE ; 
 int SNDRV_SB_CSP_MODE_QSOUND ; 
 int SNDRV_SB_CSP_MONO ; 
 int SNDRV_SB_CSP_RATE_11025 ; 
 int SNDRV_SB_CSP_RATE_22050 ; 
 int SNDRV_SB_CSP_RATE_44100 ; 
 int SNDRV_SB_CSP_RATE_8000 ; 
 int SNDRV_SB_CSP_RATE_ALL ; 
 int SNDRV_SB_CSP_SAMPLE_16BIT ; 
 int SNDRV_SB_CSP_SAMPLE_8BIT ; 
 int SNDRV_SB_CSP_STEREO ; 
 int SNDRV_SB_CSP_ST_AUTO ; 
 int SNDRV_SB_CSP_ST_LOADED ; 
 int SNDRV_SB_CSP_ST_PAUSED ; 
 int SNDRV_SB_CSP_ST_QSOUND ; 
 int SNDRV_SB_CSP_ST_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (struct snd_info_buffer*,char*,...) ; 

__attribute__((used)) static void FUNC1(struct snd_info_entry *entry, struct snd_info_buffer *buffer)
{
	struct snd_sb_csp *p = entry->private_data;

	FUNC0(buffer, "Creative Signal Processor [v%d.%d]\n", (p->version >> 4), (p->version & 0x0f));
	FUNC0(buffer, "State: %cx%c%c%c\n", ((p->running & SNDRV_SB_CSP_ST_QSOUND) ? 'Q' : '-'),
		    ((p->running & SNDRV_SB_CSP_ST_PAUSED) ? 'P' : '-'),
		    ((p->running & SNDRV_SB_CSP_ST_RUNNING) ? 'R' : '-'),
		    ((p->running & SNDRV_SB_CSP_ST_LOADED) ? 'L' : '-'));
	if (p->running & SNDRV_SB_CSP_ST_LOADED) {
		FUNC0(buffer, "Codec: %s [func #%d]\n", p->codec_name, p->func_nr);
		FUNC0(buffer, "Sample rates: ");
		if (p->acc_rates == SNDRV_SB_CSP_RATE_ALL) {
			FUNC0(buffer, "All\n");
		} else {
			FUNC0(buffer, "%s%s%s%s\n",
				    ((p->acc_rates & SNDRV_SB_CSP_RATE_8000) ? "8000Hz " : ""),
				    ((p->acc_rates & SNDRV_SB_CSP_RATE_11025) ? "11025Hz " : ""),
				    ((p->acc_rates & SNDRV_SB_CSP_RATE_22050) ? "22050Hz " : ""),
				    ((p->acc_rates & SNDRV_SB_CSP_RATE_44100) ? "44100Hz" : ""));
		}
		if (p->mode == SNDRV_SB_CSP_MODE_QSOUND) {
			FUNC0(buffer, "QSound decoder %sabled\n",
				    p->q_enabled ? "en" : "dis");
		} else {
			FUNC0(buffer, "PCM format ID: 0x%x (%s/%s) [%s/%s] [%s/%s]\n",
				    p->acc_format,
				    ((p->acc_width & SNDRV_SB_CSP_SAMPLE_16BIT) ? "16bit" : "-"),
				    ((p->acc_width & SNDRV_SB_CSP_SAMPLE_8BIT) ? "8bit" : "-"),
				    ((p->acc_channels & SNDRV_SB_CSP_MONO) ? "mono" : "-"),
				    ((p->acc_channels & SNDRV_SB_CSP_STEREO) ? "stereo" : "-"),
				    ((p->mode & SNDRV_SB_CSP_MODE_DSP_WRITE) ? "playback" : "-"),
				    ((p->mode & SNDRV_SB_CSP_MODE_DSP_READ) ? "capture" : "-"));
		}
	}
	if (p->running & SNDRV_SB_CSP_ST_AUTO) {
		FUNC0(buffer, "Autoloaded Mu-Law, A-Law or Ima-ADPCM hardware codec\n");
	}
	if (p->running & SNDRV_SB_CSP_ST_RUNNING) {
		FUNC0(buffer, "Processing %dbit %s PCM samples\n",
			    ((p->run_width & SNDRV_SB_CSP_SAMPLE_16BIT) ? 16 : 8),
			    ((p->run_channels & SNDRV_SB_CSP_MONO) ? "mono" : "stereo"));
	}
	if (p->running & SNDRV_SB_CSP_ST_QSOUND) {
		FUNC0(buffer, "Qsound position: left = 0x%x, right = 0x%x\n",
			    p->qpos_left, p->qpos_right);
	}
}