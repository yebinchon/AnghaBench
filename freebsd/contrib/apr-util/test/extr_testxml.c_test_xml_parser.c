
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int apr_xml_parser ;
struct TYPE_3__ {int root; } ;
typedef TYPE_1__ apr_xml_doc ;
typedef scalar_t__ apr_status_t ;
typedef int apr_file_t ;
typedef int abts_case ;


 int ABTS_INT_EQUAL (int *,scalar_t__,scalar_t__) ;
 int ABTS_TRUE (int *,int) ;
 scalar_t__ APR_SUCCESS ;
 scalar_t__ apr_file_close (int *) ;
 scalar_t__ apr_xml_parse_file (int ,int **,TYPE_1__**,int *,int) ;
 scalar_t__ create_dummy_file (int *,int ,int **) ;
 scalar_t__ create_dummy_file_error (int *,int ,int **) ;
 int dump_xml (int *,int ,int ) ;
 int p ;

__attribute__((used)) static void test_xml_parser(abts_case *tc, void *data)
{
    apr_file_t *fd;
    apr_xml_parser *parser;
    apr_xml_doc *doc;
    apr_status_t rv;

    rv = create_dummy_file(tc, p, &fd);
    ABTS_INT_EQUAL(tc, APR_SUCCESS, rv);

    if (rv != APR_SUCCESS)
        return;

    rv = apr_xml_parse_file(p, &parser, &doc, fd, 2000);
    ABTS_INT_EQUAL(tc, APR_SUCCESS, rv);

    dump_xml(tc, doc->root, 0);

    rv = apr_file_close(fd);
    ABTS_INT_EQUAL(tc, APR_SUCCESS, rv);

    rv = create_dummy_file_error(tc, p, &fd);
    ABTS_INT_EQUAL(tc, APR_SUCCESS, rv);

    if (rv != APR_SUCCESS)
        return;

    rv = apr_xml_parse_file(p, &parser, &doc, fd, 2000);
    ABTS_TRUE(tc, rv != APR_SUCCESS);
}
