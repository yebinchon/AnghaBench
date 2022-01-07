; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_backing-dev.c_bdi_arm_supers_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_backing-dev.c_bdi_arm_supers_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dirty_writeback_interval = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@sync_supers_timer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bdi_arm_supers_timer() #0 {
  %1 = alloca i64, align 8
  %2 = load i32, i32* @dirty_writeback_interval, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  br label %14

5:                                                ; preds = %0
  %6 = load i32, i32* @dirty_writeback_interval, align 4
  %7 = mul nsw i32 %6, 10
  %8 = call i64 @msecs_to_jiffies(i32 %7)
  %9 = load i64, i64* @jiffies, align 8
  %10 = add i64 %8, %9
  store i64 %10, i64* %1, align 8
  %11 = load i64, i64* %1, align 8
  %12 = call i32 @round_jiffies_up(i64 %11)
  %13 = call i32 @mod_timer(i32* @sync_supers_timer, i32 %12)
  br label %14

14:                                               ; preds = %5, %4
  ret void
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

declare dso_local i32 @round_jiffies_up(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
