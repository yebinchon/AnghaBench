#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  apr_xml_parser ;
struct TYPE_3__ {int /*<<< orphan*/  root; } ;
typedef  TYPE_1__ apr_xml_doc ;
typedef  scalar_t__ apr_status_t ;
typedef  int /*<<< orphan*/  apr_file_t ;
typedef  int /*<<< orphan*/  abts_case ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ APR_SUCCESS ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,TYPE_1__**,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  p ; 

__attribute__((used)) static void FUNC7(abts_case *tc, void *data)
{
    apr_file_t *fd;
    apr_xml_parser *parser;
    apr_xml_doc *doc;
    apr_status_t rv;

    rv = FUNC4(tc, p, &fd);
    FUNC0(tc, APR_SUCCESS, rv);

    if (rv != APR_SUCCESS)
        return;

    rv = FUNC3(p, &parser, &doc, fd, 2000);
    FUNC0(tc, APR_SUCCESS, rv);

    FUNC6(tc, doc->root, 0);

    rv = FUNC2(fd);
    FUNC0(tc, APR_SUCCESS, rv);

    rv = FUNC5(tc, p, &fd);
    FUNC0(tc, APR_SUCCESS, rv);

    if (rv != APR_SUCCESS)
        return;

    rv = FUNC3(p, &parser, &doc, fd, 2000);
    FUNC1(tc, rv != APR_SUCCESS);
}