
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct magic_set {int flags; } ;


 int MAGIC_CONTINUE ;
 int file_separator (struct magic_set*) ;

__attribute__((used)) static int
checkdone(struct magic_set *ms, int *rv)
{
 if ((ms->flags & MAGIC_CONTINUE) == 0)
  return 1;
 if (file_separator(ms) == -1)
  *rv = -1;
 return 0;
}
