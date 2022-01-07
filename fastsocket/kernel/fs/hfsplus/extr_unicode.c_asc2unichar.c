
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef char wchar_t ;
struct super_block {int dummy; } ;
struct TYPE_4__ {TYPE_1__* nls; } ;
struct TYPE_3__ {int (* char2uni ) (char const*,int,char*) ;} ;


 TYPE_2__ HFSPLUS_SB (struct super_block*) ;
 int stub1 (char const*,int,char*) ;

__attribute__((used)) static inline int asc2unichar(struct super_block *sb, const char *astr, int len,
         wchar_t *uc)
{
 int size = HFSPLUS_SB(sb).nls->char2uni(astr, len, uc);
 if (size <= 0) {
  *uc = '?';
  size = 1;
 }
 switch (*uc) {
 case 0x2400:
  *uc = 0;
  break;
 case ':':
  *uc = '/';
  break;
 }
 return size;
}
