; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/apr-util/test/extr_dbd.c_test_pquery.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/apr-util/test/extr_dbd.c_test_pquery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [45 x i8] c"INSERT INTO apr_dbd_test VALUES (%s, %s, %d)\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"testpquery\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Prepare statement failed!\0A%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"prepared\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"insert\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"Exec of prepared statement failed!\0A%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [60 x i8] c"Showing table (should now contain row \22prepared insert 2\22)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @test_pquery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_pquery(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  store i32* null, i32** %10, align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  store i32* null, i32** %13, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = load i8*, i8** %11, align 8
  %19 = call i32 @apr_dbd_prepare(i32* %14, i32* %15, i32* %16, i8* %17, i8* %18, i32** %10)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %3
  %23 = load i32*, i32** %7, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i8* @apr_dbd_error(i32* %23, i32* %24, i32 %25)
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %26)
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %4, align 4
  br label %59

29:                                               ; preds = %3
  %30 = load i32*, i32** %7, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @apr_dbd_transaction_start(i32* %30, i32* %31, i32* %32, i32** %13)
  %34 = load i32*, i32** %7, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = call i32 @apr_dbd_pvquery(i32* %34, i32* %35, i32* %36, i32* %12, i32* %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32* null)
  store i32 %38, i32* %8, align 4
  %39 = load i32*, i32** %7, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = load i32*, i32** %13, align 8
  %42 = call i32 @apr_dbd_transaction_end(i32* %39, i32* %40, i32* %41)
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %29
  %46 = load i32*, i32** %7, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i8* @apr_dbd_error(i32* %46, i32* %47, i32 %48)
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i8* %49)
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %4, align 4
  br label %59

52:                                               ; preds = %29
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.7, i64 0, i64 0))
  %54 = load i32*, i32** %5, align 8
  %55 = load i32*, i32** %6, align 8
  %56 = load i32*, i32** %7, align 8
  %57 = call i32 @select_sequential(i32* %54, i32* %55, i32* %56)
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %52, %45, %22
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @apr_dbd_prepare(i32*, i32*, i32*, i8*, i8*, i32**) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @apr_dbd_error(i32*, i32*, i32) #1

declare dso_local i32 @apr_dbd_transaction_start(i32*, i32*, i32*, i32**) #1

declare dso_local i32 @apr_dbd_pvquery(i32*, i32*, i32*, i32*, i32*, i8*, i8*, i8*, i32*) #1

declare dso_local i32 @apr_dbd_transaction_end(i32*, i32*, i32*) #1

declare dso_local i32 @select_sequential(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
