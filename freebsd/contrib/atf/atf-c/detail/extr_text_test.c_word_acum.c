
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atf_error_t ;


 int atf_no_error () ;
 int strcat (char*,char const*) ;

__attribute__((used)) static
atf_error_t
word_acum(const char *word, void *data)
{
    char *acum = data;

    strcat(acum, word);

    return atf_no_error();
}
