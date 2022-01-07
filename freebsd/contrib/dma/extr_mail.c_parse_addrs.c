
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct queue {int dummy; } ;
struct parse_state {int state; int pos; int esc; int quote; int brackets; char* addr; scalar_t__ comment; } ;



 int EXPAND_WILDCARD ;
 int EX_DATAERR ;
 int EX_SOFTWARE ;




 scalar_t__ add_recp (struct queue*,char*,int ) ;
 int bzero (struct parse_state*,int) ;
 int errlog (int ,char*) ;
 int errlogx (int ,char*,char*) ;
 char* strdup (char*) ;

__attribute__((used)) static int
parse_addrs(struct parse_state *ps, char *s, struct queue *queue)
{
 char *addr;

again:
 switch (ps->state) {
 case 130:
  return (-1);

 case 128:

  bzero(ps, sizeof(*ps));


  while (*s != ':')
   s++;
  s++;
  ps->state = 131;
  break;

 case 131:

  break;

 case 132:
  switch (*s) {
  case ' ':
  case '\t':
   s++;

   break;

  default:
   ps->state = 129;
   if (ps->pos != 0)
    goto newaddr;
   return (0);
  }

 case 129:
  return (0);
 }

 for (; *s != 0; s++) {
  if (ps->esc) {
   ps->esc = 0;

   switch (*s) {
   case '\r':
   case '\n':
    goto err;

   default:
    goto copy;
   }
  }

  if (ps->quote) {
   switch (*s) {
   case '"':
    ps->quote = 0;
    goto copy;

   case '\\':
    ps->esc = 1;
    goto copy;

   case '\r':
   case '\n':
    goto eol;

   default:
    goto copy;
   }
  }

  switch (*s) {
  case '(':
   ps->comment++;
   break;

  case ')':
   if (ps->comment)
    ps->comment--;
   else
    goto err;
   goto skip;

  case '"':
   ps->quote = 1;
   goto copy;

  case '\\':
   ps->esc = 1;
   goto copy;

  case '\r':
  case '\n':
   goto eol;
  }

  if (ps->comment)
   goto skip;

  switch (*s) {
  case ' ':
  case '\t':

   goto skip;

  case '<':

   ps->brackets = 1;
   ps->pos = 0;
   goto skip;

  case '>':
   if (!ps->brackets)
    goto err;
   ps->brackets = 0;

   s++;
   goto newaddr;

  case ':':

   ps->pos = 0;
   goto skip;

  case ',':
  case ';':
   if (ps->pos == 0)
    goto skip;
   s++;
   goto newaddr;

  default:
   goto copy;
  }

copy:
  if (ps->comment)
   goto skip;

  if (ps->pos + 1 == sizeof(ps->addr))
   goto err;
  ps->addr[ps->pos++] = *s;

skip:
  ;
 }

eol:
 ps->state = 132;
 return (0);

err:
 ps->state = 129;
 return (-1);

newaddr:
 ps->addr[ps->pos] = 0;
 ps->pos = 0;
 addr = strdup(ps->addr);
 if (addr == ((void*)0))
  errlog(EX_SOFTWARE, "strdup");

 if (add_recp(queue, addr, EXPAND_WILDCARD) != 0)
  errlogx(EX_DATAERR, "invalid recipient `%s'", addr);

 goto again;
}
