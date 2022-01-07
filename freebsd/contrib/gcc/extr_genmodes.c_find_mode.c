
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mode_data {char const* name; } ;


 scalar_t__ htab_find (int ,struct mode_data*) ;
 int modes_by_name ;

__attribute__((used)) static inline struct mode_data *
find_mode (const char *name)
{
  struct mode_data key;

  key.name = name;
  return (struct mode_data *) htab_find (modes_by_name, &key);
}
