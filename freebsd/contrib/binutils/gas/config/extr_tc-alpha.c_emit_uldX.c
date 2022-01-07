
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int expressionS ;


 int assemble_tokens (int ,int const*,int,int) ;
 int emit_uldXu (int const*,int,void const*) ;
 int * sextX_op ;

__attribute__((used)) static void
emit_uldX (const expressionS *tok,
    int ntok,
    const void * vlgsize)
{
  emit_uldXu (tok, ntok, vlgsize);
  assemble_tokens (sextX_op[(long) vlgsize], tok, 1, 1);
}
