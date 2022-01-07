
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Buffer ;


 int Buf_AddBytes (int *,int,char*) ;
 char* strchr (char*,char) ;
 int strlen (char*) ;

void
Str_SYSVSubst(Buffer *buf, char *pat, char *src, int len)
{
    char *m;

    if ((m = strchr(pat, '%')) != ((void*)0)) {

 Buf_AddBytes(buf, m - pat, pat);

 pat = m + 1;
    }


    Buf_AddBytes(buf, len, src);


    Buf_AddBytes(buf, strlen(pat), pat);
}
