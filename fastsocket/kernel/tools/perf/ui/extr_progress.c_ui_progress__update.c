
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {void (* update ) (int ,int ,char const*) ;} ;


 TYPE_1__* progress_fns ;
 void stub1 (int ,int ,char const*) ;

void ui_progress__update(u64 curr, u64 total, const char *title)
{
 return progress_fns->update(curr, total, title);
}
