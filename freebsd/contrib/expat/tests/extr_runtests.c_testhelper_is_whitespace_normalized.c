
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int XCS (char*) ;
 int assert (int) ;
 int is_whitespace_normalized (int ,int) ;

__attribute__((used)) static void
testhelper_is_whitespace_normalized(void)
{
    assert(is_whitespace_normalized(XCS("abc"), 0));
    assert(is_whitespace_normalized(XCS("abc"), 1));
    assert(is_whitespace_normalized(XCS("abc def ghi"), 0));
    assert(is_whitespace_normalized(XCS("abc def ghi"), 1));
    assert(!is_whitespace_normalized(XCS(" abc def ghi"), 0));
    assert(is_whitespace_normalized(XCS(" abc def ghi"), 1));
    assert(!is_whitespace_normalized(XCS("abc  def ghi"), 0));
    assert(is_whitespace_normalized(XCS("abc  def ghi"), 1));
    assert(!is_whitespace_normalized(XCS("abc def ghi "), 0));
    assert(is_whitespace_normalized(XCS("abc def ghi "), 1));
    assert(!is_whitespace_normalized(XCS(" "), 0));
    assert(is_whitespace_normalized(XCS(" "), 1));
    assert(!is_whitespace_normalized(XCS("\t"), 0));
    assert(!is_whitespace_normalized(XCS("\t"), 1));
    assert(!is_whitespace_normalized(XCS("\n"), 0));
    assert(!is_whitespace_normalized(XCS("\n"), 1));
    assert(!is_whitespace_normalized(XCS("\r"), 0));
    assert(!is_whitespace_normalized(XCS("\r"), 1));
    assert(!is_whitespace_normalized(XCS("abc\t def"), 1));
}
