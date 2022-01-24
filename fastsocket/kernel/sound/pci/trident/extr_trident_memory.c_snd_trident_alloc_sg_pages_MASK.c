#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct snd_util_memhdr {int /*<<< orphan*/  block_mutex; } ;
struct snd_util_memblk {int dummy; } ;
struct TYPE_2__ {struct snd_util_memhdr* memhdr; } ;
struct snd_trident {TYPE_1__ tlb; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int dma_bytes; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 int SNDRV_TRIDENT_MAX_PAGES ; 
 int SNDRV_TRIDENT_PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct snd_util_memhdr*,struct snd_util_memblk*) ; 
 int FUNC1 (struct snd_util_memblk*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct snd_util_memblk*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct snd_util_memblk* FUNC6 (struct snd_util_memhdr*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_trident*,int,unsigned long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_pcm_substream*,unsigned long) ; 
 scalar_t__ FUNC10 (struct snd_pcm_substream*,unsigned long) ; 

__attribute__((used)) static struct snd_util_memblk *
FUNC11(struct snd_trident *trident,
			   struct snd_pcm_substream *substream)
{
	struct snd_util_memhdr *hdr;
	struct snd_util_memblk *blk;
	struct snd_pcm_runtime *runtime = substream->runtime;
	int idx, page;

	if (FUNC8(runtime->dma_bytes <= 0 ||
		       runtime->dma_bytes > SNDRV_TRIDENT_MAX_PAGES *
					SNDRV_TRIDENT_PAGE_SIZE))
		return NULL;
	hdr = trident->tlb.memhdr;
	if (FUNC8(!hdr))
		return NULL;

	

	FUNC4(&hdr->block_mutex);
	blk = FUNC6(hdr, runtime->dma_bytes);
	if (blk == NULL) {
		FUNC5(&hdr->block_mutex);
		return NULL;
	}
			   
	/* set TLB entries */
	idx = 0;
	for (page = FUNC1(blk); page <= FUNC3(blk); page++, idx++) {
		unsigned long ofs = idx << PAGE_SHIFT;
		dma_addr_t addr = FUNC9(substream, ofs);
		unsigned long ptr = (unsigned long)
			FUNC10(substream, ofs);
		if (! FUNC2(addr)) {
			FUNC0(hdr, blk);
			FUNC5(&hdr->block_mutex);
			return NULL;
		}
		FUNC7(trident, page, ptr, addr);
	}
	FUNC5(&hdr->block_mutex);
	return blk;
}