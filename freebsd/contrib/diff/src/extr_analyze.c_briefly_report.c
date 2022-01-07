
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_data {char* name; } ;


 int brief ;
 char** file_label ;
 int message (char*,char const*,char const*) ;

__attribute__((used)) static int
briefly_report (int changes, struct file_data const filevec[])
{
  if (changes)
    {
      char const *label0 = file_label[0] ? file_label[0] : filevec[0].name;
      char const *label1 = file_label[1] ? file_label[1] : filevec[1].name;
      message ("Files %s and %s differ\n", label0, label1);
      if (! brief)
 changes = 2;
    }

  return changes;
}
