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
union cvmx_pip_prt_tagx {int /*<<< orphan*/  u64; } ;
union cvmx_pip_prt_cfgx {int /*<<< orphan*/  u64; } ;
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(uint64_t port_num,
					union cvmx_pip_prt_cfgx port_cfg,
					union cvmx_pip_prt_tagx port_tag_cfg)
{
	FUNC2(FUNC0(port_num), port_cfg.u64);
	FUNC2(FUNC1(port_num), port_tag_cfg.u64);
}