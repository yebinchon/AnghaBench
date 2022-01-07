
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ dtrace_stability_t ;
typedef scalar_t__ dtrace_class_t ;
struct TYPE_4__ {scalar_t__ dtat_class; scalar_t__ dtat_data; scalar_t__ dtat_name; } ;
typedef TYPE_1__ dtrace_attribute_t ;


 scalar_t__ DTRACE_CLASS_MAX ;
 scalar_t__ DTRACE_STABILITY_MAX ;
 TYPE_1__ _dtrace_maxattr ;
 char* alloca (scalar_t__) ;
 char* dt_getstrattr (char*,char**) ;
 int dtrace_class_name (scalar_t__) ;
 int dtrace_stability_name (scalar_t__) ;
 scalar_t__ strcasecmp (char*,int ) ;
 int strcpy (char*,char const*) ;
 scalar_t__ strlen (char const*) ;

int
dtrace_str2attr(const char *str, dtrace_attribute_t *attr)
{
 dtrace_stability_t s;
 dtrace_class_t c;
 char *p, *q;

 if (str == ((void*)0) || attr == ((void*)0))
  return (-1);

 *attr = _dtrace_maxattr;
 p = alloca(strlen(str) + 1);
 (void) strcpy(p, str);

 if ((p = dt_getstrattr(p, &q)) == ((void*)0))
  return (0);

 for (s = 0; s <= DTRACE_STABILITY_MAX; s++) {
  if (strcasecmp(p, dtrace_stability_name(s)) == 0) {
   attr->dtat_name = s;
   break;
  }
 }

 if (s > DTRACE_STABILITY_MAX)
  return (-1);

 if ((p = dt_getstrattr(q, &q)) == ((void*)0))
  return (0);

 for (s = 0; s <= DTRACE_STABILITY_MAX; s++) {
  if (strcasecmp(p, dtrace_stability_name(s)) == 0) {
   attr->dtat_data = s;
   break;
  }
 }

 if (s > DTRACE_STABILITY_MAX)
  return (-1);

 if ((p = dt_getstrattr(q, &q)) == ((void*)0))
  return (0);

 for (c = 0; c <= DTRACE_CLASS_MAX; c++) {
  if (strcasecmp(p, dtrace_class_name(c)) == 0) {
   attr->dtat_class = c;
   break;
  }
 }

 if (c > DTRACE_CLASS_MAX || (p = dt_getstrattr(q, &q)) != ((void*)0))
  return (-1);

 return (0);
}
