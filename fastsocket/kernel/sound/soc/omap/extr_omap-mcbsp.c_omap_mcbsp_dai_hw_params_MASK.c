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
struct snd_soc_pcm_runtime {TYPE_1__* dai; } ;
struct snd_soc_dai {int id; TYPE_2__* dma_data; int /*<<< orphan*/  private_data; } ;
struct snd_pcm_substream {size_t stream; struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct omap_mcbsp_reg_cfg {int /*<<< orphan*/  srgr1; int /*<<< orphan*/  srgr2; int /*<<< orphan*/  xcr1; int /*<<< orphan*/  xcr2; int /*<<< orphan*/  rcr1; int /*<<< orphan*/  rcr2; } ;
struct omap_mcbsp_data {int bus_id; int configured; unsigned int fmt; struct omap_mcbsp_reg_cfg regs; } ;
struct TYPE_4__ {char* name; int dma_req; unsigned long port_addr; int sync_mode; int /*<<< orphan*/  set_threshold; } ;
struct TYPE_3__ {struct snd_soc_dai* cpu_dai; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ MCBSP_DMA_MODE_THRESHOLD ; 
 int OMAP_DMA_SYNC_ELEMENT ; 
 int OMAP_DMA_SYNC_FRAME ; 
 int /*<<< orphan*/  OMAP_MCBSP_WORD_16 ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  RPHASE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
#define  SNDRV_PCM_FORMAT_S16_LE 131 
#define  SND_SOC_DAIFMT_DSP_A 130 
#define  SND_SOC_DAIFMT_DSP_B 129 
 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ; 
#define  SND_SOC_DAIFMT_I2S 128 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  XPHASE ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 () ; 
 scalar_t__ FUNC11 () ; 
 scalar_t__ FUNC12 () ; 
 scalar_t__ FUNC13 () ; 
 int** omap1_dma_reqs ; 
 unsigned long** omap1_mcbsp_port ; 
 unsigned long** omap2420_mcbsp_port ; 
 unsigned long** omap2430_mcbsp_port ; 
 int** omap24xx_dma_reqs ; 
 unsigned long** omap34xx_mcbsp_port ; 
 int /*<<< orphan*/  FUNC14 (int,struct omap_mcbsp_reg_cfg*) ; 
 TYPE_2__** omap_mcbsp_dai_dma_params ; 
 scalar_t__ FUNC15 (int) ; 
 int /*<<< orphan*/  omap_mcbsp_set_threshold ; 
 int FUNC16 (struct snd_pcm_hw_params*) ; 
 int FUNC17 (struct snd_pcm_hw_params*) ; 
 struct omap_mcbsp_data* FUNC18 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC19(struct snd_pcm_substream *substream,
				    struct snd_pcm_hw_params *params,
				    struct snd_soc_dai *dai)
{
	struct snd_soc_pcm_runtime *rtd = substream->private_data;
	struct snd_soc_dai *cpu_dai = rtd->dai->cpu_dai;
	struct omap_mcbsp_data *mcbsp_data = FUNC18(cpu_dai->private_data);
	struct omap_mcbsp_reg_cfg *regs = &mcbsp_data->regs;
	int dma, bus_id = mcbsp_data->bus_id, id = cpu_dai->id;
	int wlen, channels, wpf, sync_mode = OMAP_DMA_SYNC_ELEMENT;
	unsigned long port;
	unsigned int format;

	if (FUNC10()) {
		dma = omap1_dma_reqs[bus_id][substream->stream];
		port = omap1_mcbsp_port[bus_id][substream->stream];
	} else if (FUNC11()) {
		dma = omap24xx_dma_reqs[bus_id][substream->stream];
		port = omap2420_mcbsp_port[bus_id][substream->stream];
	} else if (FUNC12()) {
		dma = omap24xx_dma_reqs[bus_id][substream->stream];
		port = omap2430_mcbsp_port[bus_id][substream->stream];
	} else if (FUNC13()) {
		dma = omap24xx_dma_reqs[bus_id][substream->stream];
		port = omap34xx_mcbsp_port[bus_id][substream->stream];
		omap_mcbsp_dai_dma_params[id][substream->stream].set_threshold =
						omap_mcbsp_set_threshold;
		/* TODO: Currently, MODE_ELEMENT == MODE_FRAME */
		if (FUNC15(bus_id) ==
						MCBSP_DMA_MODE_THRESHOLD)
			sync_mode = OMAP_DMA_SYNC_FRAME;
	} else {
		return -ENODEV;
	}
	omap_mcbsp_dai_dma_params[id][substream->stream].name =
		substream->stream ? "Audio Capture" : "Audio Playback";
	omap_mcbsp_dai_dma_params[id][substream->stream].dma_req = dma;
	omap_mcbsp_dai_dma_params[id][substream->stream].port_addr = port;
	omap_mcbsp_dai_dma_params[id][substream->stream].sync_mode = sync_mode;
	cpu_dai->dma_data = &omap_mcbsp_dai_dma_params[id][substream->stream];

	if (mcbsp_data->configured) {
		/* McBSP already configured by another stream */
		return 0;
	}

	format = mcbsp_data->fmt & SND_SOC_DAIFMT_FORMAT_MASK;
	wpf = channels = FUNC16(params);
	switch (channels) {
	case 2:
		if (format == SND_SOC_DAIFMT_I2S) {
			/* Use dual-phase frames */
			regs->rcr2	|= RPHASE;
			regs->xcr2	|= XPHASE;
			/* Set 1 word per (McBSP) frame for phase1 and phase2 */
			wpf--;
			regs->rcr2	|= FUNC3(wpf - 1);
			regs->xcr2	|= FUNC7(wpf - 1);
		}
	case 1:
	case 4:
		/* Set word per (McBSP) frame for phase1 */
		regs->rcr1	|= FUNC2(wpf - 1);
		regs->xcr1	|= FUNC6(wpf - 1);
		break;
	default:
		/* Unsupported number of channels */
		return -EINVAL;
	}

	switch (FUNC17(params)) {
	case SNDRV_PCM_FORMAT_S16_LE:
		/* Set word lengths */
		wlen = 16;
		regs->rcr2	|= FUNC5(OMAP_MCBSP_WORD_16);
		regs->rcr1	|= FUNC4(OMAP_MCBSP_WORD_16);
		regs->xcr2	|= FUNC9(OMAP_MCBSP_WORD_16);
		regs->xcr1	|= FUNC8(OMAP_MCBSP_WORD_16);
		break;
	default:
		/* Unsupported PCM format */
		return -EINVAL;
	}

	/* Set FS period and length in terms of bit clock periods */
	switch (format) {
	case SND_SOC_DAIFMT_I2S:
		regs->srgr2	|= FUNC0(wlen * channels - 1);
		regs->srgr1	|= FUNC1(wlen - 1);
		break;
	case SND_SOC_DAIFMT_DSP_A:
	case SND_SOC_DAIFMT_DSP_B:
		regs->srgr2	|= FUNC0(wlen * channels - 1);
		regs->srgr1	|= FUNC1(0);
		break;
	}

	FUNC14(bus_id, &mcbsp_data->regs);
	mcbsp_data->configured = 1;

	return 0;
}