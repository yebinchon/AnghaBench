
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_xml_parser ;
typedef int apr_xml_doc ;
typedef int apr_status_t ;
typedef int apr_file_t ;
typedef int abts_case ;


 int APR_FOPEN_READ ;
 int apr_assert_success (int *,char*,int ) ;
 int apr_file_close (int *) ;
 int apr_file_open (int **,char*,int ,int ,int ) ;
 int apr_xml_parse_file (int ,int **,int **,int *,int) ;
 int p ;

__attribute__((used)) static void test_billion_laughs(abts_case *tc, void *data)
{
    apr_file_t *fd;
    apr_xml_parser *parser;
    apr_xml_doc *doc;
    apr_status_t rv;

    rv = apr_file_open(&fd, "data/billion-laughs.xml",
                       APR_FOPEN_READ, 0, p);
    apr_assert_success(tc, "open billion-laughs.xml", rv);



    apr_xml_parse_file(p, &parser, &doc, fd, 2000);

    apr_file_close(fd);
}
