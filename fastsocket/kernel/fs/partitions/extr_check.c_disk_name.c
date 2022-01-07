
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gendisk {char* disk_name; } ;


 int BDEVNAME_SIZE ;
 scalar_t__ isdigit (char) ;
 int snprintf (char*,int ,char*,char*,...) ;
 int strlen (char*) ;

char *disk_name(struct gendisk *hd, int partno, char *buf)
{
 if (!partno)
  snprintf(buf, BDEVNAME_SIZE, "%s", hd->disk_name);
 else if (isdigit(hd->disk_name[strlen(hd->disk_name)-1]))
  snprintf(buf, BDEVNAME_SIZE, "%sp%d", hd->disk_name, partno);
 else
  snprintf(buf, BDEVNAME_SIZE, "%s%d", hd->disk_name, partno);

 return buf;
}
