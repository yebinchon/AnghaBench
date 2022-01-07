
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pr_handle {unsigned int indent; int f; } ;


 int putc (char,int ) ;

__attribute__((used)) static void
indent (struct pr_handle *info)
{
  unsigned int i;

  for (i = 0; i < info->indent; i++)
    putc (' ', info->f);
}
