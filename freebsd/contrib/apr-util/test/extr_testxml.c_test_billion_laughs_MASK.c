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
typedef  int /*<<< orphan*/  apr_xml_parser ;
typedef  int /*<<< orphan*/  apr_xml_doc ;
typedef  int /*<<< orphan*/  apr_status_t ;
typedef  int /*<<< orphan*/  apr_file_t ;
typedef  int /*<<< orphan*/  abts_case ;

/* Variables and functions */
 int /*<<< orphan*/  APR_FOPEN_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  p ; 

__attribute__((used)) static void FUNC4(abts_case *tc, void *data)
{
    apr_file_t *fd;
    apr_xml_parser *parser;
    apr_xml_doc *doc;
    apr_status_t rv;

    rv = FUNC2(&fd, "data/billion-laughs.xml", 
                       APR_FOPEN_READ, 0, p);
    FUNC0(tc, "open billion-laughs.xml", rv);

    /* Don't test for return value; if it returns, chances are the bug
     * is fixed or the machine has insane amounts of RAM. */
    FUNC3(p, &parser, &doc, fd, 2000);

    FUNC1(fd);
}