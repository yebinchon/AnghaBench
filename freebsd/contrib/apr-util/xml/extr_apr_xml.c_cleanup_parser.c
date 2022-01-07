
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * xp; } ;
typedef TYPE_1__ apr_xml_parser ;
typedef int apr_status_t ;


 int APR_SUCCESS ;
 int XML_ParserFree (int *) ;

__attribute__((used)) static apr_status_t cleanup_parser(void *ctx)
{
    apr_xml_parser *parser = ctx;

    XML_ParserFree(parser->xp);
    parser->xp = ((void*)0);

    return APR_SUCCESS;
}
