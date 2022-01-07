
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* XML_Parser ;
struct TYPE_3__ {unsigned long m_hash_secret_salt; struct TYPE_3__* m_parentParser; } ;



__attribute__((used)) static unsigned long
get_hash_secret_salt(XML_Parser parser) {
  if (parser->m_parentParser != ((void*)0))
    return get_hash_secret_salt(parser->m_parentParser);
  return parser->m_hash_secret_salt;
}
