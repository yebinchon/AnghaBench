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
struct seq_file {int dummy; } ;
struct k_atm_aal_stats {int /*<<< orphan*/  rx_drop; int /*<<< orphan*/  rx_err; int /*<<< orphan*/  rx; int /*<<< orphan*/  tx_err; int /*<<< orphan*/  tx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct seq_file *seq, const char *aal,
  const struct k_atm_aal_stats *stats)
{
	FUNC1(seq, "%s ( %d %d %d %d %d )", aal,
	    FUNC0(&stats->tx),FUNC0(&stats->tx_err),
	    FUNC0(&stats->rx),FUNC0(&stats->rx_err),
	    FUNC0(&stats->rx_drop));
}