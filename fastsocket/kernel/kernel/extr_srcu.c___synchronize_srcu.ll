; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_srcu.c___synchronize_srcu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_srcu.c___synchronize_srcu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srcu_struct = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__synchronize_srcu(%struct.srcu_struct* %0, void ()* %1) #0 {
  %3 = alloca %struct.srcu_struct*, align 8
  %4 = alloca void ()*, align 8
  %5 = alloca i32, align 4
  store %struct.srcu_struct* %0, %struct.srcu_struct** %3, align 8
  store void ()* %1, void ()** %4, align 8
  %6 = load %struct.srcu_struct*, %struct.srcu_struct** %3, align 8
  %7 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.srcu_struct*, %struct.srcu_struct** %3, align 8
  %10 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %9, i32 0, i32 1
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.srcu_struct*, %struct.srcu_struct** %3, align 8
  %13 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %5, align 4
  %16 = sub nsw i32 %14, %15
  %17 = icmp sge i32 %16, 2
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.srcu_struct*, %struct.srcu_struct** %3, align 8
  %20 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %19, i32 0, i32 1
  %21 = call i32 @mutex_unlock(i32* %20)
  br label %45

22:                                               ; preds = %2
  %23 = load void ()*, void ()** %4, align 8
  call void %23()
  %24 = load %struct.srcu_struct*, %struct.srcu_struct** %3, align 8
  %25 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, 1
  store i32 %27, i32* %5, align 4
  %28 = load %struct.srcu_struct*, %struct.srcu_struct** %3, align 8
  %29 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  %32 = load void ()*, void ()** %4, align 8
  call void %32()
  br label %33

33:                                               ; preds = %38, %22
  %34 = load %struct.srcu_struct*, %struct.srcu_struct** %3, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i64 @srcu_readers_active_idx(%struct.srcu_struct* %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = call i32 @schedule_timeout_interruptible(i32 1)
  br label %33

40:                                               ; preds = %33
  %41 = load void ()*, void ()** %4, align 8
  call void %41()
  %42 = load %struct.srcu_struct*, %struct.srcu_struct** %3, align 8
  %43 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %42, i32 0, i32 1
  %44 = call i32 @mutex_unlock(i32* %43)
  br label %45

45:                                               ; preds = %40, %18
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @srcu_readers_active_idx(%struct.srcu_struct*, i32) #1

declare dso_local i32 @schedule_timeout_interruptible(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
