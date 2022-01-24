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
struct snd_korg1212 {size_t clkSrcRate; size_t cardState; scalar_t__ totalerrorcnt; scalar_t__ irqcount; scalar_t__ cmdRetryCount; scalar_t__ idleMonitorOn; TYPE_2__* sharedBufferPtr; scalar_t__ rightADCInSens; scalar_t__ leftADCInSens; TYPE_1__* card; } ;
struct snd_info_entry {struct snd_korg1212* private_data; } ;
struct snd_info_buffer {int dummy; } ;
struct TYPE_4__ {size_t* routeData; scalar_t__ AdatTimeCode; int /*<<< orphan*/ * volumeData; } ;
struct TYPE_3__ {scalar_t__ number; int /*<<< orphan*/  longname; } ;

/* Variables and functions */
 scalar_t__ K1212_PERIOD_BYTES ; 
 int /*<<< orphan*/ * channelName ; 
 scalar_t__* clockSourceName ; 
 int kAudioChannels ; 
 int /*<<< orphan*/  FUNC0 (struct snd_info_buffer*,char*,...) ; 
 scalar_t__* stateName ; 

__attribute__((used)) static void FUNC1(struct snd_info_entry *entry,
				   struct snd_info_buffer *buffer)
{
	int n;
	struct snd_korg1212 *korg1212 = entry->private_data;

	FUNC0(buffer, korg1212->card->longname);
	FUNC0(buffer, " (index #%d)\n", korg1212->card->number + 1);
	FUNC0(buffer, "\nGeneral settings\n");
	FUNC0(buffer, "    period size: %Zd bytes\n", K1212_PERIOD_BYTES);
	FUNC0(buffer, "     clock mode: %s\n", clockSourceName[korg1212->clkSrcRate] );
	FUNC0(buffer, "  left ADC Sens: %d\n", korg1212->leftADCInSens );
	FUNC0(buffer, " right ADC Sens: %d\n", korg1212->rightADCInSens );
        FUNC0(buffer, "    Volume Info:\n");
        for (n=0; n<kAudioChannels; n++)
                FUNC0(buffer, " Channel %d: %s -> %s [%d]\n", n,
                                    channelName[n],
                                    channelName[korg1212->sharedBufferPtr->routeData[n]],
                                    korg1212->sharedBufferPtr->volumeData[n]);
	FUNC0(buffer, "\nGeneral status\n");
        FUNC0(buffer, " ADAT Time Code: %d\n", korg1212->sharedBufferPtr->AdatTimeCode);
        FUNC0(buffer, "     Card State: %s\n", stateName[korg1212->cardState]);
        FUNC0(buffer, "Idle mon. State: %d\n", korg1212->idleMonitorOn);
        FUNC0(buffer, "Cmd retry count: %d\n", korg1212->cmdRetryCount);
        FUNC0(buffer, "      Irq count: %ld\n", korg1212->irqcount);
        FUNC0(buffer, "    Error count: %ld\n", korg1212->totalerrorcnt);
}