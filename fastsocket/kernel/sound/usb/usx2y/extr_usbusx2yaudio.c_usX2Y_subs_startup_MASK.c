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
struct usX2Ydev {struct snd_usX2Y_substream* prepare_subs; } ;
struct snd_usX2Y_substream {TYPE_1__** urb; struct usX2Ydev* usX2Y; } ;
struct TYPE_2__ {int start_frame; } ;

/* Variables and functions */
 int /*<<< orphan*/  i_usX2Y_subs_startup ; 
 int /*<<< orphan*/  FUNC0 (struct usX2Ydev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static void FUNC2(struct snd_usX2Y_substream *subs)
{
	struct usX2Ydev *usX2Y = subs->usX2Y;
	usX2Y->prepare_subs = subs;
	subs->urb[0]->start_frame = -1;
	FUNC1();
	FUNC0(usX2Y, i_usX2Y_subs_startup);
}