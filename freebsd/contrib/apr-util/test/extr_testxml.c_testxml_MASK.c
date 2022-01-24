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
typedef  int /*<<< orphan*/  abts_suite ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  test_CVE_2009_3720_alpha ; 
 int /*<<< orphan*/  test_CVE_2009_3720_beta ; 
 int /*<<< orphan*/  test_billion_laughs ; 
 int /*<<< orphan*/  test_xml_parser ; 

abts_suite *FUNC2(abts_suite *suite)
{
    suite = FUNC0(suite);

    FUNC1(suite, test_xml_parser, NULL);
    FUNC1(suite, test_billion_laughs, NULL);
    FUNC1(suite, test_CVE_2009_3720_alpha, NULL);
    FUNC1(suite, test_CVE_2009_3720_beta, NULL);

    return suite;
}