
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int debugformat; } ;


 TYPE_1__* current_subfile ;
 int savestring (char*,int ) ;
 int strlen (char*) ;

void
record_debugformat (char *format)
{
  current_subfile->debugformat = savestring (format, strlen (format));
}
