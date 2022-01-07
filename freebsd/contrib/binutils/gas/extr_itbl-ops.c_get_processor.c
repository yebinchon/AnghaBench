
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int e_processor ;


 int e_invproc ;
 int e_nprocs ;
 int e_p0 ;

__attribute__((used)) static e_processor
get_processor (int yyproc)
{

  if (yyproc >= e_p0 && yyproc < e_nprocs)
    return (e_processor) yyproc;
  return e_invproc;
}
