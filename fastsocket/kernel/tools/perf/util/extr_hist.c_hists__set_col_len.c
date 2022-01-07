
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct hists {int * col_len; } ;
typedef enum hist_column { ____Placeholder_hist_column } hist_column ;



void hists__set_col_len(struct hists *hists, enum hist_column col, u16 len)
{
 hists->col_len[col] = len;
}
