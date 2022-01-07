
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int code; int str; } ;


 int _ (char*) ;
 int as_bad (int ,int ) ;
 TYPE_1__ cur_token ;
 int intel_get_token () ;

__attribute__((used)) static int
intel_match_token (int code)
{
  if (cur_token.code == code)
    {
      intel_get_token ();
      return 1;
    }
  else
    {
      as_bad (_("Unexpected token `%s'"), cur_token.str);
      return 0;
    }
}
