; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/irq/extr_chip.c_handle_simple_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/irq/extr_chip.c_handle_simple_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32, i32, %struct.irqaction* }
%struct.irqaction = type { i32 }

@IRQ_INPROGRESS = common dso_local global i32 0, align 4
@IRQ_REPLAY = common dso_local global i32 0, align 4
@IRQ_WAITING = common dso_local global i32 0, align 4
@IRQ_DISABLED = common dso_local global i32 0, align 4
@noirqdebug = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @handle_simple_irq(i32 %0, %struct.irq_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_desc*, align 8
  %5 = alloca %struct.irqaction*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.irq_desc* %1, %struct.irq_desc** %4, align 8
  %7 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %8 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %7, i32 0, i32 1
  %9 = call i32 @spin_lock(i32* %8)
  %10 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %11 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @IRQ_INPROGRESS, align 4
  %14 = and i32 %12, %13
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %77

18:                                               ; preds = %2
  %19 = load i32, i32* @IRQ_REPLAY, align 4
  %20 = load i32, i32* @IRQ_WAITING, align 4
  %21 = or i32 %19, %20
  %22 = xor i32 %21, -1
  %23 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %24 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 8
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %29 = call i32 @kstat_incr_irqs_this_cpu(i32 %27, %struct.irq_desc* %28)
  %30 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %31 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %30, i32 0, i32 2
  %32 = load %struct.irqaction*, %struct.irqaction** %31, align 8
  store %struct.irqaction* %32, %struct.irqaction** %5, align 8
  %33 = load %struct.irqaction*, %struct.irqaction** %5, align 8
  %34 = icmp ne %struct.irqaction* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %18
  %36 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %37 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @IRQ_DISABLED, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br label %42

42:                                               ; preds = %35, %18
  %43 = phi i1 [ true, %18 ], [ %41, %35 ]
  %44 = zext i1 %43 to i32
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %77

48:                                               ; preds = %42
  %49 = load i32, i32* @IRQ_INPROGRESS, align 4
  %50 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %51 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  %54 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %55 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %54, i32 0, i32 1
  %56 = call i32 @spin_unlock(i32* %55)
  %57 = load i32, i32* %3, align 4
  %58 = load %struct.irqaction*, %struct.irqaction** %5, align 8
  %59 = call i32 @handle_IRQ_event(i32 %57, %struct.irqaction* %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* @noirqdebug, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %48
  %63 = load i32, i32* %3, align 4
  %64 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @note_interrupt(i32 %63, %struct.irq_desc* %64, i32 %65)
  br label %67

67:                                               ; preds = %62, %48
  %68 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %69 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %68, i32 0, i32 1
  %70 = call i32 @spin_lock(i32* %69)
  %71 = load i32, i32* @IRQ_INPROGRESS, align 4
  %72 = xor i32 %71, -1
  %73 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %74 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = and i32 %75, %72
  store i32 %76, i32* %74, align 8
  br label %77

77:                                               ; preds = %67, %47, %17
  %78 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %79 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %78, i32 0, i32 1
  %80 = call i32 @spin_unlock(i32* %79)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @kstat_incr_irqs_this_cpu(i32, %struct.irq_desc*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @handle_IRQ_event(i32, %struct.irqaction*) #1

declare dso_local i32 @note_interrupt(i32, %struct.irq_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
