; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/apr-util/test/extr_teststrmatch.c_test_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/apr-util/test/extr_teststrmatch.c_test_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [34 x i8] c"string that contains a patterN...\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"string that contains a pattern...\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"pattern at the start of a string\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"string that ends with a pattern\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"patter\80n not found, negative chars in input\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"patter\80n, negative chars, contains pattern...\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"pattern\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @test_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_str(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %17 = load i32*, i32** @p, align 8
  store i32* %17, i32** %5, align 8
  store i8* null, i8** %10, align 8
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8** %12, align 8
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8** %13, align 8
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8** %14, align 8
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i8** %15, align 8
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i8** %16, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = call i32* @apr_strmatch_precompile(i32* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 1)
  store i32* %19, i32** %6, align 8
  %20 = load i32*, i32** %3, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @ABTS_PTR_NOTNULL(i32* %20, i32* %21)
  %23 = load i32*, i32** %5, align 8
  %24 = call i32* @apr_strmatch_precompile(i32* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 0)
  store i32* %24, i32** %7, align 8
  %25 = load i32*, i32** %3, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @ABTS_PTR_NOTNULL(i32* %25, i32* %26)
  %28 = load i32*, i32** %5, align 8
  %29 = call i32* @apr_strmatch_precompile(i32* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i32 0)
  store i32* %29, i32** %8, align 8
  %30 = load i32*, i32** %3, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = call i32 @ABTS_PTR_NOTNULL(i32* %30, i32* %31)
  %33 = load i32*, i32** %5, align 8
  %34 = call i32* @apr_strmatch_precompile(i32* %33, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), i32 0)
  store i32* %34, i32** %9, align 8
  %35 = load i32*, i32** %3, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = call i32 @ABTS_PTR_NOTNULL(i32* %35, i32* %36)
  %38 = load i32*, i32** %6, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = call i32 @strlen(i8* %40)
  %42 = call i8* @apr_strmatch(i32* %38, i8* %39, i32 %41)
  store i8* %42, i8** %10, align 8
  %43 = load i32*, i32** %3, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = call i32 @ABTS_PTR_EQUAL(i32* %43, i8* null, i8* %44)
  %46 = load i32*, i32** %6, align 8
  %47 = load i8*, i8** %12, align 8
  %48 = load i8*, i8** %12, align 8
  %49 = call i32 @strlen(i8* %48)
  %50 = call i8* @apr_strmatch(i32* %46, i8* %47, i32 %49)
  store i8* %50, i8** %10, align 8
  %51 = load i32*, i32** %3, align 8
  %52 = load i8*, i8** %12, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 23
  %54 = load i8*, i8** %10, align 8
  %55 = call i32 @ABTS_PTR_EQUAL(i32* %51, i8* %53, i8* %54)
  %56 = load i32*, i32** %8, align 8
  %57 = load i8*, i8** %11, align 8
  %58 = load i8*, i8** %11, align 8
  %59 = call i32 @strlen(i8* %58)
  %60 = call i8* @apr_strmatch(i32* %56, i8* %57, i32 %59)
  store i8* %60, i8** %10, align 8
  %61 = load i32*, i32** %3, align 8
  %62 = load i8*, i8** %11, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 5
  %64 = load i8*, i8** %10, align 8
  %65 = call i32 @ABTS_PTR_EQUAL(i32* %61, i8* %63, i8* %64)
  %66 = load i32*, i32** %9, align 8
  %67 = load i8*, i8** %11, align 8
  %68 = load i8*, i8** %11, align 8
  %69 = call i32 @strlen(i8* %68)
  %70 = call i8* @apr_strmatch(i32* %66, i8* %67, i32 %69)
  store i8* %70, i8** %10, align 8
  %71 = load i32*, i32** %3, align 8
  %72 = load i8*, i8** %11, align 8
  %73 = load i8*, i8** %10, align 8
  %74 = call i32 @ABTS_PTR_EQUAL(i32* %71, i8* %72, i8* %73)
  %75 = load i32*, i32** %7, align 8
  %76 = load i8*, i8** %11, align 8
  %77 = load i8*, i8** %11, align 8
  %78 = call i32 @strlen(i8* %77)
  %79 = call i8* @apr_strmatch(i32* %75, i8* %76, i32 %78)
  store i8* %79, i8** %10, align 8
  %80 = load i32*, i32** %3, align 8
  %81 = load i8*, i8** %11, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 23
  %83 = load i8*, i8** %10, align 8
  %84 = call i32 @ABTS_PTR_EQUAL(i32* %80, i8* %82, i8* %83)
  %85 = load i32*, i32** %6, align 8
  %86 = load i8*, i8** %13, align 8
  %87 = load i8*, i8** %13, align 8
  %88 = call i32 @strlen(i8* %87)
  %89 = call i8* @apr_strmatch(i32* %85, i8* %86, i32 %88)
  store i8* %89, i8** %10, align 8
  %90 = load i32*, i32** %3, align 8
  %91 = load i8*, i8** %13, align 8
  %92 = load i8*, i8** %10, align 8
  %93 = call i32 @ABTS_PTR_EQUAL(i32* %90, i8* %91, i8* %92)
  %94 = load i32*, i32** %6, align 8
  %95 = load i8*, i8** %14, align 8
  %96 = load i8*, i8** %14, align 8
  %97 = call i32 @strlen(i8* %96)
  %98 = call i8* @apr_strmatch(i32* %94, i8* %95, i32 %97)
  store i8* %98, i8** %10, align 8
  %99 = load i32*, i32** %3, align 8
  %100 = load i8*, i8** %14, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 24
  %102 = load i8*, i8** %10, align 8
  %103 = call i32 @ABTS_PTR_EQUAL(i32* %99, i8* %101, i8* %102)
  %104 = load i32*, i32** %6, align 8
  %105 = load i8*, i8** %15, align 8
  %106 = load i8*, i8** %15, align 8
  %107 = call i32 @strlen(i8* %106)
  %108 = call i8* @apr_strmatch(i32* %104, i8* %105, i32 %107)
  store i8* %108, i8** %10, align 8
  %109 = load i32*, i32** %3, align 8
  %110 = load i8*, i8** %10, align 8
  %111 = call i32 @ABTS_PTR_EQUAL(i32* %109, i8* null, i8* %110)
  %112 = load i32*, i32** %6, align 8
  %113 = load i8*, i8** %16, align 8
  %114 = load i8*, i8** %16, align 8
  %115 = call i32 @strlen(i8* %114)
  %116 = call i8* @apr_strmatch(i32* %112, i8* %113, i32 %115)
  store i8* %116, i8** %10, align 8
  %117 = load i32*, i32** %3, align 8
  %118 = load i8*, i8** %16, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 35
  %120 = load i8*, i8** %10, align 8
  %121 = call i32 @ABTS_PTR_EQUAL(i32* %117, i8* %119, i8* %120)
  ret void
}

declare dso_local i32* @apr_strmatch_precompile(i32*, i8*, i32) #1

declare dso_local i32 @ABTS_PTR_NOTNULL(i32*, i32*) #1

declare dso_local i8* @apr_strmatch(i32*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ABTS_PTR_EQUAL(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
