
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ABMON_1 ;
 int ABMON_10 ;
 int ABMON_11 ;
 int ABMON_12 ;
 int ABMON_2 ;
 int ABMON_3 ;
 int ABMON_4 ;
 int ABMON_5 ;
 int ABMON_6 ;
 int ABMON_7 ;
 int ABMON_8 ;
 int ABMON_9 ;
 int abort () ;
 char const* nl_langinfo (int ) ;

__attribute__((used)) static const char *
get_abmon(int mon)
{

 switch (mon) {
 case 0: return (nl_langinfo(ABMON_1));
 case 1: return (nl_langinfo(ABMON_2));
 case 2: return (nl_langinfo(ABMON_3));
 case 3: return (nl_langinfo(ABMON_4));
 case 4: return (nl_langinfo(ABMON_5));
 case 5: return (nl_langinfo(ABMON_6));
 case 6: return (nl_langinfo(ABMON_7));
 case 7: return (nl_langinfo(ABMON_8));
 case 8: return (nl_langinfo(ABMON_9));
 case 9: return (nl_langinfo(ABMON_10));
 case 10: return (nl_langinfo(ABMON_11));
 case 11: return (nl_langinfo(ABMON_12));
 }


 abort();
}
