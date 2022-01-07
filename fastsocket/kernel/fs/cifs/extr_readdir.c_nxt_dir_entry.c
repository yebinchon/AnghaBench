
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int NextEntryOffset; } ;
struct TYPE_3__ {int FileNameLength; } ;
typedef TYPE_1__ FIND_FILE_STANDARD_INFO ;
typedef TYPE_2__ FILE_DIRECTORY_INFO ;


 int SMB_FIND_FILE_INFO_STANDARD ;
 int cERROR (int,char*,char*,char*,...) ;
 int cFYI (int,char*,char*,char*) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static char *nxt_dir_entry(char *old_entry, char *end_of_smb, int level)
{
 char *new_entry;
 FILE_DIRECTORY_INFO *pDirInfo = (FILE_DIRECTORY_INFO *)old_entry;

 if (level == SMB_FIND_FILE_INFO_STANDARD) {
  FIND_FILE_STANDARD_INFO *pfData;
  pfData = (FIND_FILE_STANDARD_INFO *)pDirInfo;

  new_entry = old_entry + sizeof(FIND_FILE_STANDARD_INFO) +
    pfData->FileNameLength;
 } else
  new_entry = old_entry + le32_to_cpu(pDirInfo->NextEntryOffset);
 cFYI(1, "new entry %p old entry %p", new_entry, old_entry);

 if (new_entry >= end_of_smb) {
  cERROR(1, "search entry %p began after end of SMB %p old entry %p",
   new_entry, end_of_smb, old_entry);
  return ((void*)0);
 } else if (((level == SMB_FIND_FILE_INFO_STANDARD) &&
      (new_entry + sizeof(FIND_FILE_STANDARD_INFO) > end_of_smb))
    || ((level != SMB_FIND_FILE_INFO_STANDARD) &&
     (new_entry + sizeof(FILE_DIRECTORY_INFO) > end_of_smb))) {
  cERROR(1, "search entry %p extends after end of SMB %p",
   new_entry, end_of_smb);
  return ((void*)0);
 } else
  return new_entry;

}
