; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_prdbg.c_pr_set_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_prdbg.c_pr_set_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pr_handle = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@FALSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"set { \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c" }\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"/* bitstring */\00", align 1
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64)* @pr_set_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pr_set_type(i8* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.pr_handle*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.pr_handle*
  store %struct.pr_handle* %8, %struct.pr_handle** %6, align 8
  %9 = load %struct.pr_handle*, %struct.pr_handle** %6, align 8
  %10 = call i32 @substitute_type(%struct.pr_handle* %9, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = load i64, i64* @FALSE, align 8
  store i64 %13, i64* %3, align 8
  br label %36

14:                                               ; preds = %2
  %15 = load %struct.pr_handle*, %struct.pr_handle** %6, align 8
  %16 = call i32 @prepend_type(%struct.pr_handle* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load %struct.pr_handle*, %struct.pr_handle** %6, align 8
  %20 = call i32 @append_type(%struct.pr_handle* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %18, %14
  %23 = load i64, i64* @FALSE, align 8
  store i64 %23, i64* %3, align 8
  br label %36

24:                                               ; preds = %18
  %25 = load i64, i64* %5, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load %struct.pr_handle*, %struct.pr_handle** %6, align 8
  %29 = call i32 @append_type(%struct.pr_handle* %28, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = load i64, i64* @FALSE, align 8
  store i64 %32, i64* %3, align 8
  br label %36

33:                                               ; preds = %27
  br label %34

34:                                               ; preds = %33, %24
  %35 = load i64, i64* @TRUE, align 8
  store i64 %35, i64* %3, align 8
  br label %36

36:                                               ; preds = %34, %31, %22, %12
  %37 = load i64, i64* %3, align 8
  ret i64 %37
}

declare dso_local i32 @substitute_type(%struct.pr_handle*, i8*) #1

declare dso_local i32 @prepend_type(%struct.pr_handle*, i8*) #1

declare dso_local i32 @append_type(%struct.pr_handle*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
