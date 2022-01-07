
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;

__attribute__((used)) static void
filter_destroy(char **filt)
{
 free(*filt);
 *filt = ((void*)0);
}
