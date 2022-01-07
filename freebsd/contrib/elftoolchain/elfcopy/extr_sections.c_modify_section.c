
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct section {char* buf; size_t sz; int nocopy; int name; } ;
struct sec_action {char* string; } ;
struct elfcopy {int dummy; } ;


 int EXIT_FAILURE ;
 int err (int ,char*) ;
 scalar_t__ is_append_section (struct elfcopy*,int ) ;
 scalar_t__ is_compress_section (struct elfcopy*,int ) ;
 struct sec_action* lookup_sec_act (struct elfcopy*,int ,int ) ;
 char* malloc (size_t) ;
 int memcpy (char*,char*,size_t) ;
 char* read_section (struct section*,size_t*) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (char*) ;
 int strncpy (char*,char*,size_t) ;

__attribute__((used)) static void
modify_section(struct elfcopy *ecp, struct section *s)
{
 struct sec_action *sac;
 size_t srcsz, dstsz, p, len;
 char *b, *c, *d, *src, *end;
 int dupe;

 src = read_section(s, &srcsz);
 if (src == ((void*)0) || srcsz == 0) {

  if (!is_append_section(ecp, s->name))
   return;
 }


 dstsz = srcsz;
 if (is_append_section(ecp, s->name)) {
  sac = lookup_sec_act(ecp, s->name, 0);
  dstsz += strlen(sac->string) + 1;
 }
 if ((b = malloc(dstsz)) == ((void*)0))
  err(EXIT_FAILURE, "malloc failed");
 s->buf = b;


 p = 0;
 if (is_compress_section(ecp, s->name)) {
  end = src + srcsz;
  for(c = src; c < end;) {
   len = 0;
   while(c + len < end && c[len] != '\0')
    len++;
   if (c + len == end) {

    strncpy(&b[p], c, len);
    p += len;
    break;
   }
   dupe = 0;
   for (d = b; d < b + p; ) {
    if (strcmp(d, c) == 0) {
     dupe = 1;
     break;
    }
    d += strlen(d) + 1;
   }
   if (!dupe) {
    strncpy(&b[p], c, len);
    b[p + len] = '\0';
    p += len + 1;
   }
   c += len + 1;
  }
 } else {
  memcpy(b, src, srcsz);
  p += srcsz;
 }


 if (is_append_section(ecp, s->name)) {
  sac = lookup_sec_act(ecp, s->name, 0);
  len = strlen(sac->string);
  strncpy(&b[p], sac->string, len);
  b[p + len] = '\0';
  p += len + 1;
 }

 s->sz = p;
 s->nocopy = 1;
}
