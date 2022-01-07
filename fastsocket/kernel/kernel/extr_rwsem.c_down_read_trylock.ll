; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_rwsem.c_down_read_trylock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_rwsem.c_down_read_trylock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rw_semaphore = type { i32 }

@_RET_IP_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @down_read_trylock(%struct.rw_semaphore* %0) #0 {
  %2 = alloca %struct.rw_semaphore*, align 8
  %3 = alloca i32, align 4
  store %struct.rw_semaphore* %0, %struct.rw_semaphore** %2, align 8
  %4 = load %struct.rw_semaphore*, %struct.rw_semaphore** %2, align 8
  %5 = call i32 @__down_read_trylock(%struct.rw_semaphore* %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.rw_semaphore*, %struct.rw_semaphore** %2, align 8
  %10 = getelementptr inbounds %struct.rw_semaphore, %struct.rw_semaphore* %9, i32 0, i32 0
  %11 = load i32, i32* @_RET_IP_, align 4
  %12 = call i32 @rwsem_acquire_read(i32* %10, i32 0, i32 1, i32 %11)
  br label %13

13:                                               ; preds = %8, %1
  %14 = load i32, i32* %3, align 4
  ret i32 %14
}

declare dso_local i32 @__down_read_trylock(%struct.rw_semaphore*) #1

declare dso_local i32 @rwsem_acquire_read(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
