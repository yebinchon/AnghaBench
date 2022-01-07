; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_async.c_async_unregister_domain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_async.c_async_unregister_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.async_domain = type { i64, i32, i32 }

@async_register_mutex = common dso_local global i32 0, align 4
@async_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @async_unregister_domain(%struct.async_domain* %0) #0 {
  %2 = alloca %struct.async_domain*, align 8
  store %struct.async_domain* %0, %struct.async_domain** %2, align 8
  %3 = call i32 @mutex_lock(i32* @async_register_mutex)
  %4 = call i32 @spin_lock_irq(i32* @async_lock)
  %5 = load %struct.async_domain*, %struct.async_domain** %2, align 8
  %6 = getelementptr inbounds %struct.async_domain, %struct.async_domain* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %1
  %10 = load %struct.async_domain*, %struct.async_domain** %2, align 8
  %11 = getelementptr inbounds %struct.async_domain, %struct.async_domain* %10, i32 0, i32 2
  %12 = call i32 @list_empty(i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = load %struct.async_domain*, %struct.async_domain** %2, align 8
  %16 = getelementptr inbounds %struct.async_domain, %struct.async_domain* %15, i32 0, i32 1
  %17 = call i32 @list_empty(i32* %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  br label %20

20:                                               ; preds = %14, %9, %1
  %21 = phi i1 [ true, %9 ], [ true, %1 ], [ %19, %14 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @WARN_ON(i32 %22)
  %24 = load %struct.async_domain*, %struct.async_domain** %2, align 8
  %25 = getelementptr inbounds %struct.async_domain, %struct.async_domain* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  %26 = call i32 @spin_unlock_irq(i32* @async_lock)
  %27 = call i32 @mutex_unlock(i32* @async_register_mutex)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
