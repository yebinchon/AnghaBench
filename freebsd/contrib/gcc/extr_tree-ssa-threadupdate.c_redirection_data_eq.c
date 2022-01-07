
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct redirection_data {scalar_t__ outgoing_edge; } ;
typedef scalar_t__ edge ;



__attribute__((used)) static int
redirection_data_eq (const void *p1, const void *p2)
{
  edge e1 = ((struct redirection_data *)p1)->outgoing_edge;
  edge e2 = ((struct redirection_data *)p2)->outgoing_edge;

  return e1 == e2;
}
