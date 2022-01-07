
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sipkey {scalar_t__* k; } ;
typedef int XML_Parser ;


 scalar_t__ get_hash_secret_salt (int ) ;

__attribute__((used)) static void
copy_salt_to_sipkey(XML_Parser parser, struct sipkey * key)
{
  key->k[0] = 0;
  key->k[1] = get_hash_secret_salt(parser);
}
