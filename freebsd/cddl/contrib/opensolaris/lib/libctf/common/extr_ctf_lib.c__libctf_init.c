
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _PAGEMASK ;
 int _PAGESIZE ;
 int _libctf_debug ;
 char const* _libctf_zlib ;
 char* getenv (char*) ;
 int getpagesize () ;

void
_libctf_init(void)
{







 _libctf_debug = getenv("LIBCTF_DEBUG") != ((void*)0);

 _PAGESIZE = getpagesize();
 _PAGEMASK = ~(_PAGESIZE - 1);
}
