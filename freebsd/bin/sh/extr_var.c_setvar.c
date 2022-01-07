
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INTOFF ;
 int INTON ;
 int VUNSET ;
 char* ckmalloc (size_t) ;
 int error (char*,int,char const*) ;
 int is_in_name (char const) ;
 int is_name (char const) ;
 int memcpy (char*,char const*,size_t) ;
 int setvareq (char*,int) ;
 size_t strlen (char const*) ;

void
setvar(const char *name, const char *val, int flags)
{
 const char *p;
 size_t len;
 size_t namelen;
 size_t vallen;
 char *nameeq;
 int isbad;

 isbad = 0;
 p = name;
 if (! is_name(*p))
  isbad = 1;
 p++;
 for (;;) {
  if (! is_in_name(*p)) {
   if (*p == '\0' || *p == '=')
    break;
   isbad = 1;
  }
  p++;
 }
 namelen = p - name;
 if (isbad)
  error("%.*s: bad variable name", (int)namelen, name);
 len = namelen + 2;
 if (val == ((void*)0)) {
  flags |= VUNSET;
  vallen = 0;
 } else {
  vallen = strlen(val);
  len += vallen;
 }
 INTOFF;
 nameeq = ckmalloc(len);
 memcpy(nameeq, name, namelen);
 nameeq[namelen] = '=';
 if (val)
  memcpy(nameeq + namelen + 1, val, vallen + 1);
 else
  nameeq[namelen + 1] = '\0';
 setvareq(nameeq, flags);
 INTON;
}
