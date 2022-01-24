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
struct hdsp {scalar_t__ io_type; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ H9632 ; 
 scalar_t__ H9652 ; 
 int HDSP_ConfigError ; 
 int /*<<< orphan*/  HDSP_FirmwareLoaded ; 
 int /*<<< orphan*/  HDSP_statusRegister ; 
 int FUNC0 (struct hdsp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static int FUNC2 (struct hdsp *hdsp)
{
	if (hdsp->io_type == H9652 || hdsp->io_type == H9632) return 0;
	if (FUNC0 (hdsp, HDSP_statusRegister) & HDSP_ConfigError) {
		FUNC1 ("Hammerfall-DSP: no Digiface or Multiface connected!\n");
		hdsp->state &= ~HDSP_FirmwareLoaded;
		return -EIO;
	}
	return 0;
}