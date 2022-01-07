; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_bb-reorder.c_fix_edges_for_rarely_executed_code.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_bb-reorder.c_fix_edges_for_rarely_executed_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HAS_LONG_COND_BRANCH = common dso_local global i32 0, align 4
@HAS_LONG_UNCOND_BRANCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @fix_edges_for_rarely_executed_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fix_edges_for_rarely_executed_code(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32*, i32** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @add_labels_and_missing_jumps(i32* %5, i32 %6)
  %8 = call i32 (...) @fix_up_fall_thru_edges()
  %9 = load i32, i32* @HAS_LONG_COND_BRANCH, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = call i32 (...) @fix_crossing_conditional_branches()
  br label %13

13:                                               ; preds = %11, %2
  %14 = load i32, i32* @HAS_LONG_UNCOND_BRANCH, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %13
  %17 = call i32 (...) @fix_crossing_unconditional_branches()
  %18 = call i32 (...) @get_insns()
  %19 = call i32 (...) @max_reg_num()
  %20 = call i32 @reg_scan(i32 %18, i32 %19)
  br label %21

21:                                               ; preds = %16, %13
  %22 = call i32 (...) @add_reg_crossing_jump_notes()
  ret void
}

declare dso_local i32 @add_labels_and_missing_jumps(i32*, i32) #1

declare dso_local i32 @fix_up_fall_thru_edges(...) #1

declare dso_local i32 @fix_crossing_conditional_branches(...) #1

declare dso_local i32 @fix_crossing_unconditional_branches(...) #1

declare dso_local i32 @reg_scan(i32, i32) #1

declare dso_local i32 @get_insns(...) #1

declare dso_local i32 @max_reg_num(...) #1

declare dso_local i32 @add_reg_crossing_jump_notes(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
