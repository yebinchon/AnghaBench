; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/apr-util/test/extr_testdbm.c_test_dbm.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/apr-util/test/extr_testdbm.c_test_dbm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"data/test-\00", align 1
@APR_DBM_RWCREATE = common dso_local global i32 0, align 4
@APR_OS_DEFAULT = common dso_local global i32 0, align 4
@APR_SUCCESS = common dso_local global i64 0, align 8
@APR_DBM_READONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @test_dbm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_dbm(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  store i8* %10, i8** %8, align 8
  %11 = load i32, i32* @p, align 4
  %12 = load i8*, i8** %8, align 8
  %13 = call i8* @apr_pstrcat(i32 %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %12, i32* null)
  store i8* %13, i8** %9, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = load i32, i32* @APR_DBM_RWCREATE, align 4
  %17 = load i32, i32* @APR_OS_DEFAULT, align 4
  %18 = load i32, i32* @p, align 4
  %19 = call i64 @apr_dbm_open_ex(i32** %5, i8* %14, i8* %15, i32 %16, i32 %17, i32 %18)
  store i64 %19, i64* %6, align 8
  %20 = load i32*, i32** %3, align 8
  %21 = load i64, i64* @APR_SUCCESS, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @ABTS_INT_EQUAL(i32* %20, i64 %21, i64 %22)
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* @APR_SUCCESS, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  br label %81

28:                                               ; preds = %2
  %29 = call i32* (...) @generate_table()
  store i32* %29, i32** %7, align 8
  %30 = load i32*, i32** %3, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @test_dbm_store(i32* %30, i32* %31, i32* %32)
  %34 = load i32*, i32** %3, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @test_dbm_fetch(i32* %34, i32* %35, i32* %36)
  %38 = load i32*, i32** %3, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @test_dbm_delete(i32* %38, i32* %39, i32* %40)
  %42 = load i32*, i32** %3, align 8
  %43 = load i32*, i32** %5, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = call i32 @test_dbm_exists(i32* %42, i32* %43, i32* %44)
  %46 = load i32*, i32** %3, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 @test_dbm_traversal(i32* %46, i32* %47, i32* %48)
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @apr_dbm_close(i32* %50)
  %52 = load i8*, i8** %8, align 8
  %53 = load i8*, i8** %9, align 8
  %54 = load i32, i32* @APR_DBM_READONLY, align 4
  %55 = load i32, i32* @APR_OS_DEFAULT, align 4
  %56 = load i32, i32* @p, align 4
  %57 = call i64 @apr_dbm_open_ex(i32** %5, i8* %52, i8* %53, i32 %54, i32 %55, i32 %56)
  store i64 %57, i64* %6, align 8
  %58 = load i32*, i32** %3, align 8
  %59 = load i64, i64* @APR_SUCCESS, align 8
  %60 = load i64, i64* %6, align 8
  %61 = call i32 @ABTS_INT_EQUAL(i32* %58, i64 %59, i64 %60)
  %62 = load i64, i64* %6, align 8
  %63 = load i64, i64* @APR_SUCCESS, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %28
  br label %81

66:                                               ; preds = %28
  %67 = load i32*, i32** %3, align 8
  %68 = load i32*, i32** %5, align 8
  %69 = load i32*, i32** %7, align 8
  %70 = call i32 @test_dbm_exists(i32* %67, i32* %68, i32* %69)
  %71 = load i32*, i32** %3, align 8
  %72 = load i32*, i32** %5, align 8
  %73 = load i32*, i32** %7, align 8
  %74 = call i32 @test_dbm_traversal(i32* %71, i32* %72, i32* %73)
  %75 = load i32*, i32** %3, align 8
  %76 = load i32*, i32** %5, align 8
  %77 = load i32*, i32** %7, align 8
  %78 = call i32 @test_dbm_fetch(i32* %75, i32* %76, i32* %77)
  %79 = load i32*, i32** %5, align 8
  %80 = call i32 @apr_dbm_close(i32* %79)
  br label %81

81:                                               ; preds = %66, %65, %27
  ret void
}

declare dso_local i8* @apr_pstrcat(i32, i8*, i8*, i32*) #1

declare dso_local i64 @apr_dbm_open_ex(i32**, i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @ABTS_INT_EQUAL(i32*, i64, i64) #1

declare dso_local i32* @generate_table(...) #1

declare dso_local i32 @test_dbm_store(i32*, i32*, i32*) #1

declare dso_local i32 @test_dbm_fetch(i32*, i32*, i32*) #1

declare dso_local i32 @test_dbm_delete(i32*, i32*, i32*) #1

declare dso_local i32 @test_dbm_exists(i32*, i32*, i32*) #1

declare dso_local i32 @test_dbm_traversal(i32*, i32*, i32*) #1

declare dso_local i32 @apr_dbm_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
