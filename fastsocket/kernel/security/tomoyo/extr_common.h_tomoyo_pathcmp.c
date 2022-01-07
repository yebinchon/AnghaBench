
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tomoyo_path_info {scalar_t__ hash; int name; } ;


 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static inline bool tomoyo_pathcmp(const struct tomoyo_path_info *a,
      const struct tomoyo_path_info *b)
{
 return a->hash != b->hash || strcmp(a->name, b->name);
}
