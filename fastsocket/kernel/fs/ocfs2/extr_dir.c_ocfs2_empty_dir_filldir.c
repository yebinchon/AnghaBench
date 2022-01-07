
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ocfs2_empty_dir_priv {int seen_dot; int seen_dot_dot; int seen_other; scalar_t__ dx_dir; } ;
typedef scalar_t__ loff_t ;


 scalar_t__ OCFS2_DIR_REC_LEN (int) ;
 int strncmp (char*,char const*,int) ;

__attribute__((used)) static int ocfs2_empty_dir_filldir(void *priv, const char *name, int name_len,
       loff_t pos, u64 ino, unsigned type)
{
 struct ocfs2_empty_dir_priv *p = priv;
 if (name_len == 1 && !strncmp(".", name, 1) && pos == 0) {
  p->seen_dot = 1;
  return 0;
 }

 if (name_len == 2 && !strncmp("..", name, 2) &&
     pos == OCFS2_DIR_REC_LEN(1)) {
  p->seen_dot_dot = 1;

  if (p->dx_dir && p->seen_dot)
   return 1;

  return 0;
 }

 p->seen_other = 1;
 return 1;
}
