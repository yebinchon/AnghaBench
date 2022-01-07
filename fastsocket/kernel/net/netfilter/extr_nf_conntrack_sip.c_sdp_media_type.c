
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdp_media_type {unsigned int len; int name; } ;


 unsigned int ARRAY_SIZE (struct sdp_media_type*) ;
 struct sdp_media_type* sdp_media_types ;
 scalar_t__ strncmp (char const*,int ,unsigned int) ;

__attribute__((used)) static const struct sdp_media_type *sdp_media_type(const char *dptr,
         unsigned int matchoff,
         unsigned int matchlen)
{
 const struct sdp_media_type *t;
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(sdp_media_types); i++) {
  t = &sdp_media_types[i];
  if (matchlen < t->len ||
      strncmp(dptr + matchoff, t->name, t->len))
   continue;
  return t;
 }
 return ((void*)0);
}
