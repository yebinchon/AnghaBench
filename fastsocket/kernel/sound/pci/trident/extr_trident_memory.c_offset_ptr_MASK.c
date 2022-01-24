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
struct snd_trident {int dummy; } ;

/* Variables and functions */
 int ALIGN_PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (struct snd_trident*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void *FUNC2(struct snd_trident *trident, int offset)
{
	char *ptr;
	ptr = FUNC1(trident, FUNC0(offset));
	ptr += offset % ALIGN_PAGE_SIZE;
	return (void*)ptr;
}