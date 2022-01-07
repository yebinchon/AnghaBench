
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ wint_t ;
typedef void* wchar_t ;
typedef int state ;
typedef int mbstate_t ;
typedef int WINDOW ;


 scalar_t__ CharOf (char) ;


 int KEY_MAX ;
 int KEY_MIN ;

 scalar_t__ have_last_getc ;
 int last_getc ;
 char* last_getc_bytes ;
 int memset (int *,int ,int) ;
 scalar_t__ used_last_getc ;
 scalar_t__ wcrtomb (char*,void*,int *) ;
 int wget_wch (int *,scalar_t__*) ;
 int wgetch (int *) ;

__attribute__((used)) static int
really_getch(WINDOW *win, int *fkey)
{
    int ch;
    ch = wgetch(win);
    last_getc = ch;
    *fkey = (ch > KEY_MIN && ch < KEY_MAX);

    return ch;
}
