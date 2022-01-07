
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int table ;



 int DLG_EXIT_ERROR ;



 int Usage (char*) ;
 int dlg_strcmp (char const*,char const*) ;
 int sprintf (char*,char*,char const*) ;

__attribute__((used)) static int
button_code(const char *name)
{

    static struct {
 const char *name;
 int code;
    } table[] = {
 { "ok", 128 },
 { "yes", 128 },
 { "cancel", 131 },
 { "no", 131 },
 { "help", 129 },
 { "extra", 130 },
    };


    int code = DLG_EXIT_ERROR;
    size_t i;

    for (i = 0; i < (sizeof(table) / sizeof(table[0])); i++) {
 if (!dlg_strcmp(name, table[i].name)) {
     code = table[i].code;
     break;
 }
    }

    if (code == DLG_EXIT_ERROR) {
 char temp[80];
 sprintf(temp, "Button name \"%.20s\" unknown", name);
 Usage(temp);
    }

    return code;
}
