
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct message {char* msg; } ;


 int message__print_file_lineno (struct message*) ;
 int printf (char*,char*) ;

__attribute__((used)) static void message__print_gettext_msgid_msgstr(struct message *self)
{
 message__print_file_lineno(self);

 printf("msgid %s\n"
        "msgstr \"\"\n", self->msg);
}
