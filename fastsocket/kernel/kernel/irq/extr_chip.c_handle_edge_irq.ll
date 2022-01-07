; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/irq/extr_chip.c_handle_edge_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/irq/extr_chip.c_handle_edge_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32, i32, %struct.TYPE_2__*, %struct.irqaction* }
%struct.TYPE_2__ = type { i32 (i32)*, i32 (i32)*, i32 (i32)* }
%struct.irqaction = type { i32 }

@IRQ_REPLAY = common dso_local global i32 0, align 4
@IRQ_WAITING = common dso_local global i32 0, align 4
@IRQ_INPROGRESS = common dso_local global i32 0, align 4
@IRQ_DISABLED = common dso_local global i32 0, align 4
@IRQ_PENDING = common dso_local global i32 0, align 4
@IRQ_MASKED = common dso_local global i32 0, align 4
@noirqdebug = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @handle_edge_irq(i32 %0, %struct.irq_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_desc*, align 8
  %5 = alloca %struct.irqaction*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.irq_desc* %1, %struct.irq_desc** %4, align 8
  %7 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %8 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %7, i32 0, i32 1
  %9 = call i32 @spin_lock(i32* %8)
  %10 = load i32, i32* @IRQ_REPLAY, align 4
  %11 = load i32, i32* @IRQ_WAITING, align 4
  %12 = or i32 %10, %11
  %13 = xor i32 %12, -1
  %14 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %15 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = and i32 %16, %13
  store i32 %17, i32* %15, align 8
  %18 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %19 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @IRQ_INPROGRESS, align 4
  %22 = load i32, i32* @IRQ_DISABLED, align 4
  %23 = or i32 %21, %22
  %24 = and i32 %20, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %2
  %27 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %28 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %27, i32 0, i32 3
  %29 = load %struct.irqaction*, %struct.irqaction** %28, align 8
  %30 = icmp ne %struct.irqaction* %29, null
  %31 = xor i1 %30, true
  br label %32

32:                                               ; preds = %26, %2
  %33 = phi i1 [ true, %2 ], [ %31, %26 ]
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %32
  %38 = load i32, i32* @IRQ_PENDING, align 4
  %39 = load i32, i32* @IRQ_MASKED, align 4
  %40 = or i32 %38, %39
  %41 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %42 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 8
  %45 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @mask_ack_irq(%struct.irq_desc* %45, i32 %46)
  br label %162

48:                                               ; preds = %32
  %49 = load i32, i32* %3, align 4
  %50 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %51 = call i32 @kstat_incr_irqs_this_cpu(i32 %49, %struct.irq_desc* %50)
  %52 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %53 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %52, i32 0, i32 2
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  %56 = load i32 (i32)*, i32 (i32)** %55, align 8
  %57 = icmp ne i32 (i32)* %56, null
  br i1 %57, label %58, label %66

58:                                               ; preds = %48
  %59 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %60 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %59, i32 0, i32 2
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  %63 = load i32 (i32)*, i32 (i32)** %62, align 8
  %64 = load i32, i32* %3, align 4
  %65 = call i32 %63(i32 %64)
  br label %66

66:                                               ; preds = %58, %48
  %67 = load i32, i32* @IRQ_INPROGRESS, align 4
  %68 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %69 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 8
  br label %72

72:                                               ; preds = %145, %66
  %73 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %74 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %73, i32 0, i32 3
  %75 = load %struct.irqaction*, %struct.irqaction** %74, align 8
  store %struct.irqaction* %75, %struct.irqaction** %5, align 8
  %76 = load %struct.irqaction*, %struct.irqaction** %5, align 8
  %77 = icmp ne %struct.irqaction* %76, null
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  %80 = call i64 @unlikely(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %72
  %83 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %84 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %83, i32 0, i32 2
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i32 (i32)*, i32 (i32)** %86, align 8
  %88 = load i32, i32* %3, align 4
  %89 = call i32 %87(i32 %88)
  br label %162

90:                                               ; preds = %72
  %91 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %92 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @IRQ_PENDING, align 4
  %95 = load i32, i32* @IRQ_MASKED, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @IRQ_DISABLED, align 4
  %98 = or i32 %96, %97
  %99 = and i32 %93, %98
  %100 = load i32, i32* @IRQ_PENDING, align 4
  %101 = load i32, i32* @IRQ_MASKED, align 4
  %102 = or i32 %100, %101
  %103 = icmp eq i32 %99, %102
  %104 = zext i1 %103 to i32
  %105 = call i64 @unlikely(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %121

107:                                              ; preds = %90
  %108 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %109 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %108, i32 0, i32 2
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i32 (i32)*, i32 (i32)** %111, align 8
  %113 = load i32, i32* %3, align 4
  %114 = call i32 %112(i32 %113)
  %115 = load i32, i32* @IRQ_MASKED, align 4
  %116 = xor i32 %115, -1
  %117 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %118 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = and i32 %119, %116
  store i32 %120, i32* %118, align 8
  br label %121

121:                                              ; preds = %107, %90
  %122 = load i32, i32* @IRQ_PENDING, align 4
  %123 = xor i32 %122, -1
  %124 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %125 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = and i32 %126, %123
  store i32 %127, i32* %125, align 8
  %128 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %129 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %128, i32 0, i32 1
  %130 = call i32 @spin_unlock(i32* %129)
  %131 = load i32, i32* %3, align 4
  %132 = load %struct.irqaction*, %struct.irqaction** %5, align 8
  %133 = call i32 @handle_IRQ_event(i32 %131, %struct.irqaction* %132)
  store i32 %133, i32* %6, align 4
  %134 = load i32, i32* @noirqdebug, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %141, label %136

136:                                              ; preds = %121
  %137 = load i32, i32* %3, align 4
  %138 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %139 = load i32, i32* %6, align 4
  %140 = call i32 @note_interrupt(i32 %137, %struct.irq_desc* %138, i32 %139)
  br label %141

141:                                              ; preds = %136, %121
  %142 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %143 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %142, i32 0, i32 1
  %144 = call i32 @spin_lock(i32* %143)
  br label %145

145:                                              ; preds = %141
  %146 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %147 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @IRQ_PENDING, align 4
  %150 = load i32, i32* @IRQ_DISABLED, align 4
  %151 = or i32 %149, %150
  %152 = and i32 %148, %151
  %153 = load i32, i32* @IRQ_PENDING, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %72, label %155

155:                                              ; preds = %145
  %156 = load i32, i32* @IRQ_INPROGRESS, align 4
  %157 = xor i32 %156, -1
  %158 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %159 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = and i32 %160, %157
  store i32 %161, i32* %159, align 8
  br label %162

162:                                              ; preds = %155, %82, %37
  %163 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %164 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %163, i32 0, i32 1
  %165 = call i32 @spin_unlock(i32* %164)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mask_ack_irq(%struct.irq_desc*, i32) #1

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
