
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ info_level; unsigned int resume_name_len; char* presume_name; int resume_key; scalar_t__ unicode; } ;
struct cifsFileInfo {TYPE_1__ srch_inf; } ;
typedef scalar_t__ __u16 ;
struct TYPE_14__ {char* FileName; int FileIndex; int FileNameLength; } ;
struct TYPE_13__ {char* FileName; int FileIndex; int FileNameLength; } ;
struct TYPE_12__ {char* FileName; int FileIndex; int FileNameLength; } ;
struct TYPE_11__ {char* FileName; int ResumeKey; } ;
struct TYPE_10__ {char* FileName; int ResumeKey; scalar_t__ FileNameLength; } ;
struct TYPE_9__ {char* FileName; int FileIndex; int FileNameLength; } ;
typedef TYPE_2__ SEARCH_ID_FULL_DIR_INFO ;
typedef TYPE_3__ FIND_FILE_STANDARD_INFO ;
typedef TYPE_4__ FILE_UNIX_INFO ;
typedef TYPE_5__ FILE_FULL_DIRECTORY_INFO ;
typedef TYPE_6__ FILE_DIRECTORY_INFO ;
typedef TYPE_7__ FILE_BOTH_DIRECTORY_INFO ;


 int EINVAL ;
 int PATH_MAX ;
 scalar_t__ SMB_FIND_FILE_BOTH_DIRECTORY_INFO ;
 scalar_t__ SMB_FIND_FILE_DIRECTORY_INFO ;
 scalar_t__ SMB_FIND_FILE_FULL_DIRECTORY_INFO ;
 scalar_t__ SMB_FIND_FILE_ID_FULL_DIR_INFO ;
 scalar_t__ SMB_FIND_FILE_INFO_STANDARD ;
 scalar_t__ SMB_FIND_FILE_UNIX ;
 int cFYI (int,char*,scalar_t__) ;
 unsigned int cifs_unicode_bytelen (char*) ;
 unsigned int le32_to_cpu (int ) ;
 unsigned int strnlen (char*,int ) ;

__attribute__((used)) static int cifs_save_resume_key(const char *current_entry,
 struct cifsFileInfo *cifsFile)
{
 int rc = 0;
 unsigned int len = 0;
 __u16 level;
 char *filename;

 if ((cifsFile == ((void*)0)) || (current_entry == ((void*)0)))
  return -EINVAL;

 level = cifsFile->srch_inf.info_level;

 if (level == SMB_FIND_FILE_UNIX) {
  FILE_UNIX_INFO *pFindData = (FILE_UNIX_INFO *)current_entry;

  filename = &pFindData->FileName[0];
  if (cifsFile->srch_inf.unicode) {
   len = cifs_unicode_bytelen(filename);
  } else {

   len = strnlen(filename, PATH_MAX);
  }
  cifsFile->srch_inf.resume_key = pFindData->ResumeKey;
 } else if (level == SMB_FIND_FILE_DIRECTORY_INFO) {
  FILE_DIRECTORY_INFO *pFindData =
   (FILE_DIRECTORY_INFO *)current_entry;
  filename = &pFindData->FileName[0];
  len = le32_to_cpu(pFindData->FileNameLength);
  cifsFile->srch_inf.resume_key = pFindData->FileIndex;
 } else if (level == SMB_FIND_FILE_FULL_DIRECTORY_INFO) {
  FILE_FULL_DIRECTORY_INFO *pFindData =
   (FILE_FULL_DIRECTORY_INFO *)current_entry;
  filename = &pFindData->FileName[0];
  len = le32_to_cpu(pFindData->FileNameLength);
  cifsFile->srch_inf.resume_key = pFindData->FileIndex;
 } else if (level == SMB_FIND_FILE_ID_FULL_DIR_INFO) {
  SEARCH_ID_FULL_DIR_INFO *pFindData =
   (SEARCH_ID_FULL_DIR_INFO *)current_entry;
  filename = &pFindData->FileName[0];
  len = le32_to_cpu(pFindData->FileNameLength);
  cifsFile->srch_inf.resume_key = pFindData->FileIndex;
 } else if (level == SMB_FIND_FILE_BOTH_DIRECTORY_INFO) {
  FILE_BOTH_DIRECTORY_INFO *pFindData =
   (FILE_BOTH_DIRECTORY_INFO *)current_entry;
  filename = &pFindData->FileName[0];
  len = le32_to_cpu(pFindData->FileNameLength);
  cifsFile->srch_inf.resume_key = pFindData->FileIndex;
 } else if (level == SMB_FIND_FILE_INFO_STANDARD) {
  FIND_FILE_STANDARD_INFO *pFindData =
   (FIND_FILE_STANDARD_INFO *)current_entry;
  filename = &pFindData->FileName[0];

  len = (unsigned int)pFindData->FileNameLength;
  cifsFile->srch_inf.resume_key = pFindData->ResumeKey;
 } else {
  cFYI(1, "Unknown findfirst level %d", level);
  return -EINVAL;
 }
 cifsFile->srch_inf.resume_name_len = len;
 cifsFile->srch_inf.presume_name = filename;
 return rc;
}
