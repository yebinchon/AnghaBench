
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strlist_t ;
typedef int Buffer ;


 int Buf_AddByte (int *,char) ;
 int Buf_AddBytes (int *,int,char const*) ;
 int FOR_SUB_ESCAPE_BRACE ;
 int FOR_SUB_ESCAPE_PAREN ;
 int for_var_len (char const*) ;
 int strlen (char const*) ;
 int strlist_info (int *,unsigned int) ;
 char* strlist_str (int *,unsigned int) ;

__attribute__((used)) static void
for_substitute(Buffer *cmds, strlist_t *items, unsigned int item_no, char ech)
{
    const char *item = strlist_str(items, item_no);
    int len;
    char ch;



    if (!(strlist_info(items, item_no) &
     (ech == ')' ? ~FOR_SUB_ESCAPE_BRACE : ~FOR_SUB_ESCAPE_PAREN))) {
 Buf_AddBytes(cmds, strlen(item), item);
 return;
    }


    while ((ch = *item++) != 0) {
 if (ch == '$') {
     len = for_var_len(item);
     if (len != 0) {
  Buf_AddBytes(cmds, len + 1, item - 1);
  item += len;
  continue;
     }
     Buf_AddByte(cmds, '\\');
 } else if (ch == ':' || ch == '\\' || ch == ech)
     Buf_AddByte(cmds, '\\');
 Buf_AddByte(cmds, ch);
    }
}
