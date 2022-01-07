; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/apr-util/test/extr_testxml.c_test_billion_laughs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/apr-util/test/extr_testxml.c_test_billion_laughs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"data/billion-laughs.xml\00", align 1
@APR_FOPEN_READ = common dso_local global i32 0, align 4
@p = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"open billion-laughs.xml\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @test_billion_laughs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_billion_laughs(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i32, i32* @APR_FOPEN_READ, align 4
  %10 = load i32, i32* @p, align 4
  %11 = call i32 @apr_file_open(i32** %5, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %9, i32 0, i32 %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32*, i32** %3, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @apr_assert_success(i32* %12, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* @p, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @apr_xml_parse_file(i32 %15, i32** %6, i32** %7, i32* %16, i32 2000)
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @apr_file_close(i32* %18)
  ret void
}

declare dso_local i32 @apr_file_open(i32**, i8*, i32, i32, i32) #1

declare dso_local i32 @apr_assert_success(i32*, i8*, i32) #1

declare dso_local i32 @apr_xml_parse_file(i32, i32**, i32**, i32*, i32) #1

declare dso_local i32 @apr_file_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
