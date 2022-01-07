; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_language.c_set_case_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_language.c_set_case_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@case_sensitive = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"on\00", align 1
@case_sensitive_on = common dso_local global i32 0, align 4
@case_sensitivity = common dso_local global i32 0, align 4
@case_mode_manual = common dso_local global i32 0, align 4
@case_mode = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@case_sensitive_off = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@case_mode_auto = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"Unrecognized case-sensitive setting: \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @set_case_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_case_command(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @case_sensitive, align 4
  %6 = call i64 @DEPRECATED_STREQ(i32 %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i32, i32* @case_sensitive_on, align 4
  store i32 %9, i32* @case_sensitivity, align 4
  %10 = load i32, i32* @case_mode_manual, align 4
  store i32 %10, i32* @case_mode, align 4
  br label %30

11:                                               ; preds = %2
  %12 = load i32, i32* @case_sensitive, align 4
  %13 = call i64 @DEPRECATED_STREQ(i32 %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load i32, i32* @case_sensitive_off, align 4
  store i32 %16, i32* @case_sensitivity, align 4
  %17 = load i32, i32* @case_mode_manual, align 4
  store i32 %17, i32* @case_mode, align 4
  br label %29

18:                                               ; preds = %11
  %19 = load i32, i32* @case_sensitive, align 4
  %20 = call i64 @DEPRECATED_STREQ(i32 %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* @case_mode_auto, align 4
  store i32 %23, i32* @case_mode, align 4
  %24 = call i32 (...) @set_type_range_case()
  br label %34

25:                                               ; preds = %18
  %26 = load i32, i32* @case_sensitive, align 4
  %27 = call i32 @warning(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %25
  br label %29

29:                                               ; preds = %28, %15
  br label %30

30:                                               ; preds = %29, %8
  %31 = call i32 (...) @set_case_str()
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @show_case_command(i8* null, i32 %32)
  br label %34

34:                                               ; preds = %30, %22
  ret void
}

declare dso_local i64 @DEPRECATED_STREQ(i32, i8*) #1

declare dso_local i32 @set_type_range_case(...) #1

declare dso_local i32 @warning(i8*, i32) #1

declare dso_local i32 @set_case_str(...) #1

declare dso_local i32 @show_case_command(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
