
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dialog_clear () ;
 int dialog_menu (char*,char*,int,int,int,int,char**) ;
 int dialog_textbox (char*,char*,int,int) ;
 int end_dialog () ;
 int exit (int) ;
 int init_dialog () ;
 int main_install () ;
 scalar_t__ num_linux ;
 int printf (char*) ;
 char* progname ;
 int read_partitions () ;

int
main(int argc, char **argv)
{
    int stop = 0;
    int ret;
    char *items1[] =
    {
 "1", "Display a help text",
 "2", "Start an installation",
 "3", "Exit to the shell"
    };

    progname = argv[0];

    read_partitions();
    if (num_linux == 0) {
 printf("\n\nPlease start \"fdisk\" or \"cfdisk\" and create a"
        "\nnative Linux-partition to install Linux on.\n\n");
 exit(1);
    }

    init_dialog();

    while (!stop) {
 ret = dialog_menu("Linux Install Utility",
     "\\nCopyright (C) 1995 Florian La Roche\\n"
     "\\nPre-Alpha version, be careful, read the doc!!!"
     "\\nemail: florian@jurix.jura.uni-sb.de, "
     "flla@stud.uni-sb.de\\n",
     15, 64, 3, 3, items1);
 dialog_clear();
 switch (ret) {
 case 0:
     ret = dialog_textbox("Help Text",
     "setup.help", 20, 70);
     dialog_clear();
     break;
 case 1:
     main_install();
     break;
 case 2:
     stop = 1;
     break;
 case -2:
 case -1:
     stop = 1;
 }
    }
    end_dialog();
    printf("\nExecute \"reboot\" to restart your computer...\n");

    exit(0);
}
