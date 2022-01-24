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
struct aoa_codec {int /*<<< orphan*/  owner; int /*<<< orphan*/ * fabric; int /*<<< orphan*/  (* exit ) (struct aoa_codec*) ;int /*<<< orphan*/  list; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* remove_codec ) (struct aoa_codec*) ;} ;

/* Variables and functions */
 TYPE_1__* fabric ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct aoa_codec*) ; 
 int /*<<< orphan*/  FUNC3 (struct aoa_codec*) ; 

void FUNC4(struct aoa_codec *codec)
{
	FUNC0(&codec->list);
	if (codec->fabric && codec->exit)
		codec->exit(codec);
	if (fabric && fabric->remove_codec)
		fabric->remove_codec(codec);
	codec->fabric = NULL;
	FUNC1(codec->owner);
}