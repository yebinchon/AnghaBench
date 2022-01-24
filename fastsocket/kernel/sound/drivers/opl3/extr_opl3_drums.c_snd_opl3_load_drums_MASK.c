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
struct snd_opl3 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  bass_note ; 
 int /*<<< orphan*/  bass_op0 ; 
 int /*<<< orphan*/  bass_op1 ; 
 int /*<<< orphan*/  cymbal ; 
 int /*<<< orphan*/  hihat ; 
 int /*<<< orphan*/  snare ; 
 int /*<<< orphan*/  snare_note ; 
 int /*<<< orphan*/  FUNC0 (struct snd_opl3*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_opl3*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tomtom ; 
 int /*<<< orphan*/  tomtom_note ; 

void FUNC2(struct snd_opl3 *opl3)
{
	FUNC1(opl3, &bass_op0);
	FUNC1(opl3, &bass_op1);
	FUNC0(opl3, &bass_note);

	FUNC1(opl3, &hihat);

	FUNC1(opl3, &snare);
	FUNC0(opl3, &snare_note);

	FUNC1(opl3, &tomtom);
	FUNC0(opl3, &tomtom_note);

	FUNC1(opl3, &cymbal);
}