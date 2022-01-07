
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef enum include_type { ____Placeholder_include_type } include_type ;
struct TYPE_7__ {TYPE_1__* buffer; } ;
typedef TYPE_2__ cpp_reader ;
struct TYPE_6__ {int prev; } ;


 int CPP_DL_WARNING ;
 int IT_INCLUDE ;
 int IT_INCLUDE_NEXT ;
 int cpp_error (TYPE_2__*,int ,char*) ;
 int do_include_common (TYPE_2__*,int) ;

__attribute__((used)) static void
do_include_next (cpp_reader *pfile)
{
  enum include_type type = IT_INCLUDE_NEXT;



  if (! pfile->buffer->prev)
    {
      cpp_error (pfile, CPP_DL_WARNING,
   "#include_next in primary source file");
      type = IT_INCLUDE;
    }
  do_include_common (pfile, type);
}
