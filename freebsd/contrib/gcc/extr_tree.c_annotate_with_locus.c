
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
struct TYPE_3__ {int line; int file; } ;
typedef TYPE_1__ location_t ;


 int annotate_with_file_line (int ,int ,int ) ;

void
annotate_with_locus (tree node, location_t locus)
{
  annotate_with_file_line (node, locus.file, locus.line);
}
