
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 char* expand_op (char*,int ) ;

__attribute__((used)) static inline char *
expand_options(char *key)
{
  return expand_op(key, FALSE);
}
