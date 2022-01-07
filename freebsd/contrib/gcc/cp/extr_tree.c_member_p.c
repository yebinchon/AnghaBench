
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ DECL_CONTEXT (scalar_t__) ;
 scalar_t__ TYPE_P (scalar_t__ const) ;

int
member_p (tree decl)
{
  const tree ctx = DECL_CONTEXT (decl);
  return (ctx && TYPE_P (ctx));
}
