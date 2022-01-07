
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arcDisState {scalar_t__ commentBuffer; int commNum; int * comm; } ;


 int WRITE_COMMENT (char const*) ;
 int comment_prefix ;
 char* post_address (struct arcDisState*,long) ;
 int strcat (scalar_t__,char*) ;
 int strcpy (scalar_t__,int ) ;
 int strncat (scalar_t__,int ,int) ;

__attribute__((used)) static void
write_comments_(struct arcDisState * state,
  int shimm,
  int is_limm,
  long limm_value)
{
  if (state->commentBuffer != 0)
    {
      int i;

      if (is_limm)
 {
   const char *name = post_address (state, limm_value + shimm);

   if (*name != 0)
     WRITE_COMMENT (name);
 }
      for (i = 0; i < state->commNum; i++)
 {
   if (i == 0)
     strcpy (state->commentBuffer, comment_prefix);
   else
     strcat (state->commentBuffer, ", ");
   strncat (state->commentBuffer, state->comm[i],
     sizeof (state->commentBuffer));
 }
    }
}
