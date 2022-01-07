
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int digest_init (int ,int ,int,int) ;

tree do_digest_init (tree type, tree init)
{
  return digest_init (type, init, 1, 0);
}
