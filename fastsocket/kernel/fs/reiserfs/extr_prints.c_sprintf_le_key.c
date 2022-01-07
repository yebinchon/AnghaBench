
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reiserfs_key {int k_objectid; int k_dir_id; } ;


 int le32_to_cpu (int ) ;
 char* le_offset (struct reiserfs_key*) ;
 char* le_type (struct reiserfs_key*) ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static void sprintf_le_key(char *buf, struct reiserfs_key *key)
{
 if (key)
  sprintf(buf, "[%d %d %s %s]", le32_to_cpu(key->k_dir_id),
   le32_to_cpu(key->k_objectid), le_offset(key),
   le_type(key));
 else
  sprintf(buf, "[NULL]");
}
