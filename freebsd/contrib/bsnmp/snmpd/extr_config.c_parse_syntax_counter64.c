
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int counter64; } ;
struct snmp_value {TYPE_1__ v; } ;


 scalar_t__ TOK_NUM ;
 int gettoken () ;
 int numval ;
 int report (char*) ;
 scalar_t__ token ;

__attribute__((used)) static void
parse_syntax_counter64(struct snmp_value *value)
{
 if (token != TOK_NUM)
  report("bad COUNTER64 syntax");

 value->v.counter64 = numval;
 gettoken();
}
