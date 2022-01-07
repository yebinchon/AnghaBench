
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dupfd; int * vname; } ;
union node {TYPE_1__ ndup; } ;


 int TRACE (char*) ;
 int digit_val (char const) ;
 scalar_t__ is_digit (char const) ;
 int * makename () ;
 int synerror (char*) ;

void
fixredir(union node *n, const char *text, int err)
{
 TRACE(("Fix redir %s %d\n", text, err));
 if (!err)
  n->ndup.vname = ((void*)0);

 if (is_digit(text[0]) && text[1] == '\0')
  n->ndup.dupfd = digit_val(text[0]);
 else if (text[0] == '-' && text[1] == '\0')
  n->ndup.dupfd = -1;
 else {

  if (err)
   synerror("Bad fd number");
  else
   n->ndup.vname = makename();
 }
}
