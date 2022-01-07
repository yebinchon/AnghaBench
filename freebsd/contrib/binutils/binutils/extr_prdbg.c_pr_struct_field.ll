; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_prdbg.c_pr_struct_field.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_prdbg.c_pr_struct_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pr_handle = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"; /* \00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"bitsize \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"bitpos \00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c" */\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64, i64, i32)* @pr_struct_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pr_struct_field(i8* %0, i8* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.pr_handle*, align 8
  %13 = alloca [20 x i8], align 16
  %14 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.pr_handle*
  store %struct.pr_handle* %16, %struct.pr_handle** %12, align 8
  %17 = load %struct.pr_handle*, %struct.pr_handle** %12, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 @substitute_type(%struct.pr_handle* %17, i8* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* %6, align 4
  br label %95

23:                                               ; preds = %5
  %24 = load %struct.pr_handle*, %struct.pr_handle** %12, align 8
  %25 = call i32 @append_type(%struct.pr_handle* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* @FALSE, align 4
  store i32 %28, i32* %6, align 4
  br label %95

29:                                               ; preds = %23
  %30 = load i64, i64* %10, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %53

32:                                               ; preds = %29
  %33 = load i64, i64* %10, align 8
  %34 = getelementptr inbounds [20 x i8], [20 x i8]* %13, i64 0, i64 0
  %35 = load i32, i32* @TRUE, align 4
  %36 = load i32, i32* @FALSE, align 4
  %37 = call i32 @print_vma(i64 %33, i8* %34, i32 %35, i32 %36)
  %38 = load %struct.pr_handle*, %struct.pr_handle** %12, align 8
  %39 = call i32 @append_type(%struct.pr_handle* %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %32
  %42 = load %struct.pr_handle*, %struct.pr_handle** %12, align 8
  %43 = getelementptr inbounds [20 x i8], [20 x i8]* %13, i64 0, i64 0
  %44 = call i32 @append_type(%struct.pr_handle* %42, i8* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load %struct.pr_handle*, %struct.pr_handle** %12, align 8
  %48 = call i32 @append_type(%struct.pr_handle* %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %46, %41, %32
  %51 = load i32, i32* @FALSE, align 4
  store i32 %51, i32* %6, align 4
  br label %95

52:                                               ; preds = %46
  br label %53

53:                                               ; preds = %52, %29
  %54 = load i64, i64* %9, align 8
  %55 = getelementptr inbounds [20 x i8], [20 x i8]* %13, i64 0, i64 0
  %56 = load i32, i32* @TRUE, align 4
  %57 = load i32, i32* @FALSE, align 4
  %58 = call i32 @print_vma(i64 %54, i8* %55, i32 %56, i32 %57)
  %59 = load %struct.pr_handle*, %struct.pr_handle** %12, align 8
  %60 = call i32 @append_type(%struct.pr_handle* %59, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %53
  %63 = load %struct.pr_handle*, %struct.pr_handle** %12, align 8
  %64 = getelementptr inbounds [20 x i8], [20 x i8]* %13, i64 0, i64 0
  %65 = call i32 @append_type(%struct.pr_handle* %63, i8* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %62
  %68 = load %struct.pr_handle*, %struct.pr_handle** %12, align 8
  %69 = call i32 @append_type(%struct.pr_handle* %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load %struct.pr_handle*, %struct.pr_handle** %12, align 8
  %73 = call i32 @indent_type(%struct.pr_handle* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %71, %67, %62, %53
  %76 = load i32, i32* @FALSE, align 4
  store i32 %76, i32* %6, align 4
  br label %95

77:                                               ; preds = %71
  %78 = load %struct.pr_handle*, %struct.pr_handle** %12, align 8
  %79 = call i8* @pop_type(%struct.pr_handle* %78)
  store i8* %79, i8** %14, align 8
  %80 = load i8*, i8** %14, align 8
  %81 = icmp eq i8* %80, null
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = load i32, i32* @FALSE, align 4
  store i32 %83, i32* %6, align 4
  br label %95

84:                                               ; preds = %77
  %85 = load %struct.pr_handle*, %struct.pr_handle** %12, align 8
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @pr_fix_visibility(%struct.pr_handle* %85, i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %84
  %90 = load i32, i32* @FALSE, align 4
  store i32 %90, i32* %6, align 4
  br label %95

91:                                               ; preds = %84
  %92 = load %struct.pr_handle*, %struct.pr_handle** %12, align 8
  %93 = load i8*, i8** %14, align 8
  %94 = call i32 @append_type(%struct.pr_handle* %92, i8* %93)
  store i32 %94, i32* %6, align 4
  br label %95

95:                                               ; preds = %91, %89, %82, %75, %50, %27, %21
  %96 = load i32, i32* %6, align 4
  ret i32 %96
}

declare dso_local i32 @substitute_type(%struct.pr_handle*, i8*) #1

declare dso_local i32 @append_type(%struct.pr_handle*, i8*) #1

declare dso_local i32 @print_vma(i64, i8*, i32, i32) #1

declare dso_local i32 @indent_type(%struct.pr_handle*) #1

declare dso_local i8* @pop_type(%struct.pr_handle*) #1

declare dso_local i32 @pr_fix_visibility(%struct.pr_handle*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
