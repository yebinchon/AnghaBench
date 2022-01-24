#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ opened; } ;
typedef  TYPE_1__ uart401_devc ;
struct TYPE_5__ {scalar_t__ devc; } ;

/* Variables and functions */
 TYPE_3__** midi_devs ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC1(int dev)
{
	uart401_devc *devc = (uart401_devc *) midi_devs[dev]->devc;

	FUNC0(devc);
	devc->opened = 0;
}