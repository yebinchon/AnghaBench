; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_bust_spinlocks.c_bust_spinlocks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_bust_spinlocks.c_bust_spinlocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@oops_in_progress = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define weak dso_local void @bust_spinlocks(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load i64, i64* @oops_in_progress, align 8
  %7 = add nsw i64 %6, 1
  store i64 %7, i64* @oops_in_progress, align 8
  br label %16

8:                                                ; preds = %1
  %9 = call i32 (...) @console_unblank()
  %10 = load i64, i64* @oops_in_progress, align 8
  %11 = add nsw i64 %10, -1
  store i64 %11, i64* @oops_in_progress, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = call i32 (...) @wake_up_klogd()
  br label %15

15:                                               ; preds = %13, %8
  br label %16

16:                                               ; preds = %15, %5
  ret void
}

declare dso_local i32 @console_unblank(...) #1

declare dso_local i32 @wake_up_klogd(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
