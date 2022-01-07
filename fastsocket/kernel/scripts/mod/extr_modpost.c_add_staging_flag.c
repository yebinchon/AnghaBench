
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer {int dummy; } ;


 int buf_printf (struct buffer*,char*) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,int ) ;

__attribute__((used)) static void add_staging_flag(struct buffer *b, const char *name)
{
 static const char *staging_dir = "drivers/staging";

 if (strncmp(staging_dir, name, strlen(staging_dir)) == 0)
  buf_printf(b, "\nMODULE_INFO(staging, \"Y\");\n");
}
