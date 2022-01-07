; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-cfgcleanup.c_cleanup_tree_cfg_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-cfgcleanup.c_cleanup_tree_cfg_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@optimize = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @cleanup_tree_cfg_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cleanup_tree_cfg_1() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @cleanup_control_flow()
  store i32 %2, i32* %1, align 4
  %3 = call i32 (...) @delete_unreachable_blocks()
  %4 = load i32, i32* %1, align 4
  %5 = or i32 %4, %3
  store i32 %5, i32* %1, align 4
  %6 = load i64, i64* @optimize, align 8
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %0
  %9 = call i32 (...) @start_recording_case_labels()
  %10 = call i32 (...) @cleanup_forwarder_blocks()
  %11 = load i32, i32* %1, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %1, align 4
  %13 = call i32 (...) @end_recording_case_labels()
  br label %14

14:                                               ; preds = %8, %0
  %15 = call i32 (...) @merge_seq_blocks()
  %16 = load i32, i32* %1, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %1, align 4
  %18 = load i32, i32* %1, align 4
  ret i32 %18
}

declare dso_local i32 @cleanup_control_flow(...) #1

declare dso_local i32 @delete_unreachable_blocks(...) #1

declare dso_local i32 @start_recording_case_labels(...) #1

declare dso_local i32 @cleanup_forwarder_blocks(...) #1

declare dso_local i32 @end_recording_case_labels(...) #1

declare dso_local i32 @merge_seq_blocks(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
