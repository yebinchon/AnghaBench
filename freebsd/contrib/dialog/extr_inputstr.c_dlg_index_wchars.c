
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int state ;
typedef int mbstate_t ;
struct TYPE_4__ {int* list; } ;
typedef TYPE_1__ CACHE ;


 int cInxWideChars ;
 int dlg_count_wchars (char const*) ;
 scalar_t__ have_locale () ;
 TYPE_1__* load_cache (int ,char const*) ;
 scalar_t__ mbrlen (char const*,int ,int *) ;
 int memset (int *,int ,int) ;
 int same_cache2 (TYPE_1__*,char const*,unsigned int) ;
 int strlen (char const*) ;

const int *
dlg_index_wchars(const char *string)
{
    unsigned len = (unsigned) dlg_count_wchars(string);
    unsigned inx;
    CACHE *cache = load_cache(cInxWideChars, string);

    if (!same_cache2(cache, string, len)) {
 const char *current = string;

 cache->list[0] = 0;
 for (inx = 1; inx <= len; ++inx) {
     {
  (void) current;
  cache->list[inx] = (int) inx;
     }
 }
    }
    return cache->list;
}
