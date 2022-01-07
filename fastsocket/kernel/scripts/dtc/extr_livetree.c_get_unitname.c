
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node {char* name; size_t basenamelen; } ;



const char *get_unitname(struct node *node)
{
 if (node->name[node->basenamelen] == '\0')
  return "";
 else
  return node->name + node->basenamelen + 1;
}
