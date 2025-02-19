; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_irq_work.c_irq_work_sync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_irq_work.c_irq_work_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_work = type { i32 }

@IRQ_WORK_BUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @irq_work_sync(%struct.irq_work* %0) #0 {
  %2 = alloca %struct.irq_work*, align 8
  store %struct.irq_work* %0, %struct.irq_work** %2, align 8
  %3 = call i32 (...) @irqs_disabled()
  %4 = call i32 @WARN_ON_ONCE(i32 %3)
  br label %5

5:                                                ; preds = %10, %1
  %6 = load %struct.irq_work*, %struct.irq_work** %2, align 8
  %7 = load i32, i32* @IRQ_WORK_BUSY, align 4
  %8 = call i64 @irq_work_is_set(%struct.irq_work* %6, i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = call i32 (...) @cpu_relax()
  br label %5

12:                                               ; preds = %5
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @irqs_disabled(...) #1

declare dso_local i64 @irq_work_is_set(%struct.irq_work*, i32) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
