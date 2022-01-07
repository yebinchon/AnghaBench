; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/irq/extr_chip.c_handle_nested_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/irq/extr_chip.c_handle_nested_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32, i32, %struct.irqaction* }
%struct.irqaction = type { i32, i32, i32 (i32, i32)* }

@IRQ_DISABLED = common dso_local global i32 0, align 4
@IRQ_INPROGRESS = common dso_local global i32 0, align 4
@noirqdebug = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @handle_nested_irq(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.irq_desc*, align 8
  %4 = alloca %struct.irqaction*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.irq_desc* @irq_to_desc(i32 %6)
  store %struct.irq_desc* %7, %struct.irq_desc** %3, align 8
  %8 = call i32 (...) @might_sleep()
  %9 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %10 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %9, i32 0, i32 1
  %11 = call i32 @spin_lock_irq(i32* %10)
  %12 = load i32, i32* %2, align 4
  %13 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %14 = call i32 @kstat_incr_irqs_this_cpu(i32 %12, %struct.irq_desc* %13)
  %15 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %16 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %15, i32 0, i32 2
  %17 = load %struct.irqaction*, %struct.irqaction** %16, align 8
  store %struct.irqaction* %17, %struct.irqaction** %4, align 8
  %18 = load %struct.irqaction*, %struct.irqaction** %4, align 8
  %19 = icmp ne %struct.irqaction* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %22 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @IRQ_DISABLED, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br label %27

27:                                               ; preds = %20, %1
  %28 = phi i1 [ true, %1 ], [ %26, %20 ]
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %69

33:                                               ; preds = %27
  %34 = load i32, i32* @IRQ_INPROGRESS, align 4
  %35 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %36 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 8
  %39 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %40 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %39, i32 0, i32 1
  %41 = call i32 @spin_unlock_irq(i32* %40)
  %42 = load %struct.irqaction*, %struct.irqaction** %4, align 8
  %43 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %42, i32 0, i32 2
  %44 = load i32 (i32, i32)*, i32 (i32, i32)** %43, align 8
  %45 = load %struct.irqaction*, %struct.irqaction** %4, align 8
  %46 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.irqaction*, %struct.irqaction** %4, align 8
  %49 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 %44(i32 %47, i32 %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* @noirqdebug, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %33
  %55 = load i32, i32* %2, align 4
  %56 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @note_interrupt(i32 %55, %struct.irq_desc* %56, i32 %57)
  br label %59

59:                                               ; preds = %54, %33
  %60 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %61 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %60, i32 0, i32 1
  %62 = call i32 @spin_lock_irq(i32* %61)
  %63 = load i32, i32* @IRQ_INPROGRESS, align 4
  %64 = xor i32 %63, -1
  %65 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %66 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = and i32 %67, %64
  store i32 %68, i32* %66, align 8
  br label %69

69:                                               ; preds = %59, %32
  %70 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %71 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %70, i32 0, i32 1
  %72 = call i32 @spin_unlock_irq(i32* %71)
  ret void
}

declare dso_local %struct.irq_desc* @irq_to_desc(i32) #1

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @kstat_incr_irqs_this_cpu(i32, %struct.irq_desc*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @note_interrupt(i32, %struct.irq_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
