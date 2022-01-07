
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct file_security_struct {void* fown_sid; void* sid; } ;
struct file {struct file_security_struct* f_security; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 void* current_sid () ;
 struct file_security_struct* kzalloc (int,int ) ;

__attribute__((used)) static int file_alloc_security(struct file *file)
{
 struct file_security_struct *fsec;
 u32 sid = current_sid();

 fsec = kzalloc(sizeof(struct file_security_struct), GFP_KERNEL);
 if (!fsec)
  return -ENOMEM;

 fsec->sid = sid;
 fsec->fown_sid = sid;
 file->f_security = fsec;

 return 0;
}
