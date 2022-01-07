
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int rc_ver_stringinfo ;
struct TYPE_6__ {int * strings; int language; } ;
struct TYPE_7__ {TYPE_1__ string; } ;
struct TYPE_8__ {struct TYPE_8__* next; TYPE_2__ u; int type; } ;
typedef TYPE_3__ rc_ver_info ;
typedef int rc_uint_type ;


 int VERINFO_STRING ;
 scalar_t__ res_alloc (int) ;
 int unicode_from_ascii (int *,int *,char const*) ;

rc_ver_info *
append_ver_stringfileinfo (rc_ver_info *verinfo, const char *language,
      rc_ver_stringinfo *strings)
{
  rc_ver_info *vi, **pp;

  vi = (rc_ver_info *) res_alloc (sizeof (rc_ver_info));
  vi->next = ((void*)0);
  vi->type = VERINFO_STRING;
  unicode_from_ascii ((rc_uint_type *) ((void*)0), &vi->u.string.language, language);
  vi->u.string.strings = strings;

  for (pp = &verinfo; *pp != ((void*)0); pp = &(*pp)->next)
    ;
  *pp = vi;

  return verinfo;
}
