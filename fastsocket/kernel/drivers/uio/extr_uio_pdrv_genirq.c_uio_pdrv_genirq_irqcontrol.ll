; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uio/extr_uio_pdrv_genirq.c_uio_pdrv_genirq_irqcontrol.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uio/extr_uio_pdrv_genirq.c_uio_pdrv_genirq_irqcontrol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uio_info = type { i32, %struct.uio_pdrv_genirq_platdata* }
%struct.uio_pdrv_genirq_platdata = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uio_info*, i64)* @uio_pdrv_genirq_irqcontrol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uio_pdrv_genirq_irqcontrol(%struct.uio_info* %0, i64 %1) #0 {
  %3 = alloca %struct.uio_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.uio_pdrv_genirq_platdata*, align 8
  %6 = alloca i64, align 8
  store %struct.uio_info* %0, %struct.uio_info** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.uio_info*, %struct.uio_info** %3, align 8
  %8 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %7, i32 0, i32 1
  %9 = load %struct.uio_pdrv_genirq_platdata*, %struct.uio_pdrv_genirq_platdata** %8, align 8
  store %struct.uio_pdrv_genirq_platdata* %9, %struct.uio_pdrv_genirq_platdata** %5, align 8
  %10 = load %struct.uio_pdrv_genirq_platdata*, %struct.uio_pdrv_genirq_platdata** %5, align 8
  %11 = getelementptr inbounds %struct.uio_pdrv_genirq_platdata, %struct.uio_pdrv_genirq_platdata* %10, i32 0, i32 0
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load i64, i64* %4, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %2
  %17 = load %struct.uio_pdrv_genirq_platdata*, %struct.uio_pdrv_genirq_platdata** %5, align 8
  %18 = getelementptr inbounds %struct.uio_pdrv_genirq_platdata, %struct.uio_pdrv_genirq_platdata* %17, i32 0, i32 1
  %19 = call i64 @test_and_clear_bit(i32 0, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.uio_info*, %struct.uio_info** %3, align 8
  %23 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @enable_irq(i32 %24)
  br label %26

26:                                               ; preds = %21, %16
  br label %38

27:                                               ; preds = %2
  %28 = load %struct.uio_pdrv_genirq_platdata*, %struct.uio_pdrv_genirq_platdata** %5, align 8
  %29 = getelementptr inbounds %struct.uio_pdrv_genirq_platdata, %struct.uio_pdrv_genirq_platdata* %28, i32 0, i32 1
  %30 = call i32 @test_and_set_bit(i32 0, i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load %struct.uio_info*, %struct.uio_info** %3, align 8
  %34 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @disable_irq(i32 %35)
  br label %37

37:                                               ; preds = %32, %27
  br label %38

38:                                               ; preds = %37, %26
  %39 = load %struct.uio_pdrv_genirq_platdata*, %struct.uio_pdrv_genirq_platdata** %5, align 8
  %40 = getelementptr inbounds %struct.uio_pdrv_genirq_platdata, %struct.uio_pdrv_genirq_platdata* %39, i32 0, i32 0
  %41 = load i64, i64* %6, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %40, i64 %41)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
