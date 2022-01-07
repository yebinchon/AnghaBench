
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ LABEL_NAME (int ) ;
 int LABEL_PRESERVE_P (int ) ;
 int forced_labels ;
 int in_expr_list_p (int ,int ) ;

__attribute__((used)) static int
can_delete_label_p (rtx label)
{
  return (!LABEL_PRESERVE_P (label)

   && LABEL_NAME (label) == 0
   && !in_expr_list_p (forced_labels, label));
}
