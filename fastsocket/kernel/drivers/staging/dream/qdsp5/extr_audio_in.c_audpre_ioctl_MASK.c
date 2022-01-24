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
typedef  int uint16_t ;
struct file {struct audio_in* private_data; } ;
struct audio_in {int agc; int ns; int iir; int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  enable_mask ;

/* Variables and functions */
 int AGC_ENABLE ; 
 int AGC_PARAM_SIZE ; 
#define  AUDIO_ENABLE_AUDPRE 131 
#define  AUDIO_SET_AGC 130 
#define  AUDIO_SET_NS 129 
#define  AUDIO_SET_TX_IIR 128 
 int EFAULT ; 
 int EINVAL ; 
 int IIR_ENABLE ; 
 int IIR_PARAM_SIZE ; 
 int NS_ENABLE ; 
 int NS_PARAM_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct audio_in*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct audio_in*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct audio_in*,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,void*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

__attribute__((used)) static long FUNC7(struct file *file, unsigned int cmd, unsigned long arg)
{
	struct audio_in *audio = file->private_data;
	int rc = 0, enable;
	uint16_t enable_mask;
#if DEBUG
	int i;
#endif

	FUNC4(&audio->lock);
	switch (cmd) {
	case AUDIO_ENABLE_AUDPRE: {
		if (FUNC3(&enable_mask, (void *) arg,
				sizeof(enable_mask)))
			goto out_fault;

		enable = (enable_mask & AGC_ENABLE) ? 1 : 0;
		FUNC0(audio, enable);
		enable = (enable_mask & NS_ENABLE) ? 1 : 0;
		FUNC1(audio, enable);
		enable = (enable_mask & IIR_ENABLE) ? 1 : 0;
		FUNC2(audio, enable);
		break;
	}
	case AUDIO_SET_AGC: {
		if (FUNC3(&audio->agc, (void *) arg,
				sizeof(audio->agc)))
			goto out_fault;
#if DEBUG
		pr_info("set agc\n");
		for (i = 0; i < AGC_PARAM_SIZE; i++) \
			pr_info("agc_params[%d] = 0x%04x\n", i,
				audio->agc.agc_params[i]);
#endif
		break;
	}
	case AUDIO_SET_NS: {
		if (FUNC3(&audio->ns, (void *) arg,
				sizeof(audio->ns)))
			goto out_fault;
#if DEBUG
		pr_info("set ns\n");
		for (i = 0; i < NS_PARAM_SIZE; i++) \
			pr_info("ns_params[%d] = 0x%04x\n",
				i, audio->ns.ns_params[i]);
#endif
		break;
	}
	case AUDIO_SET_TX_IIR: {
		if (FUNC3(&audio->iir, (void *) arg,
				sizeof(audio->iir)))
			goto out_fault;
#if DEBUG
		pr_info("set iir\n");
		pr_info("iir.num_bands = 0x%04x\n", audio->iir.num_bands);
		for (i = 0; i < IIR_PARAM_SIZE; i++) \
			pr_info("iir_params[%d] = 0x%04x\n",
				i, audio->iir.iir_params[i]);
#endif
		break;
	}
	default:
		rc = -EINVAL;
	}

	goto out;

out_fault:
	rc = -EFAULT;
out:
	FUNC5(&audio->lock);
	return rc;
}