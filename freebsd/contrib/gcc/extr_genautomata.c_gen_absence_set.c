
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int FALSE ;
 int gen_presence_absence_set (int ,int ,int ) ;

__attribute__((used)) static void
gen_absence_set (rtx def)
{
  gen_presence_absence_set (def, FALSE, FALSE);
}
