; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/byacc/extr_main.c_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/byacc/extr_main.c_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@input_file = common dso_local global i32 0, align 4
@output_file = common dso_local global i32 0, align 4
@iflag = common dso_local global i64 0, align 8
@externs_file = common dso_local global i32 0, align 4
@rflag = common dso_local global i64 0, align 8
@code_file = common dso_local global i32 0, align 4
@action_file = common dso_local global i32 0, align 4
@defines_file = common dso_local global i32 0, align 4
@graph_file = common dso_local global i32 0, align 4
@text_file = common dso_local global i32 0, align 4
@union_file = common dso_local global i32 0, align 4
@verbose_file = common dso_local global i32 0, align 4
@got_intr = common dso_local global i64 0, align 8
@EXIT_FAILURE = common dso_local global i32 0, align 4
@code_file_name = common dso_local global i32 0, align 4
@defines_file_name = common dso_local global i32 0, align 4
@dflag = common dso_local global i64 0, align 8
@externs_file_name = common dso_local global i32 0, align 4
@gflag = common dso_local global i64 0, align 8
@graph_file_name = common dso_local global i32 0, align 4
@oflag = common dso_local global i64 0, align 8
@output_file_name = common dso_local global i32 0, align 4
@verbose_file_name = common dso_local global i32 0, align 4
@vflag = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @done(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @input_file, align 4
  %4 = call i32 @DO_CLOSE(i32 %3)
  %5 = load i32, i32* @output_file, align 4
  %6 = call i32 @DO_CLOSE(i32 %5)
  %7 = load i64, i64* @iflag, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @externs_file, align 4
  %11 = call i32 @DO_CLOSE(i32 %10)
  br label %12

12:                                               ; preds = %9, %1
  %13 = load i64, i64* @rflag, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32, i32* @code_file, align 4
  %17 = call i32 @DO_CLOSE(i32 %16)
  br label %18

18:                                               ; preds = %15, %12
  %19 = load i32, i32* @action_file, align 4
  %20 = call i32 @DO_CLOSE(i32 %19)
  %21 = load i32, i32* @defines_file, align 4
  %22 = call i32 @DO_CLOSE(i32 %21)
  %23 = load i32, i32* @graph_file, align 4
  %24 = call i32 @DO_CLOSE(i32 %23)
  %25 = load i32, i32* @text_file, align 4
  %26 = call i32 @DO_CLOSE(i32 %25)
  %27 = load i32, i32* @union_file, align 4
  %28 = call i32 @DO_CLOSE(i32 %27)
  %29 = load i32, i32* @verbose_file, align 4
  %30 = call i32 @DO_CLOSE(i32 %29)
  %31 = load i64, i64* @got_intr, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %18
  %34 = load i32, i32* @EXIT_FAILURE, align 4
  %35 = call i32 @_exit(i32 %34) #3
  unreachable

36:                                               ; preds = %18
  %37 = load i32, i32* %2, align 4
  %38 = call i32 @exit(i32 %37) #3
  unreachable
}

declare dso_local i32 @DO_CLOSE(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
