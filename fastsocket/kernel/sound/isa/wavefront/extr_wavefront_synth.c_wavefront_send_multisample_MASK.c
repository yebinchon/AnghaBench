#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int NumberOfSamples; size_t* SampleNumber; } ;
struct TYPE_9__ {TYPE_1__ ms; } ;
struct TYPE_10__ {size_t number; TYPE_2__ hdr; } ;
typedef  TYPE_3__ wavefront_patch_info ;
struct TYPE_11__ {int* sample_status; } ;
typedef  TYPE_4__ snd_wavefront_t ;
typedef  int /*<<< orphan*/  WF_MSAMPLE_BYTES ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int,size_t,...) ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  WFC_DOWNLOAD_MULTISAMPLE ; 
 int WF_DEBUG_DATA ; 
 int WF_DEBUG_LOAD_PATCH ; 
 int WF_SLOT_FILLED ; 
 int WF_ST_MULTISAMPLE ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 unsigned char* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (size_t,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (TYPE_4__*,int /*<<< orphan*/ ,unsigned char*,unsigned char*) ; 

__attribute__((used)) static int
FUNC6 (snd_wavefront_t *dev, wavefront_patch_info *header)
{
	int i;
	int num_samples;
	unsigned char *msample_hdr;

	msample_hdr = FUNC2(sizeof(WF_MSAMPLE_BYTES), GFP_KERNEL);
	if (! msample_hdr)
		return -ENOMEM;

	FUNC3 (header->number, &msample_hdr[0], 2);

	/* You'll recall at this point that the "number of samples" value
	   in a wavefront_multisample struct is actually the log2 of the
	   real number of samples.
	*/

	num_samples = (1<<(header->hdr.ms.NumberOfSamples&7));
	msample_hdr[2] = (unsigned char) header->hdr.ms.NumberOfSamples;

	FUNC0 (WF_DEBUG_LOAD_PATCH, "multi %d with %d=%d samples\n",
				      header->number,
				      header->hdr.ms.NumberOfSamples,
				      num_samples);

	for (i = 0; i < num_samples; i++) {
		FUNC0(WF_DEBUG_LOAD_PATCH|WF_DEBUG_DATA, "sample[%d] = %d\n",
		       i, header->hdr.ms.SampleNumber[i]);
		FUNC3 (header->hdr.ms.SampleNumber[i],
		     &msample_hdr[3+(i*2)], 2);
	}
    
	/* Need a hack here to pass in the number of bytes
	   to be written to the synth. This is ugly, and perhaps
	   one day, I'll fix it.
	*/

	if (FUNC5 (dev, WFC_DOWNLOAD_MULTISAMPLE, 
			   (unsigned char *) (long) ((num_samples*2)+3),
			   msample_hdr)) {
		FUNC4 ("download of multisample failed.\n");
		FUNC1(msample_hdr);
		return -(EIO);
	}

	dev->sample_status[header->number] = (WF_SLOT_FILLED|WF_ST_MULTISAMPLE);

	FUNC1(msample_hdr);
	return (0);
}