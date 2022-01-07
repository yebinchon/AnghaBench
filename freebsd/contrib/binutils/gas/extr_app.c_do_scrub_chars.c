
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BAD_CASE (int) ;

 int GET () ;
 int IS_COMMENT (int) ;
 int IS_LINE_SEPARATOR (int) ;
 scalar_t__ IS_NEWLINE (int) ;
 int IS_PARALLEL_SEPARATOR (int) ;
 int IS_SYMBOL_COMPONENT (int) ;
 int IS_WHITESPACE (int) ;
 int LABELS_WITHOUT_COLONS ;
 int PUT (int) ;
 int UNGET (int) ;
 char* _ (char*) ;
 int abort () ;
 int add_newlines ;
 int as_warn (char*,...) ;
 int as_where (int *,int *) ;
 int do_scrub_begin (int) ;
 int flag_m68k_mri ;
 int found_comment ;
 int found_comment_file ;
 char* input_buffer ;
 int* lex ;
 int memcpy (char*,char*,int) ;
 char mri_last_ch ;
 int* mri_pseudo ;
 int* mri_state ;
 int old_state ;
 int* out_buf ;
 char* out_string ;
 int process_escape (int) ;
 char* saved_input ;
 int saved_input_len ;
 int scrub_m68k_mri ;
 int sprintf (int*,char*,int) ;
 int state ;
 int * strchr (int ,int) ;
 int strlen (int*) ;
 int stub1 (char*,int) ;
 int* symver_pseudo ;
 int* symver_state ;
 int tc_comment_chars ;

