; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cse.c_rest_of_handle_cse2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cse.c_rest_of_handle_cse2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dump_file = common dso_local global i64 0, align 8
@dump_flags = common dso_local global i32 0, align 4
@TV_JUMP = common dso_local global i32 0, align 4
@CLEANUP_EXPENSIVE = common dso_local global i32 0, align 4
@cse_not_expected = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @rest_of_handle_cse2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rest_of_handle_cse2() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @dump_file, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %0
  %5 = load i64, i64* @dump_file, align 8
  %6 = load i32, i32* @dump_flags, align 4
  %7 = call i32 @dump_flow_info(i64 %5, i32 %6)
  br label %8

8:                                                ; preds = %4, %0
  %9 = call i32 (...) @get_insns()
  %10 = call i32 (...) @max_reg_num()
  %11 = call i32 @cse_main(i32 %9, i32 %10)
  store i32 %11, i32* %1, align 4
  %12 = call i32 (...) @cse_condition_code_reg()
  %13 = call i32 (...) @purge_all_dead_edges()
  %14 = call i32 (...) @get_insns()
  %15 = call i32 (...) @max_reg_num()
  %16 = call i32 @delete_trivially_dead_insns(i32 %14, i32 %15)
  %17 = load i32, i32* %1, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %8
  %20 = load i32, i32* @TV_JUMP, align 4
  %21 = call i32 @timevar_push(i32 %20)
  %22 = call i32 (...) @get_insns()
  %23 = call i32 @rebuild_jump_labels(i32 %22)
  %24 = call i32 (...) @delete_dead_jumptables()
  %25 = load i32, i32* @CLEANUP_EXPENSIVE, align 4
  %26 = call i32 @cleanup_cfg(i32 %25)
  %27 = load i32, i32* @TV_JUMP, align 4
  %28 = call i32 @timevar_pop(i32 %27)
  br label %29

29:                                               ; preds = %19, %8
  %30 = call i32 (...) @get_insns()
  %31 = call i32 (...) @max_reg_num()
  %32 = call i32 @reg_scan(i32 %30, i32 %31)
  store i32 1, i32* @cse_not_expected, align 4
  ret i32 0
}

declare dso_local i32 @dump_flow_info(i64, i32) #1

declare dso_local i32 @cse_main(i32, i32) #1

declare dso_local i32 @get_insns(...) #1

declare dso_local i32 @max_reg_num(...) #1

declare dso_local i32 @cse_condition_code_reg(...) #1

declare dso_local i32 @purge_all_dead_edges(...) #1

declare dso_local i32 @delete_trivially_dead_insns(i32, i32) #1

declare dso_local i32 @timevar_push(i32) #1

declare dso_local i32 @rebuild_jump_labels(i32) #1

declare dso_local i32 @delete_dead_jumptables(...) #1

declare dso_local i32 @cleanup_cfg(i32) #1

declare dso_local i32 @timevar_pop(i32) #1

declare dso_local i32 @reg_scan(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
