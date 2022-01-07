
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dlg_count_real_columns (char const*) ;

__attribute__((used)) static int
centered(int width, const char *string)
{
    int need = dlg_count_real_columns(string);
    int left;

    left = (width - need) / 2 - 1;
    if (left < 0)
 left = 0;
    return left;
}
