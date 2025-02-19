
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysv_sb_info {scalar_t__ s_bytesex; } ;


 scalar_t__ BYTESEX_LE ;
 scalar_t__ BYTESEX_PDP ;

__attribute__((used)) static inline void write3byte(struct sysv_sb_info *sbi,
 unsigned char * from, unsigned char * to)
{
 if (sbi->s_bytesex == BYTESEX_PDP) {
  to[0] = from[0];
  to[1] = from[2];
  to[2] = from[3];
 } else if (sbi->s_bytesex == BYTESEX_LE) {
  to[0] = from[0];
  to[1] = from[1];
  to[2] = from[2];
 } else {
  to[0] = from[1];
  to[1] = from[2];
  to[2] = from[3];
 }
}
