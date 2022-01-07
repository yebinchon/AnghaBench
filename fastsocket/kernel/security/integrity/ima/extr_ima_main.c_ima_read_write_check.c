
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct ima_iint_cache {int writecount; int readcount; } ;
typedef enum iint_pcr_error { ____Placeholder_iint_pcr_error } iint_pcr_error ;




 int ima_add_violation (struct inode*,unsigned char const*,char*,char*) ;

__attribute__((used)) static void ima_read_write_check(enum iint_pcr_error error,
     struct ima_iint_cache *iint,
     struct inode *inode,
     const unsigned char *filename)
{
 switch (error) {
 case 128:
  if (iint->readcount > 0)
   ima_add_violation(inode, filename, "invalid_pcr",
       "ToMToU");
  break;
 case 129:
  if (iint->writecount > 0)
   ima_add_violation(inode, filename, "invalid_pcr",
       "open_writers");
  break;
 }
}
