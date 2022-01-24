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
struct vt1724_pcm_reg {scalar_t__ count; scalar_t__ size; scalar_t__ addr; } ;
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct snd_ice1712 {int /*<<< orphan*/  reg_lock; scalar_t__ profi_port; } ;
struct TYPE_2__ {int /*<<< orphan*/  dma_addr; struct vt1724_pcm_reg* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int FUNC2 (struct snd_pcm_substream*) ; 
 int FUNC3 (struct snd_pcm_substream*) ; 
 struct snd_ice1712* FUNC4 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct snd_pcm_substream *substream)
{
	struct snd_ice1712 *ice = FUNC4(substream);
	const struct vt1724_pcm_reg *reg = substream->runtime->private_data;

	FUNC5(&ice->reg_lock);
	FUNC0(substream->runtime->dma_addr, ice->profi_port + reg->addr);
	FUNC1((FUNC2(substream) >> 2) - 1,
	     ice->profi_port + reg->size);
	FUNC1((FUNC3(substream) >> 2) - 1,
	     ice->profi_port + reg->count);
	FUNC6(&ice->reg_lock);
	return 0;
}