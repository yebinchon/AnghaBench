
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_deleg_note_t ;







 char const* gettext (char*) ;

__attribute__((used)) static inline const char *
deleg_perm_type(zfs_deleg_note_t note)
{

 switch (note) {


 case 132:
 case 131:
 case 130:
 case 129:
 case 128:

  return (gettext("other"));
 default:
  return (gettext("subcommand"));
 }
}
