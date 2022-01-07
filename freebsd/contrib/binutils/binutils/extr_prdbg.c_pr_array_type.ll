; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_prdbg.c_pr_array_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_prdbg.c_pr_array_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pr_handle = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"|[]\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"|[%s]\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"|[%s:%s]\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c" /* string */\00", align 1
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i32, i32, i64)* @pr_array_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pr_array_type(i8* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.pr_handle*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca [20 x i8], align 16
  %13 = alloca [20 x i8], align 16
  %14 = alloca [50 x i8], align 16
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.pr_handle*
  store %struct.pr_handle* %16, %struct.pr_handle** %10, align 8
  %17 = load %struct.pr_handle*, %struct.pr_handle** %10, align 8
  %18 = call i8* @pop_type(%struct.pr_handle* %17)
  store i8* %18, i8** %11, align 8
  %19 = load i8*, i8** %11, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i64, i64* @FALSE, align 8
  store i64 %22, i64* %5, align 8
  br label %93

23:                                               ; preds = %4
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %23
  %27 = load i32, i32* %8, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = getelementptr inbounds [50 x i8], [50 x i8]* %14, i64 0, i64 0
  %31 = call i32 (i8*, i8*, ...) @sprintf(i8* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %42

32:                                               ; preds = %26
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, 1
  %35 = getelementptr inbounds [20 x i8], [20 x i8]* %13, i64 0, i64 0
  %36 = load i64, i64* @FALSE, align 8
  %37 = load i64, i64* @FALSE, align 8
  %38 = call i32 @print_vma(i32 %34, i8* %35, i64 %36, i64 %37)
  %39 = getelementptr inbounds [50 x i8], [50 x i8]* %14, i64 0, i64 0
  %40 = getelementptr inbounds [20 x i8], [20 x i8]* %13, i64 0, i64 0
  %41 = call i32 (i8*, i8*, ...) @sprintf(i8* %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %40)
  br label %42

42:                                               ; preds = %32, %29
  br label %58

43:                                               ; preds = %23
  %44 = load i32, i32* %7, align 4
  %45 = getelementptr inbounds [20 x i8], [20 x i8]* %12, i64 0, i64 0
  %46 = load i64, i64* @FALSE, align 8
  %47 = load i64, i64* @FALSE, align 8
  %48 = call i32 @print_vma(i32 %44, i8* %45, i64 %46, i64 %47)
  %49 = load i32, i32* %8, align 4
  %50 = getelementptr inbounds [20 x i8], [20 x i8]* %13, i64 0, i64 0
  %51 = load i64, i64* @FALSE, align 8
  %52 = load i64, i64* @FALSE, align 8
  %53 = call i32 @print_vma(i32 %49, i8* %50, i64 %51, i64 %52)
  %54 = getelementptr inbounds [50 x i8], [50 x i8]* %14, i64 0, i64 0
  %55 = getelementptr inbounds [20 x i8], [20 x i8]* %12, i64 0, i64 0
  %56 = getelementptr inbounds [20 x i8], [20 x i8]* %13, i64 0, i64 0
  %57 = call i32 (i8*, i8*, ...) @sprintf(i8* %54, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %55, i8* %56)
  br label %58

58:                                               ; preds = %43, %42
  %59 = load %struct.pr_handle*, %struct.pr_handle** %10, align 8
  %60 = getelementptr inbounds [50 x i8], [50 x i8]* %14, i64 0, i64 0
  %61 = call i32 @substitute_type(%struct.pr_handle* %59, i8* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %58
  %64 = load i64, i64* @FALSE, align 8
  store i64 %64, i64* %5, align 8
  br label %93

65:                                               ; preds = %58
  %66 = load i8*, i8** %11, align 8
  %67 = call i64 @strcmp(i8* %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %65
  %70 = load %struct.pr_handle*, %struct.pr_handle** %10, align 8
  %71 = call i32 @append_type(%struct.pr_handle* %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %69
  %74 = load %struct.pr_handle*, %struct.pr_handle** %10, align 8
  %75 = load i8*, i8** %11, align 8
  %76 = call i32 @append_type(%struct.pr_handle* %74, i8* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %73, %69
  %79 = load i64, i64* @FALSE, align 8
  store i64 %79, i64* %5, align 8
  br label %93

80:                                               ; preds = %73
  br label %81

81:                                               ; preds = %80, %65
  %82 = load i64, i64* %9, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %81
  %85 = load %struct.pr_handle*, %struct.pr_handle** %10, align 8
  %86 = call i32 @append_type(%struct.pr_handle* %85, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %84
  %89 = load i64, i64* @FALSE, align 8
  store i64 %89, i64* %5, align 8
  br label %93

90:                                               ; preds = %84
  br label %91

91:                                               ; preds = %90, %81
  %92 = load i64, i64* @TRUE, align 8
  store i64 %92, i64* %5, align 8
  br label %93

93:                                               ; preds = %91, %88, %78, %63, %21
  %94 = load i64, i64* %5, align 8
  ret i64 %94
}

declare dso_local i8* @pop_type(%struct.pr_handle*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @print_vma(i32, i8*, i64, i64) #1

declare dso_local i32 @substitute_type(%struct.pr_handle*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @append_type(%struct.pr_handle*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
