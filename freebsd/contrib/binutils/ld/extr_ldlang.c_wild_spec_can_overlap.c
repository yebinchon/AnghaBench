
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_boolean ;


 scalar_t__ memcmp (char const*,char const*,size_t) ;
 size_t strcspn (char const*,char*) ;

__attribute__((used)) static bfd_boolean
wild_spec_can_overlap (const char *name1, const char *name2)
{
  size_t prefix1_len = strcspn (name1, "?*[");
  size_t prefix2_len = strcspn (name2, "?*[");
  size_t min_prefix_len;




  if (name1[prefix1_len] == '\0')
    prefix1_len++;
  if (name2[prefix2_len] == '\0')
    prefix2_len++;

  min_prefix_len = prefix1_len < prefix2_len ? prefix1_len : prefix2_len;

  return memcmp (name1, name2, min_prefix_len) == 0;
}
