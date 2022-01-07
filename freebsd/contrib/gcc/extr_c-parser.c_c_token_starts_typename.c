
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; int keyword; int id_kind; } ;
typedef TYPE_1__ c_token ;
 int c_dialect_objc () ;
 int gcc_assert (int ) ;
 int gcc_unreachable () ;

__attribute__((used)) static bool
c_token_starts_typename (c_token *token)
{
  switch (token->type)
    {
    case 153:
      switch (token->id_kind)
 {
 case 151:
   return 0;
 case 150:
   return 1;
 case 152:
   gcc_assert (c_dialect_objc ());
   return 1;
 default:
   gcc_unreachable ();
 }
    case 155:
      switch (token->keyword)
 {
 case 130:
 case 137:
 case 135:
 case 134:
 case 146:
 case 138:
 case 147:
 case 139:
 case 141:
 case 129:
 case 143:
 case 142:
 case 144:
 case 148:
 case 140:
 case 133:
 case 131:
 case 132:
 case 145:
 case 128:
 case 136:
 case 149:
   return 1;
 default:
   return 0;
 }
    case 154:
      if (c_dialect_objc ())
 return 1;
      return 0;
    default:
      return 0;
    }
}
