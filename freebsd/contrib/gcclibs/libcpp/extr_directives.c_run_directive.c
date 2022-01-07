
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uchar ;
struct TYPE_12__ {TYPE_7__* directive; } ;
typedef TYPE_1__ cpp_reader ;
struct TYPE_13__ {int (* handler ) (TYPE_1__*) ;} ;


 scalar_t__ CPP_OPTION (TYPE_1__*,int ) ;
 int _cpp_clean_line (TYPE_1__*) ;
 int _cpp_pop_buffer (TYPE_1__*) ;
 int cpp_push_buffer (TYPE_1__*,int const*,size_t,int) ;
 TYPE_7__* dtable ;
 int end_directive (TYPE_1__*,int) ;
 int prepare_directive_trad (TYPE_1__*) ;
 int start_directive (TYPE_1__*) ;
 int stub1 (TYPE_1__*) ;
 int traditional ;

__attribute__((used)) static void
run_directive (cpp_reader *pfile, int dir_no, const char *buf, size_t count)
{
  cpp_push_buffer (pfile, (const uchar *) buf, count,
                       1);
  start_directive (pfile);



  _cpp_clean_line (pfile);

  pfile->directive = &dtable[dir_no];
  if (CPP_OPTION (pfile, traditional))
    prepare_directive_trad (pfile);
  pfile->directive->handler (pfile);
  end_directive (pfile, 1);
  _cpp_pop_buffer (pfile);
}
