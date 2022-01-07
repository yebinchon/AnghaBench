
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snmp_value {int syntax; } ;
struct snmp_node {int syntax; } ;
struct asn_oid {int dummy; } ;


 int ERRNEXT () ;
 int ERRPOP () ;
 scalar_t__ ERRPUSH () ;
 char TOK_EOF ;
 char TOK_EOL ;
 int abort () ;
 int gettoken () ;
 int handle_assignment (struct snmp_node const*,struct asn_oid*,struct snmp_value*) ;
 scalar_t__ ignore ;
 struct snmp_node* parse_oid (char const*,struct asn_oid*) ;
 int parse_syntax_counter64 (struct snmp_value*) ;
 int parse_syntax_integer (struct snmp_value*) ;
 int parse_syntax_ipaddress (struct snmp_value*) ;
 int parse_syntax_null (struct snmp_value*) ;
 int parse_syntax_octetstring (struct snmp_value*) ;
 int parse_syntax_oid (struct snmp_value*) ;
 int parse_syntax_uint32 (struct snmp_value*) ;
 int report (char*,...) ;
 int snmp_value_free (struct snmp_value*) ;
 char token ;

__attribute__((used)) static void
parse_assign(const char *varname)
{
 struct snmp_value value;
 struct asn_oid vindex;
 const struct snmp_node *node;

 node = parse_oid(varname, &vindex);
 if (token != '=')
  report("'=' expected, got '%c'", token);
 gettoken();

 if (ignore) {

  while (token != TOK_EOL && token != TOK_EOF)
   gettoken();
  return;
 }
 if (node == ((void*)0))
  report("unknown variable");

 switch (value.syntax = node->syntax) {

   case 131:
  parse_syntax_null(&value);
  break;

   case 135:
  parse_syntax_integer(&value);
  break;

   case 138:
  parse_syntax_counter64(&value);
  break;

   case 130:
  parse_syntax_octetstring(&value);
  break;

   case 129:
  parse_syntax_oid(&value);
  break;

   case 134:
  parse_syntax_ipaddress(&value);
  break;

   case 139:
   case 136:
   case 128:
  parse_syntax_uint32(&value);
  break;

   case 132:
   case 133:
   case 137:
  abort();
 }

 if (ERRPUSH()) {
  snmp_value_free(&value);
  ERRNEXT();
 }

 handle_assignment(node, &vindex, &value);

 ERRPOP();
}
