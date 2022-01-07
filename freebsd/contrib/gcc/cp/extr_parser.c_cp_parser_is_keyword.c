
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum rid { ____Placeholder_rid } rid ;
struct TYPE_3__ {int keyword; } ;
typedef TYPE_1__ cp_token ;



__attribute__((used)) static bool
cp_parser_is_keyword (cp_token* token, enum rid keyword)
{
  return token->keyword == keyword;
}
