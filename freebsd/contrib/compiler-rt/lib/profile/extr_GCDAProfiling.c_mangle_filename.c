
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lprofApplyPathPrefix (char*,char const*,char const*,size_t,int) ;
 char* lprofGetPathPrefix (int*,size_t*) ;
 char* malloc (scalar_t__) ;
 char* strdup (char const*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static char *mangle_filename(const char *orig_filename) {
  char *new_filename;
  size_t prefix_len;
  int prefix_strip;
  const char *prefix = lprofGetPathPrefix(&prefix_strip, &prefix_len);

  if (prefix == ((void*)0))
    return strdup(orig_filename);

  new_filename = malloc(prefix_len + 1 + strlen(orig_filename) + 1);
  lprofApplyPathPrefix(new_filename, orig_filename, prefix, prefix_len,
                       prefix_strip);

  return new_filename;
}