int
do_scrub_chars (int (*get) (char *, int), char *tostart, int tolen)
{
  char *to = tostart;
  char *toend = tostart + tolen;
  char *from;
  char *fromend;
  int fromlen;
  register int ch, ch2 = 0;

  static char quotechar;
  if (saved_input != ((void*)0))
    {
      from = saved_input;
      fromend = from + saved_input_len;
    }
  else
    {
      fromlen = (*get) (input_buffer, sizeof input_buffer);
      if (fromlen == 0)
 return 0;
      from = input_buffer;
      fromend = from + fromlen;
    }

  while (1)
    {



      switch (state)
 {
 case -1:
   ch = *out_string++;
   if (*out_string == '\0')
     {
       state = old_state;
       old_state = 3;
     }
   do { *to++ = (ch); if (to >= toend) goto tofull; } while (0);
   continue;

 case -2:
   for (;;)
     {
       do
  {
    ch = (from < fromend ? * (unsigned char *) (from++) : (saved_input = ((void*)0), fromlen = (*get) (input_buffer, sizeof input_buffer), from = input_buffer, fromend = from + fromlen, (fromlen == 0 ? 141 : * (unsigned char *) (from++))));

    if (ch == 141)
      {
        as_warn (_("end of file in comment"));
        goto fromeof;
      }

    if (ch == '\n')
      do { *to++ = ('\n'); if (to >= toend) goto tofull; } while (0);
  }
       while (ch != '*');

       while ((ch = (from < fromend ? * (unsigned char *) (from++) : (saved_input = ((void*)0), fromlen = (*get) (input_buffer, sizeof input_buffer), from = input_buffer, fromend = from + fromlen, (fromlen == 0 ? 141 : * (unsigned char *) (from++))))) == '*')
  ;

       if (ch == 141)
  {
    as_warn (_("end of file in comment"));
    goto fromeof;
  }

       if (ch == '/')
  break;

       (*--from = (ch));
     }

   state = old_state;
   (*--from = (' '));
   continue;

 case 4:
   ch = (from < fromend ? * (unsigned char *) (from++) : (saved_input = ((void*)0), fromlen = (*get) (input_buffer, sizeof input_buffer), from = input_buffer, fromend = from + fromlen, (fromlen == 0 ? 141 : * (unsigned char *) (from++))));
   if (ch == 141)
     goto fromeof;
   else if (ch >= '0' && ch <= '9')
     do { *to++ = (ch); if (to >= toend) goto tofull; } while (0);
   else
     {
       while (ch != 141 && IS_WHITESPACE (ch))
  ch = (from < fromend ? * (unsigned char *) (from++) : (saved_input = ((void*)0), fromlen = (*get) (input_buffer, sizeof input_buffer), from = input_buffer, fromend = from + fromlen, (fromlen == 0 ? 141 : * (unsigned char *) (from++))));
       if (ch == '"')
  {
    quotechar = ch;
    state = 5;
    old_state = 3;
    do { *to++ = (ch); if (to >= toend) goto tofull; } while (0);
  }
       else
  {
    while (ch != 141 && ch != '\n')
      ch = (from < fromend ? * (unsigned char *) (from++) : (saved_input = ((void*)0), fromlen = (*get) (input_buffer, sizeof input_buffer), from = input_buffer, fromend = from + fromlen, (fromlen == 0 ? 141 : * (unsigned char *) (from++))));
    state = 0;
    do { *to++ = (ch); if (to >= toend) goto tofull; } while (0);
  }
     }
   continue;

 case 5:




   {
     char *s;
     int len;

     for (s = from; s < fromend; s++)
       {
  ch = *s;
  if (ch == '\\'
      || ch == quotechar
      || ch == '\n')
    break;
       }
     len = s - from;
     if (len > toend - to)
       len = toend - to;
     if (len > 0)
       {
  memcpy (to, from, len);
  to += len;
  from += len;
  if (to >= toend)
    goto tofull;
       }
   }

   ch = (from < fromend ? * (unsigned char *) (from++) : (saved_input = ((void*)0), fromlen = (*get) (input_buffer, sizeof input_buffer), from = input_buffer, fromend = from + fromlen, (fromlen == 0 ? 141 : * (unsigned char *) (from++))));
   if (ch == 141)
     {
       as_warn (_("end of file in string; '%c' inserted"), quotechar);
       state = old_state;
       (*--from = ('\n'));
       do { *to++ = (quotechar); if (to >= toend) goto tofull; } while (0);
     }
   else if (ch == quotechar)
     {
       state = old_state;
       do { *to++ = (ch); if (to >= toend) goto tofull; } while (0);
     }

   else if (ch == '\\')
     {
       state = 6;
       do { *to++ = (ch); if (to >= toend) goto tofull; } while (0);
     }

   else if (scrub_m68k_mri && ch == '\n')
     {


       state = old_state;
       (*--from = (ch));
       do { *to++ = ('\''); if (to >= toend) goto tofull; } while (0);
     }
   else
     {
       do { *to++ = (ch); if (to >= toend) goto tofull; } while (0);
     }
   continue;

 case 6:
   state = 5;
   ch = (from < fromend ? * (unsigned char *) (from++) : (saved_input = ((void*)0), fromlen = (*get) (input_buffer, sizeof input_buffer), from = input_buffer, fromend = from + fromlen, (fromlen == 0 ? 141 : * (unsigned char *) (from++))));
   switch (ch)
     {


     case '\n':
       (*--from = ('n'));
       add_newlines++;
       do { *to++ = ('\\'); if (to >= toend) goto tofull; } while (0);
       continue;

     case 141:
       as_warn (_("end of file in string; '%c' inserted"), quotechar);
       do { *to++ = (quotechar); if (to >= toend) goto tofull; } while (0);
       continue;

     case '"':
     case '\\':
     case 'b':
     case 'f':
     case 'n':
     case 'r':
     case 't':
     case 'v':
     case 'x':
     case 'X':
     case '0':
     case '1':
     case '2':
     case '3':
     case '4':
     case '5':
     case '6':
     case '7':
       break;

     default:



       break;
     }
   do { *to++ = (ch); if (to >= toend) goto tofull; } while (0);
   continue;
 }




      ch = (from < fromend ? * (unsigned char *) (from++) : (saved_input = ((void*)0), fromlen = (*get) (input_buffer, sizeof input_buffer), from = input_buffer, fromend = from + fromlen, (fromlen == 0 ? 141 : * (unsigned char *) (from++))));
    recycle:
      if (ch == 141)
 {
   if (state != 0)
     {
       as_warn (_("end of file not at end of a line; newline inserted"));
       state = 0;
       do { *to++ = ('\n'); if (to >= toend) goto tofull; } while (0);
     }
   goto fromeof;
 }

      switch (lex[ch])
 {
 case 128:
   do
     {
       ch = (from < fromend ? * (unsigned char *) (from++) : (saved_input = ((void*)0), fromlen = (*get) (input_buffer, sizeof input_buffer), from = input_buffer, fromend = from + fromlen, (fromlen == 0 ? 141 : * (unsigned char *) (from++))));
     }
   while (ch != 141 && IS_WHITESPACE (ch));
   if (ch == 141)
     goto fromeof;

   if (state == 0)
     {


       state = 1;
       (*--from = (ch));
       do { *to++ = (' '); if (to >= toend) goto tofull; } while (0);
       break;
     }
   if (IS_COMMENT (ch)
       || ch == '/'
       || IS_LINE_SEPARATOR (ch)
       || IS_PARALLEL_SEPARATOR (ch))
     {
       if (scrub_m68k_mri)
  {

    (*--from = (ch));
    do { *to++ = (' '); if (to >= toend) goto tofull; } while (0);
    break;
  }
       goto recycle;
     }






   if ((state == 2 || state == 11)
       && lex[ch] == 140
       && ! scrub_m68k_mri)
     {
       state = 1;
       do { *to++ = (ch); if (to >= toend) goto tofull; } while (0);
       break;
     }

   switch (state)
     {
     case 1:


       goto recycle;
     case 2:
       state = 3;
       if (to + 1 < toend)
  {

    do { *to++ = (' '); if (to >= toend) goto tofull; } while (0);
    goto recycle;
  }
       (*--from = (ch));
       do { *to++ = (' '); if (to >= toend) goto tofull; } while (0);
       break;
     case 3:
       if (scrub_m68k_mri)
  {

    (*--from = (ch));
    do { *to++ = (' '); if (to >= toend) goto tofull; } while (0);
    break;
  }
       goto recycle;
     case 9:
     case 10:
       if (scrub_m68k_mri)
  {

    state = 3;
    (*--from = (ch));
    do { *to++ = (' '); if (to >= toend) goto tofull; } while (0);
    break;
  }
       state = 10;
       goto recycle;
     case 11:
       if (LABELS_WITHOUT_COLONS || flag_m68k_mri)
  state = 1;
       else
  {




    state = 3;
  }
       (*--from = (ch));
       do { *to++ = (' '); if (to >= toend) goto tofull; } while (0);
       break;
     default:
       BAD_CASE (state);
     }
   break;

 case 129:
   ch2 = (from < fromend ? * (unsigned char *) (from++) : (saved_input = ((void*)0), fromlen = (*get) (input_buffer, sizeof input_buffer), from = input_buffer, fromend = from + fromlen, (fromlen == 0 ? 141 : * (unsigned char *) (from++))));
   if (ch2 == '*')
     {
       for (;;)
  {
    do
      {
        ch2 = (from < fromend ? * (unsigned char *) (from++) : (saved_input = ((void*)0), fromlen = (*get) (input_buffer, sizeof input_buffer), from = input_buffer, fromend = from + fromlen, (fromlen == 0 ? 141 : * (unsigned char *) (from++))));
        if (ch2 != 141 && IS_NEWLINE (ch2))
   add_newlines++;
      }
    while (ch2 != 141 && ch2 != '*');

    while (ch2 == '*')
      ch2 = (from < fromend ? * (unsigned char *) (from++) : (saved_input = ((void*)0), fromlen = (*get) (input_buffer, sizeof input_buffer), from = input_buffer, fromend = from + fromlen, (fromlen == 0 ? 141 : * (unsigned char *) (from++))));

    if (ch2 == 141 || ch2 == '/')
      break;



    (*--from = (ch2));
  }

       if (ch2 == 141)
  as_warn (_("end of file in multiline comment"));

       ch = ' ';
       goto recycle;
     }
   else
     {
       if (ch2 != 141)
  (*--from = (ch2));
       if (state == 9 || state == 10)
  state = 3;
       do { *to++ = (ch); if (to >= toend) goto tofull; } while (0);
     }
   break;

 case 131:
   quotechar = ch;
   if (state == 10)
     {

       (*--from = (ch));
       state = 3;
       do { *to++ = (' '); if (to >= toend) goto tofull; } while (0);



       ch = (from < fromend ? * (unsigned char *) (from++) : (saved_input = ((void*)0), fromlen = (*get) (input_buffer, sizeof input_buffer), from = input_buffer, fromend = from + fromlen, (fromlen == 0 ? 141 : * (unsigned char *) (from++))));
       old_state = 3;
     }
   else if (state == 9)
     old_state = 3;
   else
     old_state = state;
   state = 5;
   do { *to++ = (ch); if (to >= toend) goto tofull; } while (0);
   break;


 case 133:
   if (state == 10)
     {

       (*--from = (ch));
       state = 3;
       do { *to++ = (' '); if (to >= toend) goto tofull; } while (0);
       break;
     }
   ch = (from < fromend ? * (unsigned char *) (from++) : (saved_input = ((void*)0), fromlen = (*get) (input_buffer, sizeof input_buffer), from = input_buffer, fromend = from + fromlen, (fromlen == 0 ? 141 : * (unsigned char *) (from++))));
   if (ch == 141)
     {
       as_warn (_("end of file after a one-character quote; \\0 inserted"));
       ch = 0;
     }
   if (ch == '\\')
     {
       ch = (from < fromend ? * (unsigned char *) (from++) : (saved_input = ((void*)0), fromlen = (*get) (input_buffer, sizeof input_buffer), from = input_buffer, fromend = from + fromlen, (fromlen == 0 ? 141 : * (unsigned char *) (from++))));
       if (ch == 141)
  {
    as_warn (_("end of file in escape character"));
    ch = '\\';
  }
       else
  ch = process_escape (ch);
     }
   sprintf (out_buf, "%d", (int) (unsigned char) ch);


   if ((ch = (from < fromend ? * (unsigned char *) (from++) : (saved_input = ((void*)0), fromlen = (*get) (input_buffer, sizeof input_buffer), from = input_buffer, fromend = from + fromlen, (fromlen == 0 ? 141 : * (unsigned char *) (from++))))) != '\'')
     {



       if (ch != 141)
  (*--from = (ch));

     }
   if (strlen (out_buf) == 1)
     {
       do { *to++ = (out_buf[0]); if (to >= toend) goto tofull; } while (0);
       break;
     }
   if (state == 9)
     old_state = 3;
   else
     old_state = state;
   state = -1;
   out_string = out_buf;
   do { *to++ = (*out_string++); if (to >= toend) goto tofull; } while (0);
   break;


 case 140:



   if (state == 9 || state == 10)
     state = 3;
   else if (state != 3)
     state = 1;

   do { *to++ = (ch); if (to >= toend) goto tofull; } while (0);
   break;

 case 134:

   if (add_newlines)
     {
       --add_newlines;
       (*--from = (ch));
     }


 case 135:
   state = 0;
   do { *to++ = (ch); if (to >= toend) goto tofull; } while (0);
   break;

 case 132:
   state = 1;
   do { *to++ = (ch); if (to >= toend) goto tofull; } while (0);
   break;
 case 136:




   if (ch == '/')
     {
       ch2 = (from < fromend ? * (unsigned char *) (from++) : (saved_input = ((void*)0), fromlen = (*get) (input_buffer, sizeof input_buffer), from = input_buffer, fromend = from + fromlen, (fromlen == 0 ? 141 : * (unsigned char *) (from++))));
       if (ch2 == '*')
  {
    old_state = 3;
    state = -2;
    break;
  }
       else
  {
    (*--from = (ch2));
  }
     }

   if (state == 0 || state == 1)
     {
       int startch;

       startch = ch;

       do
  {
    ch = (from < fromend ? * (unsigned char *) (from++) : (saved_input = ((void*)0), fromlen = (*get) (input_buffer, sizeof input_buffer), from = input_buffer, fromend = from + fromlen, (fromlen == 0 ? 141 : * (unsigned char *) (from++))));
  }
       while (ch != 141 && IS_WHITESPACE (ch));

       if (ch == 141)
  {
    as_warn (_("end of file in comment; newline inserted"));
    do { *to++ = ('\n'); if (to >= toend) goto tofull; } while (0);
    break;
  }

       if (ch < '0' || ch > '9' || state != 0 || startch != '#')
  {

    while (ch != 141 && !IS_NEWLINE (ch))
      ch = (from < fromend ? * (unsigned char *) (from++) : (saved_input = ((void*)0), fromlen = (*get) (input_buffer, sizeof input_buffer), from = input_buffer, fromend = from + fromlen, (fromlen == 0 ? 141 : * (unsigned char *) (from++))));
    if (ch == 141)
      as_warn (_("end of file in comment; newline inserted"));
    state = 0;
    do { *to++ = ('\n'); if (to >= toend) goto tofull; } while (0);
    break;
  }

       (*--from = (ch));
       old_state = 4;
       state = -1;
       if (scrub_m68k_mri)
  out_string = "\tlinefile ";
       else
  out_string = "\t.linefile ";
       do { *to++ = (*out_string++); if (to >= toend) goto tofull; } while (0);
       break;
     }
   if (strchr (tc_comment_chars, ch) == ((void*)0)
       && (! scrub_m68k_mri
    || (ch != '!' && ch != '*')))
     goto de_fault;
   if (scrub_m68k_mri
       && (ch == '!' || ch == '*' || ch == '#')
       && state != 1
       && state != 10)
     goto de_fault;

 case 139:
   do
     {
       ch = (from < fromend ? * (unsigned char *) (from++) : (saved_input = ((void*)0), fromlen = (*get) (input_buffer, sizeof input_buffer), from = input_buffer, fromend = from + fromlen, (fromlen == 0 ? 141 : * (unsigned char *) (from++))));
     }
   while (ch != 141 && !IS_NEWLINE (ch));
   if (ch == 141)
     as_warn (_("end of file in comment; newline inserted"));
   state = 0;
   do { *to++ = ('\n'); if (to >= toend) goto tofull; } while (0);
   break;

 case 130:
   if (state == 10)
     {



       (*--from = (ch));
       state = 3;
       do { *to++ = (' '); if (to >= toend) goto tofull; } while (0);
       break;
     }
   if (state == 3)
     state = 9;



   if (to + 1 < toend
       && mri_state == ((void*)0)



       )
     {
       char *s;
       int len;

       for (s = from; s < fromend; s++)
  {
    int type;

    ch2 = *(unsigned char *) s;
    type = lex[ch2];
    if (type != 0
        && type != 130)
      break;
  }

       if (s > from)


  --s;

       len = s - from;

       if (len > (toend - to) - 1)
  len = (toend - to) - 1;

       if (len > 0)
  {
    do { *to++ = (ch); if (to >= toend) goto tofull; } while (0);
    memcpy (to, from, len);
    to += len;
    from += len;
    if (to >= toend)
      goto tofull;
    ch = (from < fromend ? * (unsigned char *) (from++) : (saved_input = ((void*)0), fromlen = (*get) (input_buffer, sizeof input_buffer), from = input_buffer, fromend = from + fromlen, (fromlen == 0 ? 141 : * (unsigned char *) (from++))));
  }
     }


 default:
 de_fault:

   if (state == 0)
     {
       state = 11;
     }
   else if (state == 1)
     {
       state = 2;
     }
   else if (state == 9)
     {
       if (!IS_SYMBOL_COMPONENT (ch))
  state = 3;
     }
   else if (state == 10)
     {
       if (ch == '\\')
  {
    if (to + 1 >= toend)
      {



        (*--from = (ch));
        goto tofull;
      }
    *to++ = ' ';
  }

       state = 3;
     }
   do { *to++ = (ch); if (to >= toend) goto tofull; } while (0);
   break;
 }
    }



 fromeof:

  return to - tostart;

 tofull:


  if (fromend > from)
    {
      saved_input = from;
      saved_input_len = fromend - from;
    }
  else
    saved_input = ((void*)0);

  return to - tostart;
}
