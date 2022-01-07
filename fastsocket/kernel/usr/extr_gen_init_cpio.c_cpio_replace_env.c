
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PATH_MAX ;
 char* getenv (char*) ;
 char* strchr (char*,char) ;
 int strncat (char*,char*,int) ;
 int strncpy (char*,char*,int) ;
 char* strstr (char*,char*) ;

__attribute__((used)) static char *cpio_replace_env(char *new_location)
{
       char expanded[PATH_MAX + 1];
       char env_var[PATH_MAX + 1];
       char *start;
       char *end;

       for (start = ((void*)0); (start = strstr(new_location, "${")); ) {
               end = strchr(start, '}');
               if (start < end) {
                       *env_var = *expanded = '\0';
                       strncat(env_var, start + 2, end - start - 2);
                       strncat(expanded, new_location, start - new_location);
                       strncat(expanded, getenv(env_var), PATH_MAX);
                       strncat(expanded, end + 1, PATH_MAX);
                       strncpy(new_location, expanded, PATH_MAX);
               } else
                       break;
       }

       return new_location;
}
