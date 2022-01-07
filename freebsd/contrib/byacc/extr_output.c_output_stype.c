
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 scalar_t__ ntags ;
 int putc_code (int *,char) ;
 int putl_code (int *,char*) ;
 int unionized ;

__attribute__((used)) static void
output_stype(FILE * fp)
{
    if (!unionized && ntags == 0)
    {
 putc_code(fp, '\n');
 putl_code(fp, "#if "
    "! defined(YYSTYPE) && "
    "! defined(YYSTYPE_IS_DECLARED)\n");
 putl_code(fp, "/* Default: YYSTYPE is the semantic value type. */\n");
 putl_code(fp, "typedef int YYSTYPE;\n");
 putl_code(fp, "# define YYSTYPE_IS_DECLARED 1\n");
 putl_code(fp, "#endif\n");
    }
}
