
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_long ;
typedef int u_char ;
struct TYPE_3__ {scalar_t__ len; int* octets; } ;
struct TYPE_4__ {TYPE_1__ octetstring; } ;
struct snmp_value {TYPE_2__ v; } ;


 int ERRNEXT () ;
 int ERRPOP () ;
 scalar_t__ ERRPUSH () ;
 scalar_t__ TOK_NUM ;
 scalar_t__ TOK_STR ;
 int free (int*) ;
 char gettoken () ;
 int* malloc (scalar_t__) ;
 int memcpy (int*,int ,scalar_t__) ;
 int numval ;
 int* realloc (int*,scalar_t__) ;
 int report (char*) ;
 int strval ;
 scalar_t__ strvallen ;
 scalar_t__ token ;

__attribute__((used)) static void
parse_syntax_octetstring(struct snmp_value *value)
{
 u_long alloc;
 u_char *noct;

 if (token == TOK_STR) {
  value->v.octetstring.len = strvallen;
  value->v.octetstring.octets = malloc(strvallen);
  (void)memcpy(value->v.octetstring.octets, strval, strvallen);
  gettoken();
  return;
 }


 value->v.octetstring.octets = ((void*)0);
 value->v.octetstring.len = 0;

 if (token != TOK_NUM)

  return;

 if (ERRPUSH()) {
  free(value->v.octetstring.octets);
  ERRNEXT();
 }

 alloc = 0;
 for (;;) {
  if (token != TOK_NUM)
   report("bad OCTETSTRING syntax");
  if (numval > 0xff)
   report("byte value too large");
  if (alloc == value->v.octetstring.len) {
   alloc += 100;
   noct = realloc(value->v.octetstring.octets, alloc);
   if (noct == ((void*)0))
    report("%m");
   value->v.octetstring.octets = noct;
  }
  value->v.octetstring.octets[value->v.octetstring.len++]
      = numval;
  if (gettoken() != ':')
   break;
  gettoken();
 }
 ERRPOP();
}
