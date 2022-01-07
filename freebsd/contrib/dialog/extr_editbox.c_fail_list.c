
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dlg_exiterr (char*) ;

__attribute__((used)) static void
fail_list(void)
{
    dlg_exiterr("File too large");
}
