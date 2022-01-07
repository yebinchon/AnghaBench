; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/irq/extr_resend.c_check_irq_resend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/irq/extr_resend.c_check_irq_resend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32)*, i32 (i32)* }

@IRQ_LEVEL = common dso_local global i32 0, align 4
@IRQ_PENDING = common dso_local global i32 0, align 4
@IRQ_REPLAY = common dso_local global i32 0, align 4
@irqs_resend = common dso_local global i32 0, align 4
@resend_tasklet = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @check_irq_resend(%struct.irq_desc* %0, i32 %1) #0 {
  %3 = alloca %struct.irq_desc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.irq_desc* %0, %struct.irq_desc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %7 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %5, align 4
  %9 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %10 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32 (i32)*, i32 (i32)** %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 %13(i32 %14)
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @IRQ_LEVEL, align 4
  %18 = load i32, i32* @IRQ_PENDING, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @IRQ_REPLAY, align 4
  %21 = or i32 %19, %20
  %22 = and i32 %16, %21
  %23 = load i32, i32* @IRQ_PENDING, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %51

25:                                               ; preds = %2
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @IRQ_PENDING, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %26, %28
  %30 = load i32, i32* @IRQ_REPLAY, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %33 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %35 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32 (i32)*, i32 (i32)** %37, align 8
  %39 = icmp ne i32 (i32)* %38, null
  br i1 %39, label %40, label %49

40:                                               ; preds = %25
  %41 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %42 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32 (i32)*, i32 (i32)** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = call i32 %45(i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %40, %25
  br label %50

50:                                               ; preds = %49, %40
  br label %51

51:                                               ; preds = %50, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
