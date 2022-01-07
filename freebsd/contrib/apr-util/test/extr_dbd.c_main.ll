; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/apr-util/test/extr_dbd.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/apr-util/test/extr_dbd.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Loaded %s driver OK.\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Failed to load driver file apr_dbd_%s.so\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Failed to load driver apr_dbd_%s_driver.\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"No driver available for %s.\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Internal error loading %s.\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"Opened %s[%s] OK\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Failed to open %s[%s]\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"Internal error opening %s[%s]\0A\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"create table\00", align 1
@create_table = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [12 x i8] c"insert rows\00", align 1
@insert_rows = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [11 x i8] c"invalid op\00", align 1
@invalid_op = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [14 x i8] c"select random\00", align 1
@select_random = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [18 x i8] c"select sequential\00", align 1
@select_sequential = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [13 x i8] c"transactions\00", align 1
@test_transactions = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [16 x i8] c"prepared select\00", align 1
@test_pselect = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [15 x i8] c"prepared query\00", align 1
@test_pquery = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [11 x i8] c"drop table\00", align 1
@drop_table = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [32 x i8] c"Usage: %s driver-name [params]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  %12 = call i32 (...) @apr_initialize()
  %13 = call i32 @apr_pool_create(i32** %8, i32* null)
  %14 = load i32, i32* %4, align 4
  %15 = icmp sge i32 %14, 2
  br i1 %15, label %16, label %95

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = icmp sle i32 %17, 3
  br i1 %18, label %19, label %95

19:                                               ; preds = %16
  %20 = load i8**, i8*** %5, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 1
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %6, align 8
  %23 = load i32, i32* %4, align 4
  %24 = icmp eq i32 %23, 3
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 2
  %28 = load i8*, i8** %27, align 8
  br label %30

29:                                               ; preds = %19
  br label %30

30:                                               ; preds = %29, %25
  %31 = phi i8* [ %28, %25 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %29 ]
  store i8* %31, i8** %7, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = call i32 @apr_dbd_init(i32* %32)
  %34 = load i32, i32* @stdout, align 4
  %35 = call i32 @setbuf(i32 %34, i32* null)
  %36 = load i32*, i32** %8, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @apr_dbd_get_driver(i32* %36, i8* %37, i32** %10)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  switch i32 %39, label %52 [
    i32 128, label %40
    i32 132, label %43
    i32 129, label %46
    i32 130, label %49
  ]

40:                                               ; preds = %30
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %41)
  br label %55

43:                                               ; preds = %30
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i8* %44)
  br label %102

46:                                               ; preds = %30
  %47 = load i8*, i8** %6, align 8
  %48 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i8* %47)
  br label %102

49:                                               ; preds = %30
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %50)
  br label %102

52:                                               ; preds = %30
  %53 = load i8*, i8** %6, align 8
  %54 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %53)
  br label %102

55:                                               ; preds = %40
  %56 = load i32*, i32** %10, align 8
  %57 = load i32*, i32** %8, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 @apr_dbd_open(i32* %56, i32* %57, i8* %58, i32** %9)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  switch i32 %60, label %69 [
    i32 128, label %61
    i32 131, label %65
  ]

61:                                               ; preds = %55
  %62 = load i8*, i8** %6, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8* %62, i8* %63)
  br label %73

65:                                               ; preds = %55
  %66 = load i8*, i8** %6, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i8* %66, i8* %67)
  br label %102

69:                                               ; preds = %55
  %70 = load i8*, i8** %6, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i8* %70, i8* %71)
  br label %102

73:                                               ; preds = %61
  %74 = load i32, i32* @create_table, align 4
  %75 = call i32 @TEST(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* @insert_rows, align 4
  %77 = call i32 @TEST(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* @invalid_op, align 4
  %79 = call i32 @TEST(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* @select_random, align 4
  %81 = call i32 @TEST(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* @select_sequential, align 4
  %83 = call i32 @TEST(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* @test_transactions, align 4
  %85 = call i32 @TEST(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* @test_pselect, align 4
  %87 = call i32 @TEST(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* @test_pquery, align 4
  %89 = call i32 @TEST(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* @drop_table, align 4
  %91 = call i32 @TEST(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), i32 %90)
  %92 = load i32*, i32** %10, align 8
  %93 = load i32*, i32** %9, align 8
  %94 = call i32 @apr_dbd_close(i32* %92, i32* %93)
  br label %101

95:                                               ; preds = %16, %2
  %96 = load i32, i32* @stderr, align 4
  %97 = load i8**, i8*** %5, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i64 0
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 @fprintf(i32 %96, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.18, i64 0, i64 0), i8* %99)
  br label %101

101:                                              ; preds = %95, %73
  br label %102

102:                                              ; preds = %101, %69, %65, %52, %49, %46, %43
  %103 = load i32*, i32** %8, align 8
  %104 = call i32 @apr_pool_destroy(i32* %103)
  %105 = call i32 (...) @apr_terminate()
  ret i32 0
}

declare dso_local i32 @apr_initialize(...) #1

declare dso_local i32 @apr_pool_create(i32**, i32*) #1

declare dso_local i32 @apr_dbd_init(i32*) #1

declare dso_local i32 @setbuf(i32, i32*) #1

declare dso_local i32 @apr_dbd_get_driver(i32*, i8*, i32**) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i32 @apr_dbd_open(i32*, i32*, i8*, i32**) #1

declare dso_local i32 @TEST(i8*, i32) #1

declare dso_local i32 @apr_dbd_close(i32*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @apr_pool_destroy(i32*) #1

declare dso_local i32 @apr_terminate(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
