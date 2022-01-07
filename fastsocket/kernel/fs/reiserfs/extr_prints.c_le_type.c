
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reiserfs_key {int dummy; } ;


 scalar_t__ TYPE_DIRECT ;
 scalar_t__ TYPE_DIRENTRY ;
 scalar_t__ TYPE_INDIRECT ;
 scalar_t__ TYPE_STAT_DATA ;
 scalar_t__ le_key_k_type (int,struct reiserfs_key*) ;
 int le_key_version (struct reiserfs_key*) ;

__attribute__((used)) static char *le_type(struct reiserfs_key *key)
{
 int version;

 version = le_key_version(key);

 if (le_key_k_type(version, key) == TYPE_STAT_DATA)
  return "SD";
 if (le_key_k_type(version, key) == TYPE_DIRENTRY)
  return "DIR";
 if (le_key_k_type(version, key) == TYPE_DIRECT)
  return "DIRECT";
 if (le_key_k_type(version, key) == TYPE_INDIRECT)
  return "IND";
 return "UNKNOWN";
}
