
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_flags; } ;


 int EROFS ;
 int KERN_CRIT ;
 int MS_RDONLY ;
 char* ext3_decode_error (struct super_block*,int,char*) ;
 int ext3_handle_error (struct super_block*) ;
 int ext3_msg (struct super_block*,int ,char*,char const*,char const*) ;
 int * journal_current_handle () ;

void __ext3_std_error (struct super_block * sb, const char * function,
         int errno)
{
 char nbuf[16];
 const char *errstr;




 if (errno == -EROFS && journal_current_handle() == ((void*)0) &&
     (sb->s_flags & MS_RDONLY))
  return;

 errstr = ext3_decode_error(sb, errno, nbuf);
 ext3_msg(sb, KERN_CRIT, "error in %s: %s", function, errstr);

 ext3_handle_error(sb);
}
