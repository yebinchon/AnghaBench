
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_match {int dummy; } ;


 int xt_unregister_match (struct xt_match*) ;

void
xt_unregister_matches(struct xt_match *match, unsigned int n)
{
 unsigned int i;

 for (i = 0; i < n; i++)
  xt_unregister_match(&match[i]);
}
