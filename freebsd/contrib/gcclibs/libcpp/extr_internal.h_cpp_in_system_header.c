
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* buffer; } ;
typedef TYPE_2__ cpp_reader ;
struct TYPE_4__ {int sysp; } ;



__attribute__((used)) static inline int
cpp_in_system_header (cpp_reader *pfile)
{
  return pfile->buffer ? pfile->buffer->sysp : 0;
}
