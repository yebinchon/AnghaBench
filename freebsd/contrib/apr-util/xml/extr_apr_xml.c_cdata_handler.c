
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int p; TYPE_3__* cur_elem; scalar_t__ error; } ;
typedef TYPE_2__ apr_xml_parser ;
struct TYPE_6__ {TYPE_1__* last_child; int first_cdata; } ;
typedef TYPE_3__ apr_xml_elem ;
typedef int apr_text_header ;
struct TYPE_4__ {int following_cdata; } ;


 char* apr_pstrndup (int ,char const*,int) ;
 int apr_text_append (int ,int *,char const*) ;

__attribute__((used)) static void cdata_handler(void *userdata, const char *data, int len)
{
    apr_xml_parser *parser = userdata;
    apr_xml_elem *elem;
    apr_text_header *hdr;
    const char *s;


    if (parser->error)
 return;

    elem = parser->cur_elem;
    s = apr_pstrndup(parser->p, data, len);

    if (elem->last_child == ((void*)0)) {

 hdr = &elem->first_cdata;
    }
    else {

 hdr = &elem->last_child->following_cdata;
    }

    apr_text_append(parser->p, hdr, s);
}
