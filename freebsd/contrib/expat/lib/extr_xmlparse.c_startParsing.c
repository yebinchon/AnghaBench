
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* XML_Parser ;
typedef int XML_Bool ;
struct TYPE_5__ {scalar_t__ m_hash_secret_salt; scalar_t__ m_ns; } ;


 int XML_TRUE ;
 scalar_t__ generate_hash_secret_salt (TYPE_1__*) ;
 int implicitContext ;
 int setContext (TYPE_1__*,int ) ;

__attribute__((used)) static XML_Bool
startParsing(XML_Parser parser)
{

    if (parser->m_hash_secret_salt == 0)
      parser->m_hash_secret_salt = generate_hash_secret_salt(parser);
    if (parser->m_ns) {



      return setContext(parser, implicitContext);
    }
    return XML_TRUE;
}
