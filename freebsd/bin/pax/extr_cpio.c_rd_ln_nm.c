
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uintmax_t ;
struct TYPE_4__ {scalar_t__ st_size; } ;
struct TYPE_5__ {char* ln_name; size_t ln_nlen; TYPE_1__ sb; } ;
typedef TYPE_2__ ARCHD ;


 int paxwarn (int,char*,...) ;
 int rd_wrbuf (char*,int) ;

__attribute__((used)) static int
rd_ln_nm(ARCHD *arcn)
{



 if ((arcn->sb.st_size == 0) ||
     ((size_t)arcn->sb.st_size >= sizeof(arcn->ln_name))) {




  paxwarn(1, "Cpio link name length is invalid: %ju",
      (uintmax_t)arcn->sb.st_size);

  return(-1);
 }




 if (rd_wrbuf(arcn->ln_name, (int)arcn->sb.st_size) !=
     (int)arcn->sb.st_size) {
  paxwarn(1, "Cpio link name read error");
  return(-1);
 }
 arcn->ln_nlen = arcn->sb.st_size;
 arcn->ln_name[arcn->ln_nlen] = '\0';




 if (arcn->ln_name[0] == '\0') {
  paxwarn(1, "Cpio link name is corrupt");
  return(-1);
 }
 return(0);
}
