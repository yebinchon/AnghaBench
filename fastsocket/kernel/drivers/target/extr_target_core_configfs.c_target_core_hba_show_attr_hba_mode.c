
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_hba {int hba_flags; } ;
typedef int ssize_t ;


 int HBA_FLAGS_PSCSI_MODE ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t target_core_hba_show_attr_hba_mode(struct se_hba *hba,
    char *page)
{
 int hba_mode = 0;

 if (hba->hba_flags & HBA_FLAGS_PSCSI_MODE)
  hba_mode = 1;

 return sprintf(page, "%d\n", hba_mode);
}
