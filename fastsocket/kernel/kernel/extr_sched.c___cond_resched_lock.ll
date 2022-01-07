; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched.c___cond_resched_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched.c___cond_resched_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__cond_resched_lock(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = call i32 (...) @should_resched()
  store i32 %5, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %6 = load i32*, i32** %2, align 8
  %7 = call i32 @lockdep_assert_held(i32* %6)
  %8 = load i32*, i32** %2, align 8
  %9 = call i64 @spin_needbreak(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %11, %1
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @spin_unlock(i32* %15)
  %17 = load i32, i32* %3, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = call i32 (...) @__cond_resched()
  br label %23

21:                                               ; preds = %14
  %22 = call i32 (...) @cpu_relax()
  br label %23

23:                                               ; preds = %21, %19
  store i32 1, i32* %4, align 4
  %24 = load i32*, i32** %2, align 8
  %25 = call i32 @spin_lock(i32* %24)
  br label %26

26:                                               ; preds = %23, %11
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local i32 @should_resched(...) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @spin_needbreak(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @__cond_resched(...) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
