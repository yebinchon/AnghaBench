; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/apr-util/test/extr_dbd.c_insert_rows.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/apr-util/test/extr_dbd.c_insert_rows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [266 x i8] c"INSERT into apr_dbd_test (col1) values ('foo');INSERT into apr_dbd_test values ('wibble', 'other', 5);INSERT into apr_dbd_test values ('wibble', 'nothing', 5);INSERT into apr_dbd_test values ('qwerty', 'foo', 0);INSERT into apr_dbd_test values ('asdfgh', 'bar', 1);\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"INSERT into apr_dbd_test (col1) values ('foo');\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"INSERT into apr_dbd_test values ('wibble', 'other', 5);\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"INSERT into apr_dbd_test values ('wibble', 'nothing', 5);\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"INSERT into apr_dbd_test values ('qwerty', 'foo', 0);\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"INSERT into apr_dbd_test values ('asdfgh', 'bar', 1);\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"Compound insert failed; trying statements one-by-one\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"%d single inserts failed too.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @insert_rows to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @insert_rows(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca [6 x i8*], align 16
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i8* getelementptr inbounds ([266 x i8], [266 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load i8*, i8** %11, align 8
  %16 = call i32 @apr_dbd_query(i32* %13, i32* %14, i32* %9, i8* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %59

19:                                               ; preds = %3
  %20 = bitcast [6 x i8*]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %20, i8 0, i64 48, i1 false)
  %21 = bitcast i8* %20 to [6 x i8*]*
  %22 = getelementptr inbounds [6 x i8*], [6 x i8*]* %21, i32 0, i32 0
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i32 0, i32 0), i8** %22, align 16
  %23 = getelementptr inbounds [6 x i8*], [6 x i8*]* %21, i32 0, i32 1
  store i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i32 0, i32 0), i8** %23, align 8
  %24 = getelementptr inbounds [6 x i8*], [6 x i8*]* %21, i32 0, i32 2
  store i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i32 0, i32 0), i8** %24, align 16
  %25 = getelementptr inbounds [6 x i8*], [6 x i8*]* %21, i32 0, i32 3
  store i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i32 0, i32 0), i8** %25, align 8
  %26 = getelementptr inbounds [6 x i8*], [6 x i8*]* %21, i32 0, i32 4
  store i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i32 0, i32 0), i8** %26, align 16
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %49, %19
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [6 x i8*], [6 x i8*]* %12, i64 0, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %52

34:                                               ; preds = %28
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [6 x i8*], [6 x i8*]* %12, i64 0, i64 %36
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %11, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = load i8*, i8** %11, align 8
  %42 = call i32 @apr_dbd_query(i32* %39, i32* %40, i32* %9, i8* %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %34
  %46 = load i32, i32* %10, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %10, align 4
  br label %48

48:                                               ; preds = %45, %34
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %28

52:                                               ; preds = %28
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* %10, align 4
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %55, %52
  br label %59

59:                                               ; preds = %58, %3
  %60 = load i32, i32* %8, align 4
  ret i32 %60
}

declare dso_local i32 @apr_dbd_query(i32*, i32*, i32*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
