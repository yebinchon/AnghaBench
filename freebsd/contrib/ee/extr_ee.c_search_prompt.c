
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int TRUE ;
 int free (char*) ;
 char* get_string (int ,int ) ;
 int gold ;
 char* malloc (scalar_t__) ;
 int search (int ) ;
 int search_prompt_str ;
 char* srch_1 ;
 char* srch_3 ;
 char* srch_str ;
 scalar_t__ strlen (char*) ;
 char toupper (char) ;
 char* u_srch_str ;

void
search_prompt()
{
 if (srch_str != ((void*)0))
  free(srch_str);
 if ((u_srch_str != ((void*)0)) && (*u_srch_str != '\0'))
  free(u_srch_str);
 srch_str = get_string(search_prompt_str, FALSE);
 gold = FALSE;
 srch_3 = srch_str;
 srch_1 = u_srch_str = malloc(strlen(srch_str) + 1);
 while (*srch_3 != '\0')
 {
  *srch_1 = toupper(*srch_3);
  srch_1++;
  srch_3++;
 }
 *srch_1 = '\0';
 search(TRUE);
}
