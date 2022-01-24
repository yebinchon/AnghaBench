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
struct TYPE_2__ {char const* name; } ;

/* Variables and functions */
 int UBIFS_COMPR_TYPES_CNT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__** ubifs_compressors ; 

__attribute__((used)) static inline const char *FUNC1(int compr_type)
{
	FUNC0(compr_type >= 0 && compr_type < UBIFS_COMPR_TYPES_CNT);
	return ubifs_compressors[compr_type]->name;
}