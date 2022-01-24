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
struct security_mnt_opts {int dummy; } ;
struct TYPE_2__ {int (* sb_parse_opts_str ) (char*,struct security_mnt_opts*) ;} ;

/* Variables and functions */
 TYPE_1__* security_ops ; 
 int FUNC0 (char*,struct security_mnt_opts*) ; 

int FUNC1(char *options, struct security_mnt_opts *opts)
{
	return security_ops->sb_parse_opts_str(options, opts);
}