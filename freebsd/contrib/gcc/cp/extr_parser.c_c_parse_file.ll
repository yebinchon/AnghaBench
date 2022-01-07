; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_c_parse_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_c_parse_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@c_parse_file.already_called = internal global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"inter-module optimizations not implemented for C++\00", align 1
@the_parser = common dso_local global i32* null, align 8
@flag_access_control = common dso_local global i64 0, align 8
@dk_no_deferred = common dso_local global i32 0, align 4
@dk_no_check = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @c_parse_file() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @c_parse_file.already_called, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = call i32 @sorry(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %19

6:                                                ; preds = %0
  store i32 1, i32* @c_parse_file.already_called, align 4
  %7 = call i32* (...) @cp_parser_new()
  store i32* %7, i32** @the_parser, align 8
  %8 = load i64, i64* @flag_access_control, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = load i32, i32* @dk_no_deferred, align 4
  br label %14

12:                                               ; preds = %6
  %13 = load i32, i32* @dk_no_check, align 4
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i32 [ %11, %10 ], [ %13, %12 ]
  %16 = call i32 @push_deferring_access_checks(i32 %15)
  %17 = load i32*, i32** @the_parser, align 8
  %18 = call i32 @cp_parser_translation_unit(i32* %17)
  store i32 %18, i32* %1, align 4
  store i32* null, i32** @the_parser, align 8
  br label %19

19:                                               ; preds = %14, %4
  ret void
}

declare dso_local i32 @sorry(i8*) #1

declare dso_local i32* @cp_parser_new(...) #1

declare dso_local i32 @push_deferring_access_checks(i32) #1

declare dso_local i32 @cp_parser_translation_unit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
