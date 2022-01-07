; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_language.c_language_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_language.c_language_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@expected_language = common dso_local global i64 0, align 8
@current_language = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"Current language:  %s\0A\00", align 1
@language = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Type checking:     %s\0A\00", align 1
@type = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Range checking:    %s\0A\00", align 1
@range = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Case sensitivity:  %s\0A\00", align 1
@case_sensitive = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @language_info(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = load i64, i64* @expected_language, align 8
  %7 = load i64, i64* @current_language, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  br label %27

10:                                               ; preds = %5, %1
  %11 = load i64, i64* @current_language, align 8
  store i64 %11, i64* @expected_language, align 8
  %12 = load i32, i32* @language, align 4
  %13 = call i32 @printf_unfiltered(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = call i32 @show_language_command(i8* null, i32 1)
  %15 = load i32, i32* %2, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %10
  %18 = load i32, i32* @type, align 4
  %19 = call i32 @printf_unfiltered(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = call i32 @show_type_command(i8* null, i32 1)
  %21 = load i32, i32* @range, align 4
  %22 = call i32 @printf_unfiltered(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %21)
  %23 = call i32 @show_range_command(i8* null, i32 1)
  %24 = load i32, i32* @case_sensitive, align 4
  %25 = call i32 @printf_unfiltered(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %24)
  %26 = call i32 @show_case_command(i8* null, i32 1)
  br label %27

27:                                               ; preds = %9, %17, %10
  ret void
}

declare dso_local i32 @printf_unfiltered(i8*, i32) #1

declare dso_local i32 @show_language_command(i8*, i32) #1

declare dso_local i32 @show_type_command(i8*, i32) #1

declare dso_local i32 @show_range_command(i8*, i32) #1

declare dso_local i32 @show_case_command(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
