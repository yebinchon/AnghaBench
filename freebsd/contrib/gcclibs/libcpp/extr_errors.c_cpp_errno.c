
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cpp_reader ;


 char* _ (char*) ;
 int cpp_error (int *,int,char*,char const*,int ) ;
 int errno ;
 int xstrerror (int ) ;

void
cpp_errno (cpp_reader *pfile, int level, const char *msgid)
{
  if (msgid[0] == '\0')
    msgid = _("stdout");

  cpp_error (pfile, level, "%s: %s", msgid, xstrerror (errno));
}
