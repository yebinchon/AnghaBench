
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERANGE ;
 int memcpy (char*,char const*,int) ;
 int strlen (char const*) ;

__attribute__((used)) static int ocfs2_xattr_list_entry(char *buffer, size_t size,
      size_t *result, const char *prefix,
      const char *name, int name_len)
{
 char *p = buffer + *result;
 int prefix_len = strlen(prefix);
 int total_len = prefix_len + name_len + 1;

 *result += total_len;


 if (!size)
  return 0;

 if (*result > size)
  return -ERANGE;

 memcpy(p, prefix, prefix_len);
 memcpy(p + prefix_len, name, name_len);
 p[prefix_len + name_len] = '\0';

 return 0;
}
