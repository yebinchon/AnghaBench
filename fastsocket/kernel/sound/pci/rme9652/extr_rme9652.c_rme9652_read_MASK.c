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
struct snd_rme9652 {scalar_t__ iobase; } ;

/* Variables and functions */
 unsigned int FUNC0 (scalar_t__) ; 

__attribute__((used)) static inline unsigned int FUNC1(struct snd_rme9652 *rme9652, int reg)
{
	return FUNC0(rme9652->iobase + reg);
}