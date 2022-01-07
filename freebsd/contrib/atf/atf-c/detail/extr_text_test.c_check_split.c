
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atf_list_t ;


 int ATF_CHECK_EQ (int ,int ) ;
 int ATF_CHECK_STREQ (char const*,char const*) ;
 int CE (int ) ;
 int array_size (char const**) ;
 int atf_list_fini (int *) ;
 scalar_t__ atf_list_index_c (int *,size_t) ;
 int atf_list_size (int *) ;
 int atf_text_split (char const*,char const*,int *) ;
 int printf (char*,...) ;

__attribute__((used)) static
void
check_split(const char *str, const char *delim, const char *words[])
{
    atf_list_t list;
    const char **word;
    size_t i;

    printf("Splitting '%s' with delimiter '%s'\n", str, delim);
    CE(atf_text_split(str, delim, &list));

    printf("Expecting %zd words\n", array_size(words));
    ATF_CHECK_EQ(atf_list_size(&list), array_size(words));

    for (word = words, i = 0; *word != ((void*)0); word++, i++) {
        printf("Word at position %zd should be '%s'\n", i, words[i]);
        ATF_CHECK_STREQ((const char *)atf_list_index_c(&list, i), words[i]);
    }

    atf_list_fini(&list);
}
