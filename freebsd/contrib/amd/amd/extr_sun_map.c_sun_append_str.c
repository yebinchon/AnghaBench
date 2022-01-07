
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SUN_KEY_SUB ;
 int XFREE (char*) ;
 char* sun_expand2amd (char*) ;
 char* sun_strsub (char const*,int ,char*) ;
 int xstrlcat (char*,char*,size_t) ;

__attribute__((used)) static void
sun_append_str(char *dest,
        size_t destlen,
        const char *key,
        const char *str)
{
  char *sub = ((void*)0), *sub2 = ((void*)0), *out = ((void*)0);


  out = (char*)str;
  if ((sub = sun_strsub(str, SUN_KEY_SUB, "${key}")) != ((void*)0)) {
    out = sub;




    if ((sub2 = sun_expand2amd(sub)) != ((void*)0)) {
      out = sub2;
    }
  }




  else if (out != ((void*)0) && (sub = sun_expand2amd(out)) != ((void*)0)) {
    out = sub;
  }

  if (out != ((void*)0)) {
    xstrlcat(dest, out, destlen);
  }
  XFREE(sub);
  XFREE(sub2);
}
