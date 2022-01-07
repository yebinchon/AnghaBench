; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/apr-util/test/extr_testxml.c_create_dummy_file_error.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/apr-util/test/extr_testxml.c_create_dummy_file_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.create_dummy_file_error.template = private unnamed_addr constant [29 x i8] c"data/testxmldummyerrorXXXXXX\00", align 16
@APR_FOPEN_CREATE = common dso_local global i32 0, align 4
@APR_FOPEN_TRUNCATE = common dso_local global i32 0, align 4
@APR_FOPEN_DELONCLOSE = common dso_local global i32 0, align 4
@APR_FOPEN_READ = common dso_local global i32 0, align 4
@APR_FOPEN_WRITE = common dso_local global i32 0, align 4
@APR_FOPEN_EXCL = common dso_local global i32 0, align 4
@APR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [56 x i8] c"<?xml version=\221.0\22 ?>\0A<maryx><had a=\22little\22/><lamb/>\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"<hmm roast=\22lamb\22 for=\22dinner\22>yummy</hmm>\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"</mary>\0A\00", align 1
@APR_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, i32**)* @create_dummy_file_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @create_dummy_file_error(i32* %0, i32* %1, i32** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca [29 x i8], align 16
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32** %2, i32*** %7, align 8
  store i64 0, i64* %10, align 8
  %12 = bitcast [29 x i8]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %12, i8* align 16 getelementptr inbounds ([29 x i8], [29 x i8]* @__const.create_dummy_file_error.template, i32 0, i32 0), i64 29, i1 false)
  %13 = load i32**, i32*** %7, align 8
  %14 = getelementptr inbounds [29 x i8], [29 x i8]* %11, i64 0, i64 0
  %15 = load i32, i32* @APR_FOPEN_CREATE, align 4
  %16 = load i32, i32* @APR_FOPEN_TRUNCATE, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @APR_FOPEN_DELONCLOSE, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @APR_FOPEN_READ, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @APR_FOPEN_WRITE, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @APR_FOPEN_EXCL, align 4
  %25 = or i32 %23, %24
  %26 = load i32*, i32** %6, align 8
  %27 = call i64 @apr_file_mktemp(i32** %13, i8* %14, i32 %25, i32* %26)
  store i64 %27, i64* %9, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = load i64, i64* @APR_SUCCESS, align 8
  %30 = load i64, i64* %9, align 8
  %31 = call i32 @ABTS_INT_EQUAL(i32* %28, i64 %29, i64 %30)
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* @APR_SUCCESS, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %3
  %36 = load i64, i64* %9, align 8
  store i64 %36, i64* %4, align 8
  br label %76

37:                                               ; preds = %3
  %38 = load i32**, i32*** %7, align 8
  %39 = load i32*, i32** %38, align 8
  %40 = call i64 @apr_file_puts(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32* %39)
  store i64 %40, i64* %9, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = load i64, i64* @APR_SUCCESS, align 8
  %43 = load i64, i64* %9, align 8
  %44 = call i32 @ABTS_INT_EQUAL(i32* %41, i64 %42, i64 %43)
  store i32 0, i32* %8, align 4
  br label %45

45:                                               ; preds = %56, %37
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %46, 5000
  br i1 %47, label %48, label %59

48:                                               ; preds = %45
  %49 = load i32**, i32*** %7, align 8
  %50 = load i32*, i32** %49, align 8
  %51 = call i64 @apr_file_puts(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32* %50)
  store i64 %51, i64* %9, align 8
  %52 = load i32*, i32** %5, align 8
  %53 = load i64, i64* @APR_SUCCESS, align 8
  %54 = load i64, i64* %9, align 8
  %55 = call i32 @ABTS_INT_EQUAL(i32* %52, i64 %53, i64 %54)
  br label %56

56:                                               ; preds = %48
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %45

59:                                               ; preds = %45
  %60 = load i32**, i32*** %7, align 8
  %61 = load i32*, i32** %60, align 8
  %62 = call i64 @apr_file_puts(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32* %61)
  store i64 %62, i64* %9, align 8
  %63 = load i32*, i32** %5, align 8
  %64 = load i64, i64* @APR_SUCCESS, align 8
  %65 = load i64, i64* %9, align 8
  %66 = call i32 @ABTS_INT_EQUAL(i32* %63, i64 %64, i64 %65)
  %67 = load i32**, i32*** %7, align 8
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* @APR_SET, align 4
  %70 = call i64 @apr_file_seek(i32* %68, i32 %69, i64* %10)
  store i64 %70, i64* %9, align 8
  %71 = load i32*, i32** %5, align 8
  %72 = load i64, i64* @APR_SUCCESS, align 8
  %73 = load i64, i64* %9, align 8
  %74 = call i32 @ABTS_INT_EQUAL(i32* %71, i64 %72, i64 %73)
  %75 = load i64, i64* %9, align 8
  store i64 %75, i64* %4, align 8
  br label %76

76:                                               ; preds = %59, %35
  %77 = load i64, i64* %4, align 8
  ret i64 %77
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @apr_file_mktemp(i32**, i8*, i32, i32*) #2

declare dso_local i32 @ABTS_INT_EQUAL(i32*, i64, i64) #2

declare dso_local i64 @apr_file_puts(i8*, i32*) #2

declare dso_local i64 @apr_file_seek(i32*, i32, i64*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
