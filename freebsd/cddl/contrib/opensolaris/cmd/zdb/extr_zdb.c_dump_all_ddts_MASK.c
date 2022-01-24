#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/ ** spa_ddt; } ;
typedef  TYPE_1__ spa_t ;
typedef  enum zio_checksum { ____Placeholder_zio_checksum } zio_checksum ;
typedef  enum ddt_type { ____Placeholder_ddt_type } ddt_type ;
typedef  enum ddt_class { ____Placeholder_ddt_class } ddt_class ;
typedef  int /*<<< orphan*/  ddt_t ;
struct TYPE_14__ {scalar_t__ dds_blocks; } ;
typedef  TYPE_2__ ddt_stat_t ;
typedef  TYPE_2__ ddt_histogram_t ;
typedef  int /*<<< orphan*/  dds_total ;
typedef  int /*<<< orphan*/  ddh_total ;

/* Variables and functions */
 int DDT_CLASSES ; 
 int DDT_TYPES ; 
 int ZIO_CHECKSUM_FUNCTIONS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int* dump_opt ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,TYPE_2__*) ; 

__attribute__((used)) static void
FUNC7(spa_t *spa)
{
	ddt_histogram_t ddh_total;
	ddt_stat_t dds_total;

	FUNC0(&ddh_total, sizeof (ddh_total));
	FUNC0(&dds_total, sizeof (dds_total));

	for (enum zio_checksum c = 0; c < ZIO_CHECKSUM_FUNCTIONS; c++) {
		ddt_t *ddt = spa->spa_ddt[c];
		for (enum ddt_type type = 0; type < DDT_TYPES; type++) {
			for (enum ddt_class class = 0; class < DDT_CLASSES;
			    class++) {
				FUNC3(ddt, type, class);
			}
		}
	}

	FUNC2(spa, &dds_total);

	if (dds_total.dds_blocks == 0) {
		(void) FUNC5("All DDTs are empty\n");
		return;
	}

	(void) FUNC5("\n");

	if (dump_opt['D'] > 1) {
		(void) FUNC5("DDT histogram (aggregated over all DDTs):\n");
		FUNC1(spa, &ddh_total);
		FUNC6(&dds_total, &ddh_total);
	}

	FUNC4(&dds_total);
}