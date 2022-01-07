
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ismeta (char const) ;
 scalar_t__ isspace (unsigned char) ;

__attribute__((used)) static inline int
needshell(const char *cmd, int white)
{
 while (!ismeta(*cmd) && *cmd != ':' && *cmd != '=') {
  if (white && isspace((unsigned char)*cmd))
   break;
  cmd++;
 }

 return *cmd != '\0';
}
