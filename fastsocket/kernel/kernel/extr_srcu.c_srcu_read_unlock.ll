; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_srcu.c_srcu_read_unlock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_srcu.c_srcu_read_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srcu_struct = type { i32 }
%struct.TYPE_2__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @srcu_read_unlock(%struct.srcu_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.srcu_struct*, align 8
  %4 = alloca i32, align 4
  store %struct.srcu_struct* %0, %struct.srcu_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = call i32 (...) @preempt_disable()
  %6 = call i32 (...) @srcu_barrier()
  %7 = load %struct.srcu_struct*, %struct.srcu_struct** %3, align 8
  %8 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 (...) @smp_processor_id()
  %11 = call %struct.TYPE_2__* @per_cpu_ptr(i32 %9, i32 %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %16, align 4
  %19 = call i32 (...) @preempt_enable()
  ret void
}

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @srcu_barrier(...) #1

declare dso_local %struct.TYPE_2__* @per_cpu_ptr(i32, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @preempt_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
