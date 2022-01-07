
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int wchar_t ;
typedef int temp ;
typedef int state ;
typedef int mbstate_t ;
typedef char const chtype ;
typedef int cchar_t ;
struct TYPE_4__ {int* list; } ;
typedef TYPE_1__ CACHE ;


 char const TAB ;
 char UCH (char const) ;
 int cInxCols ;
 int dlg_count_wchars (char const*) ;
 int* dlg_index_wchars (char const*) ;
 scalar_t__ have_locale () ;
 scalar_t__ isprint (char) ;
 TYPE_1__* load_cache (int ,char const*) ;
 size_t mbrtowc (int *,char const*,size_t,int *) ;
 int memset (int *,int ,int) ;
 int same_cache2 (TYPE_1__*,char const*,unsigned int) ;
 int setcchar (int *,int *,int ,int ,int ) ;
 size_t strlen (char const*) ;
 char* unctrl (char const) ;
 scalar_t__ wcslen (int const*) ;
 int wcwidth (int ) ;
 int * wunctrl (int *) ;

const int *
dlg_index_columns(const char *string)
{
    unsigned len = (unsigned) dlg_count_wchars(string);
    unsigned inx;
    CACHE *cache = load_cache(cInxCols, string);

    if (!same_cache2(cache, string, len)) {
 cache->list[0] = 0;
 {
     for (inx = 0; inx < len; ++inx) {
  chtype ch = UCH(string[inx]);

  if (ch == TAB)
      cache->list[inx + 1] =
   ((cache->list[inx] | 7) + 1) - cache->list[inx];
  else if (isprint(UCH(ch)))
      cache->list[inx + 1] = 1;
  else {
      const char *printable;
      printable = unctrl(ch);
      cache->list[inx + 1] = (printable
         ? (int) strlen(printable)
         : 1);
  }
  if (inx != 0)
      cache->list[inx + 1] += cache->list[inx];
     }
 }
    }
    return cache->list;
}
