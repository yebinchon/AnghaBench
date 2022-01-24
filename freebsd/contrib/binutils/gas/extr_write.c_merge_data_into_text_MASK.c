#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_2__* frchainP; } ;
struct TYPE_5__ {TYPE_1__* frch_last; int /*<<< orphan*/  frch_root; } ;
struct TYPE_4__ {int /*<<< orphan*/  fr_next; } ;

/* Variables and functions */
 int /*<<< orphan*/  data_section ; 
 TYPE_3__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  text_section ; 

__attribute__((used)) static void
FUNC1 (void)
{
  FUNC0 (text_section)->frchainP->frch_last->fr_next =
    FUNC0 (data_section)->frchainP->frch_root;
  FUNC0 (text_section)->frchainP->frch_last =
    FUNC0 (data_section)->frchainP->frch_last;
  FUNC0 (data_section)->frchainP = 0;
}