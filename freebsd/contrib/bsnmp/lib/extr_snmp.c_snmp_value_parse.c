
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int len; int * subs; } ;
struct TYPE_3__ {char* octets; int len; } ;
union snmp_values {void* counter64; int uint32; int ipaddress; TYPE_2__ oid; TYPE_1__ octetstring; int integer; } ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int u_long ;
typedef char u_char ;
struct hostent {int h_addr; int h_addrtype; } ;
typedef enum snmp_syntax { ____Placeholder_snmp_syntax } snmp_syntax ;
typedef int asn_subid_t ;


 int AF_INET ;
 int ASN_MAXID ;
 int ASN_MAXOIDLEN ;
 int STUFFC (int) ;
 int abort () ;
 int free (char*) ;
 struct hostent* gethostbyname2 (char const*,int ) ;
 int inet_pton (int ,char const*,int *) ;
 int isdigit (char const) ;
 int isupper (char const) ;
 int isxdigit (char const) ;
 int memcpy (int ,int ,int) ;
 int strtoll (char const*,char**,int ) ;
 int strtoul (char const*,char**,int) ;
 void* strtoull (char const*,char**,int ) ;

int
snmp_value_parse(const char *str, enum snmp_syntax syntax, union snmp_values *v)
{
 char *end;

 switch (syntax) {

   case 131:
   case 132:
   case 133:
   case 137:
  if (*str != '\0')
   return (-1);
  return (0);

   case 135:
  v->integer = strtoll(str, &end, 0);
  if (*end != '\0')
   return (-1);
  return (0);

   case 130:
     {
  u_long len;
  u_long alloc;
  u_char *octs;
  u_long oct;
  u_char *nocts;
  u_char c;
  len = alloc = 0;
  octs = ((void*)0);

  if (*str == '"') {
   str++;
   while((c = *str++) != '\0') {
    if (c == '"') {
     if (*str != '\0') {
      free(octs);
      return (-1);
     }
     break;
    }
    if (c == '\\') {
     switch (c = *str++) {

       case '\\':
      break;
       case 'a':
      c = '\a';
      break;
       case 'b':
      c = '\b';
      break;
       case 'f':
      c = '\f';
      break;
       case 'n':
      c = '\n';
      break;
       case 'r':
      c = '\r';
      break;
       case 't':
      c = '\t';
      break;
       case 'v':
      c = '\v';
      break;
       case 'x':
      c = 0;
      if (!isxdigit(*str))
       break;
      if (isdigit(*str))
       c = *str++ - '0';
      else if (isupper(*str))
       c = *str++ - 'A' + 10;
      else
       c = *str++ - 'a' + 10;
      if (!isxdigit(*str))
       break;
      if (isdigit(*str))
       c += *str++ - '0';
      else if (isupper(*str))
       c += *str++ - 'A' + 10;
      else
       c += *str++ - 'a' + 10;
      break;
       case '0': case '1': case '2':
       case '3': case '4': case '5':
       case '6': case '7':
      c = *str++ - '0';
      if (*str < '0' || *str > '7')
       break;
      c = *str++ - '0';
      if (*str < '0' || *str > '7')
       break;
      c = *str++ - '0';
      break;
       default:
      break;
     }
    }
    if (alloc == len) { alloc += 100; if ((nocts = realloc(octs, alloc)) == ((void*)0)) { free(octs); return (-1); } octs = nocts; } octs[len++] = (c);;
   }
  } else {
   while (*str != '\0') {
    oct = strtoul(str, &end, 16);
    str = end;
    if (oct > 0xff) {
     free(octs);
     return (-1);
    }
    if (alloc == len) { alloc += 100; if ((nocts = realloc(octs, alloc)) == ((void*)0)) { free(octs); return (-1); } octs = nocts; } octs[len++] = (oct);;
    if (*str == ':')
     str++;
    else if(*str != '\0') {
     free(octs);
     return (-1);
    }
   }
  }
  v->octetstring.octets = octs;
  v->octetstring.len = len;
  return (0);

     }

   case 129:
     {
  u_long subid;

  v->oid.len = 0;

  for (;;) {
   if (v->oid.len == ASN_MAXOIDLEN)
    return (-1);
   subid = strtoul(str, &end, 10);
   str = end;
   if (subid > ASN_MAXID)
    return (-1);
   v->oid.subs[v->oid.len++] = (asn_subid_t)subid;
   if (*str == '\0')
    break;
   if (*str != '.')
    return (-1);
   str++;
  }
  return (0);
     }

   case 134:
     {
  struct hostent *he;

  if (inet_pton(AF_INET, str, &v->ipaddress) == 1)
   return (0);
  if ((he = gethostbyname2(str, AF_INET)) == ((void*)0))
   return (-1);
  if (he->h_addrtype != AF_INET)
   return (-1);

  memcpy(v->ipaddress, he->h_addr, sizeof(v->ipaddress));

  return (0);
     }

   case 139:
   case 136:
   case 128:
     {
  uint64_t sub;

  sub = strtoull(str, &end, 0);
  if (*end != '\0' || sub > 0xffffffff)
   return (-1);
  v->uint32 = (uint32_t)sub;
  return (0);
     }

   case 138:
  v->counter64 = strtoull(str, &end, 0);
  if (*end != '\0')
   return (-1);
  return (0);
 }
 abort();
}
