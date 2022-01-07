
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pevent_free_token (char*) ;

__attribute__((used)) static void free_token(char *token)
{
 pevent_free_token(token);
}
