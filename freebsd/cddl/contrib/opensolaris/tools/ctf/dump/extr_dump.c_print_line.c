
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,char const*,int,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static void
print_line(const char *s)
{
 static const char line[] = "----------------------------------------"
     "----------------------------------------";
 (void) printf("\n%s%.*s\n\n", s, (int)(78 - strlen(s)), line);
}
