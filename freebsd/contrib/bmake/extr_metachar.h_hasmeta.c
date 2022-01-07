
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ismeta (char const) ;

__attribute__((used)) static inline int
hasmeta(const char *cmd)
{
 while (!ismeta(*cmd))
  cmd++;

 return *cmd != '\0';
}
