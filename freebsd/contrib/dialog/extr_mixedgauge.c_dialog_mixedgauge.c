
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DIALOG_MIXEDGAUGE ;


 int DLG_EXIT_OK ;
 int DLG_TRACE (char*) ;
 int DLG_TRACE2N (char*,int) ;
 int DLG_TRACE2S (char*,char const*) ;
 int dlg_begin_mixedgauge (int *,int*,char const*,char const*,int,int,int,char**) ;
 int dlg_finish_mixedgauge (int *,int ) ;
 int dlg_update_mixedgauge (int *,int) ;

int
dialog_mixedgauge(const char *title,
    const char *cprompt,
    int height,
    int width,
    int percent,
    int item_no,
    char **items)
{
    DIALOG_MIXEDGAUGE dlg;
    int began = 0;

    DLG_TRACE(("# mixedgauge args:\n"));
    DLG_TRACE2S("title", title);
    DLG_TRACE2S("message", cprompt);
    DLG_TRACE2N("height", height);
    DLG_TRACE2N("width", width);
    DLG_TRACE2N("percent", percent);
    DLG_TRACE2N("llength", item_no);


    dlg_begin_mixedgauge(&dlg, &began, title, cprompt, height,
    width, item_no, items);

    dlg_update_mixedgauge(&dlg, percent);

    return dlg_finish_mixedgauge(&dlg, DLG_EXIT_OK);
}
