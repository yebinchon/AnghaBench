; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/irq/extr_manage.c_synchronize_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/irq/extr_manage.c_synchronize_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32, i32, i32, i32 }

@IRQ_INPROGRESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @synchronize_irq(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.irq_desc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.irq_desc* @irq_to_desc(i32 %6)
  store %struct.irq_desc* %7, %struct.irq_desc** %3, align 8
  %8 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %9 = icmp ne %struct.irq_desc* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %50

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %34, %11
  br label %13

13:                                               ; preds = %20, %12
  %14 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %15 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @IRQ_INPROGRESS, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = call i32 (...) @cpu_relax()
  br label %13

22:                                               ; preds = %13
  %23 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %24 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %23, i32 0, i32 3
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %28 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %4, align 4
  %30 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %31 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %30, i32 0, i32 3
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  br label %34

34:                                               ; preds = %22
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @IRQ_INPROGRESS, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %12, label %39

39:                                               ; preds = %34
  %40 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %41 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %44 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %43, i32 0, i32 1
  %45 = call i32 @atomic_read(i32* %44)
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i32 @wait_event(i32 %42, i32 %48)
  br label %50

50:                                               ; preds = %39, %10
  ret void
}

declare dso_local %struct.irq_desc* @irq_to_desc(i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
