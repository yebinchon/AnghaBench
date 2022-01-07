; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/irq/extr_manage.c___disable_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/irq/extr_manage.c___disable_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { %struct.TYPE_4__*, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (i32)* }
%struct.TYPE_3__ = type { i32 }

@IRQF_TIMER = common dso_local global i32 0, align 4
@IRQF_NO_SUSPEND = common dso_local global i32 0, align 4
@IRQ_SUSPENDED = common dso_local global i32 0, align 4
@IRQ_DISABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__disable_irq(%struct.irq_desc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.irq_desc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.irq_desc* %0, %struct.irq_desc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %32

9:                                                ; preds = %3
  %10 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %11 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %10, i32 0, i32 3
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = icmp ne %struct.TYPE_3__* %12, null
  br i1 %13, label %14, label %25

14:                                               ; preds = %9
  %15 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %16 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %15, i32 0, i32 3
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @IRQF_TIMER, align 4
  %21 = load i32, i32* @IRQF_NO_SUSPEND, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %19, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %14, %9
  br label %51

26:                                               ; preds = %14
  %27 = load i32, i32* @IRQ_SUSPENDED, align 4
  %28 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %29 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 8
  br label %32

32:                                               ; preds = %26, %3
  %33 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %34 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  %37 = icmp ne i32 %35, 0
  br i1 %37, label %51, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* @IRQ_DISABLED, align 4
  %40 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %41 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 8
  %44 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %45 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32 (i32)*, i32 (i32)** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 %48(i32 %49)
  br label %51

51:                                               ; preds = %25, %38, %32
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
