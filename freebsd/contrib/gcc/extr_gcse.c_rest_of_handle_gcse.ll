; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_rest_of_handle_gcse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_rest_of_handle_gcse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@flag_cse_skip_blocks = common dso_local global i32 0, align 4
@flag_cse_follow_jumps = common dso_local global i32 0, align 4
@flag_expensive_optimizations = common dso_local global i64 0, align 8
@TV_CSE = common dso_local global i32 0, align 4
@flag_rerun_cse_after_loop = common dso_local global i32 0, align 4
@cse_not_expected = common dso_local global i32 0, align 4
@TV_JUMP = common dso_local global i32 0, align 4
@CLEANUP_EXPENSIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @rest_of_handle_gcse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rest_of_handle_gcse() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  %5 = call i32 (...) @get_insns()
  %6 = call i32 @gcse_main(i32 %5)
  store i32 %6, i32* %4, align 4
  %7 = call i32 (...) @get_insns()
  %8 = call i32 @rebuild_jump_labels(i32 %7)
  %9 = call i32 (...) @get_insns()
  %10 = call i32 (...) @max_reg_num()
  %11 = call i32 @delete_trivially_dead_insns(i32 %9, i32 %10)
  %12 = load i32, i32* @flag_cse_skip_blocks, align 4
  store i32 %12, i32* %1, align 4
  %13 = load i32, i32* @flag_cse_follow_jumps, align 4
  store i32 %13, i32* %2, align 4
  store i32 0, i32* @flag_cse_follow_jumps, align 4
  store i32 0, i32* @flag_cse_skip_blocks, align 4
  %14 = load i64, i64* @flag_expensive_optimizations, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %0
  %17 = load i32, i32* @TV_CSE, align 4
  %18 = call i32 @timevar_push(i32 %17)
  %19 = call i32 (...) @get_insns()
  %20 = call i32 (...) @max_reg_num()
  %21 = call i32 @reg_scan(i32 %19, i32 %20)
  %22 = call i32 (...) @get_insns()
  %23 = call i32 (...) @max_reg_num()
  %24 = call i32 @cse_main(i32 %22, i32 %23)
  store i32 %24, i32* %3, align 4
  %25 = call i32 (...) @purge_all_dead_edges()
  %26 = call i32 (...) @get_insns()
  %27 = call i32 (...) @max_reg_num()
  %28 = call i32 @delete_trivially_dead_insns(i32 %26, i32 %27)
  %29 = load i32, i32* @TV_CSE, align 4
  %30 = call i32 @timevar_pop(i32 %29)
  %31 = load i32, i32* @flag_rerun_cse_after_loop, align 4
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  store i32 %34, i32* @cse_not_expected, align 4
  br label %35

35:                                               ; preds = %16, %0
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %3, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %38, %35
  %42 = load i32, i32* @TV_JUMP, align 4
  %43 = call i32 @timevar_push(i32 %42)
  %44 = call i32 (...) @get_insns()
  %45 = call i32 @rebuild_jump_labels(i32 %44)
  %46 = call i32 (...) @delete_dead_jumptables()
  %47 = load i32, i32* @CLEANUP_EXPENSIVE, align 4
  %48 = call i32 @cleanup_cfg(i32 %47)
  %49 = load i32, i32* @TV_JUMP, align 4
  %50 = call i32 @timevar_pop(i32 %49)
  br label %51

51:                                               ; preds = %41, %38
  %52 = load i32, i32* %1, align 4
  store i32 %52, i32* @flag_cse_skip_blocks, align 4
  %53 = load i32, i32* %2, align 4
  store i32 %53, i32* @flag_cse_follow_jumps, align 4
  ret i32 0
}

declare dso_local i32 @gcse_main(i32) #1

declare dso_local i32 @get_insns(...) #1

declare dso_local i32 @rebuild_jump_labels(i32) #1

declare dso_local i32 @delete_trivially_dead_insns(i32, i32) #1

declare dso_local i32 @max_reg_num(...) #1

declare dso_local i32 @timevar_push(i32) #1

declare dso_local i32 @reg_scan(i32, i32) #1

declare dso_local i32 @cse_main(i32, i32) #1

declare dso_local i32 @purge_all_dead_edges(...) #1

declare dso_local i32 @timevar_pop(i32) #1

declare dso_local i32 @delete_dead_jumptables(...) #1

declare dso_local i32 @cleanup_cfg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
