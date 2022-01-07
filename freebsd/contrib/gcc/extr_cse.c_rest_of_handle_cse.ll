; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cse.c_rest_of_handle_cse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cse.c_rest_of_handle_cse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dump_file = common dso_local global i64 0, align 8
@dump_flags = common dso_local global i32 0, align 4
@flag_rerun_cse_after_loop = common dso_local global i32 0, align 4
@flag_gcse = common dso_local global i32 0, align 4
@cse_not_expected = common dso_local global i32 0, align 4
@optimize = common dso_local global i32 0, align 4
@CLEANUP_EXPENSIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @rest_of_handle_cse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rest_of_handle_cse() #0 {
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
  %11 = call i32 @reg_scan(i32 %9, i32 %10)
  %12 = call i32 (...) @get_insns()
  %13 = call i32 (...) @max_reg_num()
  %14 = call i32 @cse_main(i32 %12, i32 %13)
  store i32 %14, i32* %1, align 4
  %15 = load i32, i32* %1, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %8
  %18 = call i32 (...) @get_insns()
  %19 = call i32 @rebuild_jump_labels(i32 %18)
  br label %20

20:                                               ; preds = %17, %8
  %21 = call i64 (...) @purge_all_dead_edges()
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = call i32 (...) @delete_unreachable_blocks()
  br label %25

25:                                               ; preds = %23, %20
  %26 = call i32 (...) @get_insns()
  %27 = call i32 (...) @max_reg_num()
  %28 = call i32 @delete_trivially_dead_insns(i32 %26, i32 %27)
  %29 = load i32, i32* @flag_rerun_cse_after_loop, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* @flag_gcse, align 4
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  br label %35

35:                                               ; preds = %31, %25
  %36 = phi i1 [ false, %25 ], [ %34, %31 ]
  %37 = zext i1 %36 to i32
  store i32 %37, i32* @cse_not_expected, align 4
  %38 = load i32, i32* %1, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = call i32 (...) @delete_dead_jumptables()
  br label %42

42:                                               ; preds = %40, %35
  %43 = load i32, i32* %1, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* @optimize, align 4
  %47 = icmp sgt i32 %46, 1
  br i1 %47, label %48, label %51

48:                                               ; preds = %45, %42
  %49 = load i32, i32* @CLEANUP_EXPENSIVE, align 4
  %50 = call i32 @cleanup_cfg(i32 %49)
  br label %51

51:                                               ; preds = %48, %45
  ret i32 0
}

declare dso_local i32 @dump_flow_info(i64, i32) #1

declare dso_local i32 @reg_scan(i32, i32) #1

declare dso_local i32 @get_insns(...) #1

declare dso_local i32 @max_reg_num(...) #1

declare dso_local i32 @cse_main(i32, i32) #1

declare dso_local i32 @rebuild_jump_labels(i32) #1

declare dso_local i64 @purge_all_dead_edges(...) #1

declare dso_local i32 @delete_unreachable_blocks(...) #1

declare dso_local i32 @delete_trivially_dead_insns(i32, i32) #1

declare dso_local i32 @delete_dead_jumptables(...) #1

declare dso_local i32 @cleanup_cfg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
