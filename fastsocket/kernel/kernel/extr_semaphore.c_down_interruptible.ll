; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_semaphore.c_down_interruptible.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_semaphore.c_down_interruptible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.semaphore = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @down_interruptible(%struct.semaphore* %0) #0 {
  %2 = alloca %struct.semaphore*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.semaphore* %0, %struct.semaphore** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.semaphore*, %struct.semaphore** %2, align 8
  %6 = getelementptr inbounds %struct.semaphore, %struct.semaphore* %5, i32 0, i32 1
  %7 = load i64, i64* %3, align 8
  %8 = call i32 @spin_lock_irqsave(i32* %6, i64 %7)
  %9 = load %struct.semaphore*, %struct.semaphore** %2, align 8
  %10 = getelementptr inbounds %struct.semaphore, %struct.semaphore* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp sgt i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i64 @likely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.semaphore*, %struct.semaphore** %2, align 8
  %18 = getelementptr inbounds %struct.semaphore, %struct.semaphore* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %19, -1
  store i64 %20, i64* %18, align 8
  br label %24

21:                                               ; preds = %1
  %22 = load %struct.semaphore*, %struct.semaphore** %2, align 8
  %23 = call i32 @__down_interruptible(%struct.semaphore* %22)
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %21, %16
  %25 = load %struct.semaphore*, %struct.semaphore** %2, align 8
  %26 = getelementptr inbounds %struct.semaphore, %struct.semaphore* %25, i32 0, i32 1
  %27 = load i64, i64* %3, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* %26, i64 %27)
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @__down_interruptible(%struct.semaphore*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
