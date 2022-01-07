
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct message {struct message* next; } ;
typedef int bf ;


 char* escape (char const*,char*,int) ;
 struct message* mesage__find (char*) ;
 int message__add_file_line (struct message*,char*,int) ;
 struct message* message__list ;
 struct message* message__new (char*,char*,char*,int) ;

__attribute__((used)) static int message__add(const char *msg, char *option, char *file, int lineno)
{
 int rc = 0;
 char bf[16384];
 char *escaped = escape(msg, bf, sizeof(bf));
 struct message *m = mesage__find(escaped);

 if (m != ((void*)0))
  rc = message__add_file_line(m, file, lineno);
 else {
  m = message__new(escaped, option, file, lineno);

  if (m != ((void*)0)) {
   m->next = message__list;
   message__list = m;
  } else
   rc = -1;
 }
 return rc;
}
