
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SmiNode ;


 int * last_node ;

__attribute__((used)) static void
save_node(SmiNode *n)
{
 if (n != ((void*)0))
  last_node = n;
}
