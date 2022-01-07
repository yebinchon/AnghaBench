
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* dlg_strclone (char const*) ;
 int dlg_tab_correct_str (char*) ;
 int dlg_trim_string (char*) ;

__attribute__((used)) static char *
clean_copy(const char *string)
{
    char *result = dlg_strclone(string);

    dlg_trim_string(result);
    dlg_tab_correct_str(result);
    return result;
}
