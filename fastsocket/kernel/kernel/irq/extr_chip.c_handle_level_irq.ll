; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/irq/extr_chip.c_handle_level_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/irq/extr_chip.c_handle_level_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32, i32, %struct.TYPE_2__*, %struct.irqaction* }
%struct.TYPE_2__ = type { i32 (i32)* }
%struct.irqaction = type { i32 }

@IRQ_INPROGRESS = common dso_local global i32 0, align 4
@IRQ_REPLAY = common dso_local global i32 0, align 4
@IRQ_WAITING = common dso_local global i32 0, align 4
@IRQ_DISABLED = common dso_local global i32 0, align 4
@noirqdebug = common dso_local global i32 0, align 4
@IRQ_ONESHOT = common dso_local global i32 0, align 4
@IRQ_MASKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @handle_level_irq(i32 %0, %struct.irq_desc* %1) #0 {
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
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @mask_ack_irq(%struct.irq_desc* %10, i32 %11)
  %13 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %14 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @IRQ_INPROGRESS, align 4
  %17 = and i32 %15, %16
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %117

21:                                               ; preds = %2
  %22 = load i32, i32* @IRQ_REPLAY, align 4
  %23 = load i32, i32* @IRQ_WAITING, align 4
  %24 = or i32 %22, %23
  %25 = xor i32 %24, -1
  %26 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %27 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %28, %25
  store i32 %29, i32* %27, align 8
  %30 = load i32, i32* %3, align 4
  %31 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %32 = call i32 @kstat_incr_irqs_this_cpu(i32 %30, %struct.irq_desc* %31)
  %33 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %34 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %33, i32 0, i32 3
  %35 = load %struct.irqaction*, %struct.irqaction** %34, align 8
  store %struct.irqaction* %35, %struct.irqaction** %5, align 8
  %36 = load %struct.irqaction*, %struct.irqaction** %5, align 8
  %37 = icmp ne %struct.irqaction* %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %21
  %39 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %40 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @IRQ_DISABLED, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br label %45

45:                                               ; preds = %38, %21
  %46 = phi i1 [ true, %21 ], [ %44, %38 ]
  %47 = zext i1 %46 to i32
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %117

51:                                               ; preds = %45
  %52 = load i32, i32* @IRQ_INPROGRESS, align 4
  %53 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %54 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 8
  %57 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %58 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %57, i32 0, i32 1
  %59 = call i32 @spin_unlock(i32* %58)
  %60 = load i32, i32* %3, align 4
  %61 = load %struct.irqaction*, %struct.irqaction** %5, align 8
  %62 = call i32 @handle_IRQ_event(i32 %60, %struct.irqaction* %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* @noirqdebug, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %51
  %66 = load i32, i32* %3, align 4
  %67 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @note_interrupt(i32 %66, %struct.irq_desc* %67, i32 %68)
  br label %70

70:                                               ; preds = %65, %51
  %71 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %72 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %71, i32 0, i32 1
  %73 = call i32 @spin_lock(i32* %72)
  %74 = load i32, i32* @IRQ_INPROGRESS, align 4
  %75 = xor i32 %74, -1
  %76 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %77 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = and i32 %78, %75
  store i32 %79, i32* %77, align 8
  %80 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %81 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @IRQ_ONESHOT, align 4
  %84 = and i32 %82, %83
  %85 = call i64 @unlikely(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %70
  %88 = load i32, i32* @IRQ_MASKED, align 4
  %89 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %90 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 8
  br label %116

93:                                               ; preds = %70
  %94 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %95 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @IRQ_DISABLED, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %115, label %100

100:                                              ; preds = %93
  %101 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %102 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %101, i32 0, i32 2
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32 (i32)*, i32 (i32)** %104, align 8
  %106 = icmp ne i32 (i32)* %105, null
  br i1 %106, label %107, label %115

107:                                              ; preds = %100
  %108 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %109 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %108, i32 0, i32 2
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i32 (i32)*, i32 (i32)** %111, align 8
  %113 = load i32, i32* %3, align 4
  %114 = call i32 %112(i32 %113)
  br label %115

115:                                              ; preds = %107, %100, %93
  br label %116

116:                                              ; preds = %115, %87
  br label %117

117:                                              ; preds = %116, %50, %20
  %118 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %119 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %118, i32 0, i32 1
  %120 = call i32 @spin_unlock(i32* %119)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @mask_ack_irq(%struct.irq_desc*, i32) #1

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
