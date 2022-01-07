; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_prdbg.c_pr_class_static_member.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_prdbg.c_pr_class_static_member.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pr_handle = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"static \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"; /* \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c" */\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i32)* @pr_class_static_member to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pr_class_static_member(i8* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pr_handle*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.pr_handle*
  store %struct.pr_handle* %13, %struct.pr_handle** %10, align 8
  %14 = load %struct.pr_handle*, %struct.pr_handle** %10, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 @substitute_type(%struct.pr_handle* %14, i8* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @FALSE, align 4
  store i32 %19, i32* %5, align 4
  br label %61

20:                                               ; preds = %4
  %21 = load %struct.pr_handle*, %struct.pr_handle** %10, align 8
  %22 = call i32 @prepend_type(%struct.pr_handle* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %20
  %25 = load %struct.pr_handle*, %struct.pr_handle** %10, align 8
  %26 = call i32 @append_type(%struct.pr_handle* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %24
  %29 = load %struct.pr_handle*, %struct.pr_handle** %10, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 @append_type(%struct.pr_handle* %29, i8* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = load %struct.pr_handle*, %struct.pr_handle** %10, align 8
  %35 = call i32 @append_type(%struct.pr_handle* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load %struct.pr_handle*, %struct.pr_handle** %10, align 8
  %39 = call i32 @indent_type(%struct.pr_handle* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %37, %33, %28, %24, %20
  %42 = load i32, i32* @FALSE, align 4
  store i32 %42, i32* %5, align 4
  br label %61

43:                                               ; preds = %37
  %44 = load %struct.pr_handle*, %struct.pr_handle** %10, align 8
  %45 = call i8* @pop_type(%struct.pr_handle* %44)
  store i8* %45, i8** %11, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* @FALSE, align 4
  store i32 %49, i32* %5, align 4
  br label %61

50:                                               ; preds = %43
  %51 = load %struct.pr_handle*, %struct.pr_handle** %10, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @pr_fix_visibility(%struct.pr_handle* %51, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* @FALSE, align 4
  store i32 %56, i32* %5, align 4
  br label %61

57:                                               ; preds = %50
  %58 = load %struct.pr_handle*, %struct.pr_handle** %10, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = call i32 @append_type(%struct.pr_handle* %58, i8* %59)
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %57, %55, %48, %41, %18
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32 @substitute_type(%struct.pr_handle*, i8*) #1

declare dso_local i32 @prepend_type(%struct.pr_handle*, i8*) #1

declare dso_local i32 @append_type(%struct.pr_handle*, i8*) #1

declare dso_local i32 @indent_type(%struct.pr_handle*) #1

declare dso_local i8* @pop_type(%struct.pr_handle*) #1

declare dso_local i32 @pr_fix_visibility(%struct.pr_handle*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
