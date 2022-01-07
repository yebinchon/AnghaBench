
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int output; } ;


 TYPE_1__ dialog_state ;
 char const* dialog_version () ;
 int fprintf (int ,char const* const,char const*) ;
 int fputc (char,int ) ;
 char* program ;
 char* strrchr (char*,char) ;

__attribute__((used)) static void
PrintList(const char *const *list)
{
    const char *leaf = strrchr(program, '/');
    unsigned n = 0;

    if (leaf != 0)
 leaf++;
    else
 leaf = program;

    while (*list != 0) {
 fprintf(dialog_state.output, *list, n ? leaf : dialog_version());
 (void) fputc('\n', dialog_state.output);
 n = 1;
 list++;
    }
}
