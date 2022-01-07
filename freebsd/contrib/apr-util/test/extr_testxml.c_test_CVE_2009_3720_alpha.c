
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_xml_parser ;
typedef int apr_xml_doc ;
typedef scalar_t__ apr_status_t ;
typedef int abts_case ;


 scalar_t__ APR_SUCCESS ;
 int * apr_xml_parser_create (int ) ;
 int apr_xml_parser_done (int *,int **) ;
 scalar_t__ apr_xml_parser_feed (int *,char*,int) ;
 int p ;

__attribute__((used)) static void test_CVE_2009_3720_alpha(abts_case *tc, void *data)
{
    apr_xml_parser *xp;
    apr_xml_doc *doc;
    apr_status_t rv;

    xp = apr_xml_parser_create(p);

    rv = apr_xml_parser_feed(xp, "\0\r\n", 3);
    if (rv == APR_SUCCESS)
        apr_xml_parser_done(xp, &doc);
}
