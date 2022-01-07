
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int cpp_token ;
struct TYPE_6__ {int a_buff; } ;
typedef TYPE_1__ cpp_reader ;
struct TYPE_7__ {int count; } ;
typedef TYPE_2__ cpp_macro ;


 scalar_t__ BUFF_FRONT (int ) ;
 int BUFF_ROOM (int ) ;
 int _cpp_extend_buff (TYPE_1__*,int *,int) ;

__attribute__((used)) static cpp_token *
alloc_expansion_token (cpp_reader *pfile, cpp_macro *macro)
{
  if (BUFF_ROOM (pfile->a_buff) < (macro->count + 1) * sizeof (cpp_token))
    _cpp_extend_buff (pfile, &pfile->a_buff, sizeof (cpp_token));

  return &((cpp_token *) BUFF_FRONT (pfile->a_buff))[macro->count++];
}
