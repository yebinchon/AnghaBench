; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_prdbg.c_pr_range_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_prdbg.c_pr_range_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pr_handle = type { i32* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"range (\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"):\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c":\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @pr_range_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pr_range_type(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pr_handle*, align 8
  %9 = alloca [20 x i8], align 16
  %10 = alloca [20 x i8], align 16
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.pr_handle*
  store %struct.pr_handle* %12, %struct.pr_handle** %8, align 8
  %13 = load %struct.pr_handle*, %struct.pr_handle** %8, align 8
  %14 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.pr_handle*, %struct.pr_handle** %8, align 8
  %20 = call i32 @substitute_type(%struct.pr_handle* %19, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @FALSE, align 4
  store i32 %23, i32* %4, align 4
  br label %59

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %27 = load i32, i32* @FALSE, align 4
  %28 = load i32, i32* @FALSE, align 4
  %29 = call i32 @print_vma(i32 %25, i8* %26, i32 %27, i32 %28)
  %30 = load i32, i32* %7, align 4
  %31 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 0
  %32 = load i32, i32* @FALSE, align 4
  %33 = load i32, i32* @FALSE, align 4
  %34 = call i32 @print_vma(i32 %30, i8* %31, i32 %32, i32 %33)
  %35 = load %struct.pr_handle*, %struct.pr_handle** %8, align 8
  %36 = call i64 @prepend_type(%struct.pr_handle* %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %56

38:                                               ; preds = %24
  %39 = load %struct.pr_handle*, %struct.pr_handle** %8, align 8
  %40 = call i64 @append_type(%struct.pr_handle* %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %38
  %43 = load %struct.pr_handle*, %struct.pr_handle** %8, align 8
  %44 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %45 = call i64 @append_type(%struct.pr_handle* %43, i8* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %42
  %48 = load %struct.pr_handle*, %struct.pr_handle** %8, align 8
  %49 = call i64 @append_type(%struct.pr_handle* %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load %struct.pr_handle*, %struct.pr_handle** %8, align 8
  %53 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 0
  %54 = call i64 @append_type(%struct.pr_handle* %52, i8* %53)
  %55 = icmp ne i64 %54, 0
  br label %56

56:                                               ; preds = %51, %47, %42, %38, %24
  %57 = phi i1 [ false, %47 ], [ false, %42 ], [ false, %38 ], [ false, %24 ], [ %55, %51 ]
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %56, %22
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @substitute_type(%struct.pr_handle*, i8*) #1

declare dso_local i32 @print_vma(i32, i8*, i32, i32) #1

declare dso_local i64 @prepend_type(%struct.pr_handle*, i8*) #1

declare dso_local i64 @append_type(%struct.pr_handle*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
