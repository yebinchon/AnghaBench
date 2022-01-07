
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int rtx ;
typedef TYPE_1__* basic_block ;
struct TYPE_5__ {int index; } ;


 int BB_HEAD (TYPE_1__*) ;
 int LABEL_P (int ) ;
 int block_label (TYPE_1__*) ;
 scalar_t__ dump_file ;
 int fprintf (scalar_t__,char*,int) ;

__attribute__((used)) static rtx
label_for_bb (basic_block bb)
{
  rtx label = BB_HEAD (bb);

  if (!LABEL_P (label))
    {
      if (dump_file)
 fprintf (dump_file, "Emitting label for block %d\n", bb->index);

      label = block_label (bb);
    }

  return label;
}
