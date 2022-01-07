; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_dojump.c_clear_pending_stack_adjust.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_dojump.c_clear_pending_stack_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@optimize = common dso_local global i64 0, align 8
@flag_omit_frame_pointer = common dso_local global i32 0, align 4
@current_function_calls_alloca = common dso_local global i64 0, align 8
@EXIT_IGNORE_STACK = common dso_local global i64 0, align 8
@current_function_decl = common dso_local global i32 0, align 4
@flag_no_inline = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clear_pending_stack_adjust() #0 {
  %1 = load i64, i64* @optimize, align 8
  %2 = icmp sgt i64 %1, 0
  br i1 %2, label %3, label %21

3:                                                ; preds = %0
  %4 = load i32, i32* @flag_omit_frame_pointer, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = load i64, i64* @current_function_calls_alloca, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %6, %3
  %10 = load i64, i64* @EXIT_IGNORE_STACK, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %9
  %13 = load i32, i32* @current_function_decl, align 4
  %14 = call i64 @DECL_INLINE(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i32, i32* @flag_no_inline, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16, %12
  %20 = call i32 (...) @discard_pending_stack_adjust()
  br label %21

21:                                               ; preds = %19, %16, %9, %6, %0
  ret void
}

declare dso_local i64 @DECL_INLINE(i32) #1

declare dso_local i32 @discard_pending_stack_adjust(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
