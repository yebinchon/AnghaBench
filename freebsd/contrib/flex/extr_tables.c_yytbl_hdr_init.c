
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct yytbl_hdr {void* th_name; void* th_version; scalar_t__ th_flags; scalar_t__ th_ssize; scalar_t__ th_hsize; int th_magic; } ;


 int YYTBL_MAGIC ;
 void* copy_string (char const*) ;
 int memset (struct yytbl_hdr*,int ,int) ;
 scalar_t__ strlen (char const*) ;
 scalar_t__ yypad64 (scalar_t__) ;

int yytbl_hdr_init (struct yytbl_hdr *th, const char *version_str,
      const char *name)
{
 memset (th, 0, sizeof (struct yytbl_hdr));

 th->th_magic = YYTBL_MAGIC;
 th->th_hsize = 14 + strlen (version_str) + 1 + strlen (name) + 1;
 th->th_hsize += yypad64 (th->th_hsize);
 th->th_ssize = 0;
 th->th_flags = 0;
 th->th_version = copy_string (version_str);
 th->th_name = copy_string (name);
 return 0;
}
