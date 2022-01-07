
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_2__ {int* ipaddress; } ;
struct snmp_value {TYPE_1__ v; } ;


 scalar_t__ TOK_HOST ;
 scalar_t__ TOK_NUM ;
 int gethost (int ,int*) ;
 char gettoken () ;
 int numval ;
 int report (char*) ;
 int strval ;
 scalar_t__ token ;

__attribute__((used)) static void
parse_syntax_ipaddress(struct snmp_value *value)
{
 int i;
 u_char ip[4];

 if (token == TOK_NUM) {

  i = 0;
  for (;;) {
   if (numval >= 256)
    report("ip address part too large");
   value->v.ipaddress[i++] = numval;
   if (i == 4)
    break;
   if (gettoken() != '.')
    report("expecting '.' in ip address");
  }
  gettoken();

 } else if (token == TOK_HOST) {

  gethost(strval, ip);
  for (i = 0; i < 4; i++)
   value->v.ipaddress[i] = ip[i];
  gettoken();

 } else
  report("bad ip address syntax");
}
