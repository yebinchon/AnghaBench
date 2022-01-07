; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/et131x/extr_et131x_isr.c_et131x_enable_interrupts.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/et131x/extr_et131x_isr.c_et131x_enable_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et131x_adapter = type { i64, %struct.TYPE_4__*, i32, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@TxOnly = common dso_local global i64 0, align 8
@Both = common dso_local global i64 0, align 8
@INT_MASK_ENABLE = common dso_local global i32 0, align 4
@INT_MASK_ENABLE_NO_FLOW = common dso_local global i32 0, align 4
@ET_INTR_PHY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @et131x_enable_interrupts(%struct.et131x_adapter* %0) #0 {
  %2 = alloca %struct.et131x_adapter*, align 8
  %3 = alloca i32, align 4
  store %struct.et131x_adapter* %0, %struct.et131x_adapter** %2, align 8
  %4 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @TxOnly, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @Both, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %9, %1
  %16 = load i32, i32* @INT_MASK_ENABLE, align 4
  store i32 %16, i32* %3, align 4
  br label %19

17:                                               ; preds = %9
  %18 = load i32, i32* @INT_MASK_ENABLE_NO_FLOW, align 4
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %21 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load i32, i32* @ET_INTR_PHY, align 4
  %26 = load i32, i32* %3, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %24, %19
  %29 = load i32, i32* %3, align 4
  %30 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %31 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* %3, align 4
  %33 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %34 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = call i32 @writel(i32 %32, i32* %37)
  ret void
}

declare dso_local i32 @writel(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
