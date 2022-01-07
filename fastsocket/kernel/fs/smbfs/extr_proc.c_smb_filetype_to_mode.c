
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;


 size_t MAX_FILE_MODE ;
 int PARANOIA (char*,size_t) ;
 int S_IFREG ;
 int* file_mode ;

__attribute__((used)) static int smb_filetype_to_mode(u32 filetype)
{
 if (filetype > MAX_FILE_MODE) {
  PARANOIA("Filetype out of range: %d\n", filetype);
  return S_IFREG;
 }
 return file_mode[filetype];
}
