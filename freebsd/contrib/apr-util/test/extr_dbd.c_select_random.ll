; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/apr-util/test/extr_dbd.c_select_random.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/apr-util/test/extr_dbd.c_select_random.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [47 x i8] c"SELECT * FROM apr_dbd_test ORDER BY col1, col2\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Select failed: %s\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"get_row failed: %s\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"ROW 5:\09\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"(null)\09\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%s\09\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"ROW 1:\09\00", align 1
@.str.8 = private unnamed_addr constant [57 x i8] c"Oops!  get_row out of range but thinks it succeeded!\0A%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @select_random to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @select_random(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load i8*, i8** %11, align 8
  %18 = call i32 @apr_dbd_select(i32* %14, i32* %15, i32* %16, i32** %12, i8* %17, i32 1)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %3
  %22 = load i32*, i32** %7, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i8* @apr_dbd_error(i32* %22, i32* %23, i32 %24)
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %4, align 4
  br label %123

28:                                               ; preds = %3
  %29 = load i32*, i32** %7, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = load i32*, i32** %12, align 8
  %32 = call i32 @apr_dbd_get_row(i32* %29, i32* %30, i32* %31, i32** %13, i32 5)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %28
  %36 = load i32*, i32** %7, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i8* @apr_dbd_error(i32* %36, i32* %37, i32 %38)
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %39)
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %4, align 4
  br label %123

42:                                               ; preds = %28
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %44

44:                                               ; preds = %63, %42
  %45 = load i32, i32* %9, align 4
  %46 = load i32*, i32** %7, align 8
  %47 = load i32*, i32** %12, align 8
  %48 = call i32 @apr_dbd_num_cols(i32* %46, i32* %47)
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %66

50:                                               ; preds = %44
  %51 = load i32*, i32** %7, align 8
  %52 = load i32*, i32** %13, align 8
  %53 = load i32, i32* %9, align 4
  %54 = call i8* @apr_dbd_get_entry(i32* %51, i32* %52, i32 %53)
  store i8* %54, i8** %10, align 8
  %55 = load i8*, i8** %10, align 8
  %56 = icmp eq i8* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %62

59:                                               ; preds = %50
  %60 = load i8*, i8** %10, align 8
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %60)
  br label %62

62:                                               ; preds = %59, %57
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %9, align 4
  br label %44

66:                                               ; preds = %44
  %67 = load i32, i32* @stdout, align 4
  %68 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 %67)
  %69 = load i32*, i32** %7, align 8
  %70 = load i32*, i32** %5, align 8
  %71 = load i32*, i32** %12, align 8
  %72 = call i32 @apr_dbd_get_row(i32* %69, i32* %70, i32* %71, i32** %13, i32 1)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %66
  %76 = load i32*, i32** %7, align 8
  %77 = load i32*, i32** %6, align 8
  %78 = load i32, i32* %8, align 4
  %79 = call i8* @apr_dbd_error(i32* %76, i32* %77, i32 %78)
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %79)
  %81 = load i32, i32* %8, align 4
  store i32 %81, i32* %4, align 4
  br label %123

82:                                               ; preds = %66
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %84

84:                                               ; preds = %103, %82
  %85 = load i32, i32* %9, align 4
  %86 = load i32*, i32** %7, align 8
  %87 = load i32*, i32** %12, align 8
  %88 = call i32 @apr_dbd_num_cols(i32* %86, i32* %87)
  %89 = icmp slt i32 %85, %88
  br i1 %89, label %90, label %106

90:                                               ; preds = %84
  %91 = load i32*, i32** %7, align 8
  %92 = load i32*, i32** %13, align 8
  %93 = load i32, i32* %9, align 4
  %94 = call i8* @apr_dbd_get_entry(i32* %91, i32* %92, i32 %93)
  store i8* %94, i8** %10, align 8
  %95 = load i8*, i8** %10, align 8
  %96 = icmp eq i8* %95, null
  br i1 %96, label %97, label %99

97:                                               ; preds = %90
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %102

99:                                               ; preds = %90
  %100 = load i8*, i8** %10, align 8
  %101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %100)
  br label %102

102:                                              ; preds = %99, %97
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %9, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %9, align 4
  br label %84

106:                                              ; preds = %84
  %107 = load i32, i32* @stdout, align 4
  %108 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 %107)
  %109 = load i32*, i32** %7, align 8
  %110 = load i32*, i32** %5, align 8
  %111 = load i32*, i32** %12, align 8
  %112 = call i32 @apr_dbd_get_row(i32* %109, i32* %110, i32* %111, i32** %13, i32 11)
  store i32 %112, i32* %8, align 4
  %113 = load i32, i32* %8, align 4
  %114 = icmp ne i32 %113, -1
  br i1 %114, label %115, label %121

115:                                              ; preds = %106
  %116 = load i32*, i32** %7, align 8
  %117 = load i32*, i32** %6, align 8
  %118 = load i32, i32* %8, align 4
  %119 = call i8* @apr_dbd_error(i32* %116, i32* %117, i32 %118)
  %120 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.8, i64 0, i64 0), i8* %119)
  store i32 -1, i32* %4, align 4
  br label %123

121:                                              ; preds = %106
  store i32 0, i32* %8, align 4
  %122 = load i32, i32* %8, align 4
  store i32 %122, i32* %4, align 4
  br label %123

123:                                              ; preds = %121, %115, %75, %35, %21
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

declare dso_local i32 @apr_dbd_select(i32*, i32*, i32*, i32**, i8*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @apr_dbd_error(i32*, i32*, i32) #1

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
