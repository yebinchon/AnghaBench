
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct autofs_sb_info {int dummy; } ;
struct autofs_info {int dummy; } ;


 int S_IFDIR ;
 struct autofs_info* autofs4_init_ino (int *,struct autofs_sb_info*,int) ;

__attribute__((used)) static struct autofs_info *autofs4_mkroot(struct autofs_sb_info *sbi)
{
 struct autofs_info *ino;

 ino = autofs4_init_ino(((void*)0), sbi, S_IFDIR | 0755);
 if (!ino)
  return ((void*)0);

 return ino;
}
