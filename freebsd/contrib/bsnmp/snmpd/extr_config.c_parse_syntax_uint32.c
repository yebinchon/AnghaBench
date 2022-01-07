
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int uint32; } ;
struct snmp_value {TYPE_1__ v; } ;


 scalar_t__ TOK_NUM ;
 int gettoken () ;
 int numval ;
 int report (char*) ;
 scalar_t__ token ;

__attribute__((used)) static void
parse_syntax_uint32(struct snmp_value *value)
{

 if (token != TOK_NUM)
  report("bad number syntax");
 if (numval > 0xffffffff)
  report("number too large");
 value->v.uint32 = numval;
 gettoken();
}
