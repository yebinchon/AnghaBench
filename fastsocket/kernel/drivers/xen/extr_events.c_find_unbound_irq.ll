; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/extr_events.c_find_unbound_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/extr_events.c_find_unbound_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.irq_desc = type { i32* }

@nr_irqs = common dso_local global i32 0, align 4
@no_irq_chip = common dso_local global i32 0, align 4
@xen_dynamic_chip = common dso_local global i32 0, align 4
@irq_info = common dso_local global %struct.TYPE_2__* null, align 8
@IRQT_UNBOUND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"No available IRQ to bind to: increase nr_irqs!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @find_unbound_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_unbound_irq() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.irq_desc*, align 8
  %4 = alloca i32, align 4
  %5 = call i32 (...) @get_nr_hw_irqs()
  store i32 %5, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @nr_irqs, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  br label %67

10:                                               ; preds = %0
  %11 = load i32, i32* @nr_irqs, align 4
  %12 = sub nsw i32 %11, 1
  store i32 %12, i32* %2, align 4
  br label %13

13:                                               ; preds = %46, %10
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp sgt i32 %14, %15
  br i1 %16, label %17, label %49

17:                                               ; preds = %13
  %18 = load i32, i32* %2, align 4
  %19 = call %struct.irq_desc* @irq_to_desc(i32 %18)
  store %struct.irq_desc* %19, %struct.irq_desc** %3, align 8
  %20 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %21 = icmp eq %struct.irq_desc* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %49

23:                                               ; preds = %17
  %24 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %25 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, @no_irq_chip
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %49

29:                                               ; preds = %23
  %30 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %31 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, @xen_dynamic_chip
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %46

35:                                               ; preds = %29
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @irq_info, align 8
  %37 = load i32, i32* %2, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @IRQT_UNBOUND, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  br label %49

45:                                               ; preds = %35
  br label %46

46:                                               ; preds = %45, %34
  %47 = load i32, i32* %2, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %2, align 4
  br label %13

49:                                               ; preds = %44, %28, %22, %13
  %50 = load i32, i32* %2, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  br label %67

54:                                               ; preds = %49
  %55 = load i32, i32* %2, align 4
  %56 = call %struct.irq_desc* @irq_to_desc_alloc_node(i32 %55, i32 0)
  store %struct.irq_desc* %56, %struct.irq_desc** %3, align 8
  %57 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %58 = icmp eq %struct.irq_desc* %57, null
  %59 = zext i1 %58 to i32
  %60 = call i64 @WARN_ON(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  store i32 -1, i32* %1, align 4
  br label %69

63:                                               ; preds = %54
  %64 = load i32, i32* %2, align 4
  %65 = call i32 @dynamic_irq_init_keep_chip_data(i32 %64)
  %66 = load i32, i32* %2, align 4
  store i32 %66, i32* %1, align 4
  br label %69

67:                                               ; preds = %53, %9
  %68 = call i32 @panic(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %69

69:                                               ; preds = %67, %63, %62
  %70 = load i32, i32* %1, align 4
  ret i32 %70
}

declare dso_local i32 @get_nr_hw_irqs(...) #1

declare dso_local %struct.irq_desc* @irq_to_desc(i32) #1

declare dso_local %struct.irq_desc* @irq_to_desc_alloc_node(i32, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @dynamic_irq_init_keep_chip_data(i32) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
