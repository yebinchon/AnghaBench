
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {long tab_len; } ;
struct TYPE_3__ {int begin_y; int begin_x; scalar_t__ tab_correct; scalar_t__ begin_set; } ;
typedef int FILE ;


 int MAX (int,int) ;
 int MIN (int,int) ;
 int SCOLS ;
 int SLINES ;
 int TAB ;
 TYPE_2__ dialog_state ;
 TYPE_1__ dialog_vars ;
 int dlg_count_columns (char const*) ;
 int dlg_exiterr (char*,char const*) ;
 int fclose (int *) ;
 int feof (int *) ;
 scalar_t__ ferror (int *) ;
 int * fopen (char const*,char*) ;
 int getc (int *) ;

void
dlg_auto_sizefile(const char *title,
    const char *file,
    int *height,
    int *width,
    int boxlines,
    int mincols)
{
    int count = 0;
    int len = title ? dlg_count_columns(title) : 0;
    int nc = 4;
    int numlines = 2;
    long offset;
    int ch;
    FILE *fd;


    if ((fd = fopen(file, "rb")) == ((void*)0))
 dlg_exiterr("dlg_auto_sizefile: Cannot open input file %s", file);

    if ((*height == -1) || (*width == -1)) {
 *height = SLINES - (dialog_vars.begin_set ? dialog_vars.begin_y : 0);
 *width = SCOLS - (dialog_vars.begin_set ? dialog_vars.begin_x : 0);
    }
    if ((*height != 0) && (*width != 0)) {
 (void) fclose(fd);
 if (*width > SCOLS)
     *width = SCOLS;
 if (*height > SLINES)
     *height = SLINES;
 return;
    }

    while (!feof(fd)) {
 if (ferror(fd))
     break;
 offset = 0;
 while (((ch = getc(fd)) != '\n') && !feof(fd)) {
     if ((ch == TAB) && (dialog_vars.tab_correct)) {
  offset += dialog_state.tab_len - (offset % dialog_state.tab_len);
     } else {
  offset++;
     }
 }

 if (offset > len)
     len = (int) offset;

 count++;
    }



    *height = MIN(SLINES, count + numlines + boxlines);
    *width = MIN(SCOLS, MAX((len + nc), mincols));




    (void) fclose(fd);
}
