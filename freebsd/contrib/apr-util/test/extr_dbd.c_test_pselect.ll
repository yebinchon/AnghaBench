; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/apr-util/test/extr_dbd.c_test_pselect.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/apr-util/test/extr_dbd.c_test_pselect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [60 x i8] c"SELECT * FROM apr_dbd_test WHERE col3 <= %s or col1 = 'bar'\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"lowvalues\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Prepare statement failed!\0A%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Exec of prepared statement failed!\0A%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [85 x i8] c"Selecting rows where col3 <= 3 and bar row where it's unset.\0AShould show four rows.\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"ROW %d:\09\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"(null)\09\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%s\09\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @test_pselect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_pselect(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  store i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %12, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  store i32* null, i32** %15, align 8
  store i8* null, i8** %16, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = load i8*, i8** %11, align 8
  %21 = load i8*, i8** %12, align 8
  %22 = call i32 @apr_dbd_prepare(i32* %17, i32* %18, i32* %19, i8* %20, i8* %21, i32** %13)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %3
  %26 = load i32*, i32** %7, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i8* @apr_dbd_error(i32* %26, i32* %27, i32 %28)
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %29)
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %4, align 4
  br label %95

32:                                               ; preds = %3
  %33 = load i32*, i32** %7, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = load i32*, i32** %13, align 8
  %37 = call i32 @apr_dbd_pvselect(i32* %33, i32* %34, i32* %35, i32** %14, i32* %36, i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32* null)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %32
  %41 = load i32*, i32** %7, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i8* @apr_dbd_error(i32* %41, i32* %42, i32 %43)
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i8* %44)
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %4, align 4
  br label %95

47:                                               ; preds = %32
  store i32 0, i32* %9, align 4
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.5, i64 0, i64 0))
  %49 = load i32*, i32** %7, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = load i32*, i32** %14, align 8
  %52 = call i32 @apr_dbd_get_row(i32* %49, i32* %50, i32* %51, i32** %15, i32 -1)
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %85, %47
  %54 = load i32, i32* %8, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %90

56:                                               ; preds = %53
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 %58)
  store i32 0, i32* %10, align 4
  br label %60

60:                                               ; preds = %79, %56
  %61 = load i32, i32* %10, align 4
  %62 = load i32*, i32** %7, align 8
  %63 = load i32*, i32** %14, align 8
  %64 = call i32 @apr_dbd_num_cols(i32* %62, i32* %63)
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %82

66:                                               ; preds = %60
  %67 = load i32*, i32** %7, align 8
  %68 = load i32*, i32** %15, align 8
  %69 = load i32, i32* %10, align 4
  %70 = call i8* @apr_dbd_get_entry(i32* %67, i32* %68, i32 %69)
  store i8* %70, i8** %16, align 8
  %71 = load i8*, i8** %16, align 8
  %72 = icmp eq i8* %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %66
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  br label %78

75:                                               ; preds = %66
  %76 = load i8*, i8** %16, align 8
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* %76)
  br label %78

78:                                               ; preds = %75, %73
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %10, align 4
  br label %60

82:                                               ; preds = %60
  %83 = load i32, i32* @stdout, align 4
  %84 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %82
  %86 = load i32*, i32** %7, align 8
  %87 = load i32*, i32** %5, align 8
  %88 = load i32*, i32** %14, align 8
  %89 = call i32 @apr_dbd_get_row(i32* %86, i32* %87, i32* %88, i32** %15, i32 -1)
  store i32 %89, i32* %8, align 4
  br label %53

90:                                               ; preds = %53
  %91 = load i32, i32* %8, align 4
  %92 = icmp eq i32 %91, -1
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i32 0, i32 1
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %90, %40, %25
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i32 @apr_dbd_prepare(i32*, i32*, i32*, i8*, i8*, i32**) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @apr_dbd_error(i32*, i32*, i32) #1

declare dso_local i32 @apr_dbd_pvselect(i32*, i32*, i32*, i32**, i32*, i32, i8*, i32*) #1

declare dso_local i32 @apr_dbd_get_row(i32*, i32*, i32*, i32**, i32) #1

declare dso_local i32 @apr_dbd_num_cols(i32*, i32*) #1

declare dso_local i8* @apr_dbd_get_entry(i32*, i32*, i32) #1

declare dso_local i32 @fputs(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
