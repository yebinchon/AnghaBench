; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_regmove.c_rest_of_handle_stack_adjustments.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_regmove.c_rest_of_handle_stack_adjustments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PROP_POSTRELOAD = common dso_local global i32 0, align 4
@CLEANUP_EXPENSIVE = common dso_local global i32 0, align 4
@CLEANUP_UPDATE_LIFE = common dso_local global i32 0, align 4
@flag_crossjumping = common dso_local global i64 0, align 8
@CLEANUP_CROSSJUMP = common dso_local global i32 0, align 4
@ACCUMULATE_OUTGOING_ARGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @rest_of_handle_stack_adjustments to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rest_of_handle_stack_adjustments() #0 {
  %1 = load i32, i32* @PROP_POSTRELOAD, align 4
  %2 = call i32 @life_analysis(i32 %1)
  %3 = load i32, i32* @CLEANUP_EXPENSIVE, align 4
  %4 = load i32, i32* @CLEANUP_UPDATE_LIFE, align 4
  %5 = or i32 %3, %4
  %6 = load i64, i64* @flag_crossjumping, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = load i32, i32* @CLEANUP_CROSSJUMP, align 4
  br label %11

10:                                               ; preds = %0
  br label %11

11:                                               ; preds = %10, %8
  %12 = phi i32 [ %9, %8 ], [ 0, %10 ]
  %13 = or i32 %5, %12
  %14 = call i32 @cleanup_cfg(i32 %13)
  %15 = load i32, i32* @ACCUMULATE_OUTGOING_ARGS, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %11
  %18 = call i32 (...) @combine_stack_adjustments()
  br label %19

19:                                               ; preds = %17, %11
  ret i32 0
}

declare dso_local i32 @life_analysis(i32) #1

declare dso_local i32 @cleanup_cfg(i32) #1

declare dso_local i32 @combine_stack_adjustments(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
