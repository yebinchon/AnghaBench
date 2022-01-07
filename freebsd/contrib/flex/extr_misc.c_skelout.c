
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ elts; } ;


 int CMD_DEFINE_YYTABLES ;
 int CMD_ENDIF ;
 int CMD_IF_BISON_BRIDGE ;
 int CMD_IF_CPP_ONLY ;
 int CMD_IF_C_ONLY ;
 int CMD_IF_C_OR_CPP ;
 int CMD_IF_NOT_BISON_BRIDGE ;
 int CMD_IF_NOT_REENTRANT ;
 int CMD_IF_REENTRANT ;
 int CMD_IF_TABLES_SER ;
 int CMD_NOT_FOR_HEADER ;
 int CMD_OK_FOR_HEADER ;
 int CMD_POP ;
 int CMD_PUSH ;
 int CMD_TABLES_YYDMAP ;
 int C_plus_plus ;
 int MAXLINE ;
 int OUT_BEGIN_CODE () ;
 int OUT_END_CODE () ;
 int _ (char*) ;
 scalar_t__ bison_bridge_lval ;
 int chomp (char*) ;
 scalar_t__ cmd_match (int ) ;
 scalar_t__ ddebug ;
 int * fgets (char*,int,scalar_t__) ;
 int flexfatal (int ) ;
 int out_str (char*,char*) ;
 int outn (char*) ;
 scalar_t__ reentrant ;
 scalar_t__* skel ;
 int skel_ind ;
 scalar_t__ skelfile ;
 scalar_t__ sko_len ;
 int sko_peek (int*) ;
 int sko_pop (int*) ;
 int sko_push (int) ;
 int strlen (char*) ;
 scalar_t__ tablesext ;
 char* tablesname ;
 TYPE_1__ yydmap_buf ;

void skelout ()
{
 char buf_storage[MAXLINE];
 char *buf = buf_storage;
 bool do_copy = 1;


    if(sko_len > 0)
        sko_peek(&do_copy);
    sko_len = 0;
    sko_push(do_copy=1);





 while (skelfile ?
        (fgets (buf, MAXLINE, skelfile) != ((void*)0)) :
        ((buf = (char *) skel[skel_ind++]) != 0)) {

  if (skelfile)
   chomp (buf);


  if (buf[0] == '%') {

   if (ddebug && buf[1] != '#') {
    if (buf[strlen (buf) - 1] == '\\')
     out_str ("/* %s */\\\n", buf);
    else
     out_str ("/* %s */\n", buf);
   }
   if (buf[1] == '%') {

    return;
   }
            else if ((strncmp(buf,(CMD_PUSH),strlen(CMD_PUSH))==0)){
                sko_push(do_copy);
                if(ddebug){
                    out_str("/*(state = (%s) */",do_copy?"true":"false");
                }
                out_str("%s\n", buf[strlen (buf) - 1] =='\\' ? "\\" : "");
            }
            else if ((strncmp(buf,(CMD_POP),strlen(CMD_POP))==0)){
                sko_pop(&do_copy);
                if(ddebug){
                    out_str("/*(state = (%s) */",do_copy?"true":"false");
                }
                out_str("%s\n", buf[strlen (buf) - 1] =='\\' ? "\\" : "");
            }
            else if ((strncmp(buf,(CMD_IF_REENTRANT),strlen(CMD_IF_REENTRANT))==0)){
                sko_push(do_copy);
                do_copy = reentrant && do_copy;
            }
            else if ((strncmp(buf,(CMD_IF_NOT_REENTRANT),strlen(CMD_IF_NOT_REENTRANT))==0)){
                sko_push(do_copy);
                do_copy = !reentrant && do_copy;
            }
            else if ((strncmp(buf,(CMD_IF_BISON_BRIDGE),strlen(CMD_IF_BISON_BRIDGE))==0)){
                sko_push(do_copy);
                do_copy = bison_bridge_lval && do_copy;
            }
            else if ((strncmp(buf,(CMD_IF_NOT_BISON_BRIDGE),strlen(CMD_IF_NOT_BISON_BRIDGE))==0)){
                sko_push(do_copy);
                do_copy = !bison_bridge_lval && do_copy;
            }
            else if ((strncmp(buf,(CMD_ENDIF),strlen(CMD_ENDIF))==0)){
                sko_pop(&do_copy);
            }
   else if ((strncmp(buf,(CMD_IF_TABLES_SER),strlen(CMD_IF_TABLES_SER))==0)) {
                do_copy = do_copy && tablesext;
   }
   else if ((strncmp(buf,(CMD_TABLES_YYDMAP),strlen(CMD_TABLES_YYDMAP))==0)) {
    if (tablesext && yydmap_buf.elts)
     outn ((char *) (yydmap_buf.elts));
   }
            else if ((strncmp(buf,(CMD_DEFINE_YYTABLES),strlen(CMD_DEFINE_YYTABLES))==0)) {
                out_str("#define YYTABLES_NAME \"%s\"\n",
                        tablesname?tablesname:"yytables");
            }
   else if ((strncmp(buf,(CMD_IF_CPP_ONLY),strlen(CMD_IF_CPP_ONLY))==0)) {

                sko_push(do_copy);
    do_copy = C_plus_plus;
   }
   else if ((strncmp(buf,(CMD_IF_C_ONLY),strlen(CMD_IF_C_ONLY))==0)) {

                sko_push(do_copy);
    do_copy = !C_plus_plus;
   }
   else if ((strncmp(buf,(CMD_IF_C_OR_CPP),strlen(CMD_IF_C_OR_CPP))==0)) {

                sko_push(do_copy);
    do_copy = 1;
   }
   else if ((strncmp(buf,(CMD_NOT_FOR_HEADER),strlen(CMD_NOT_FOR_HEADER))==0)) {

    OUT_BEGIN_CODE ();
   }
   else if ((strncmp(buf,(CMD_OK_FOR_HEADER),strlen(CMD_OK_FOR_HEADER))==0)) {

    OUT_END_CODE ();
   }
   else if (buf[1] == '#') {

   }
   else {
    flexfatal (_("bad line in skeleton file"));
   }
  }

  else if (do_copy)
            outn (buf);
 }
}
