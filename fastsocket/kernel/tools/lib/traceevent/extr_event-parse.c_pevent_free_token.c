
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free_token (char*) ;

void pevent_free_token(char *token)
{
 free_token(token);
}
