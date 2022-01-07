
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fputs (char const*,int ) ;
 unsigned int offset ;
 int putchar (int ) ;
 int stdout ;
 int strlen (char const*) ;

__attribute__((used)) static void push_string(const char *name)
{
 unsigned int name_len = strlen(name) + 1;

 fputs(name, stdout);
 putchar(0);
 offset += name_len;
}
