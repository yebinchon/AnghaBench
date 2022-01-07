; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-pko.h_cvmx_pko_get_base_queue_per_core.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-pko.h_cvmx_pko_get_base_queue_per_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CVMX_PKO_MAX_PORTS_INTERFACE0 = common dso_local global i32 0, align 4
@CVMX_PKO_QUEUES_PER_PORT_INTERFACE0 = common dso_local global i32 0, align 4
@CVMX_PKO_MAX_PORTS_INTERFACE1 = common dso_local global i32 0, align 4
@CVMX_PKO_QUEUES_PER_PORT_INTERFACE1 = common dso_local global i32 0, align 4
@CVMX_PKO_QUEUES_PER_PORT_PCI = common dso_local global i32 0, align 4
@CVMX_PKO_QUEUES_PER_PORT_LOOP = common dso_local global i32 0, align 4
@CVMX_PKO_ILLEGAL_QUEUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @cvmx_pko_get_base_queue_per_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cvmx_pko_get_base_queue_per_core(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @CVMX_PKO_MAX_PORTS_INTERFACE0, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @CVMX_PKO_QUEUES_PER_PORT_INTERFACE0, align 4
  %12 = mul nsw i32 %10, %11
  %13 = load i32, i32* %5, align 4
  %14 = add nsw i32 %12, %13
  store i32 %14, i32* %3, align 4
  br label %77

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = icmp sge i32 %16, 16
  br i1 %17, label %18, label %34

18:                                               ; preds = %15
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @CVMX_PKO_MAX_PORTS_INTERFACE1, align 4
  %21 = add nsw i32 16, %20
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %18
  %24 = load i32, i32* @CVMX_PKO_MAX_PORTS_INTERFACE0, align 4
  %25 = load i32, i32* @CVMX_PKO_QUEUES_PER_PORT_INTERFACE0, align 4
  %26 = mul nsw i32 %24, %25
  %27 = load i32, i32* %4, align 4
  %28 = sub nsw i32 %27, 16
  %29 = load i32, i32* @CVMX_PKO_QUEUES_PER_PORT_INTERFACE1, align 4
  %30 = mul nsw i32 %28, %29
  %31 = add nsw i32 %26, %30
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %31, %32
  store i32 %33, i32* %3, align 4
  br label %77

34:                                               ; preds = %18, %15
  %35 = load i32, i32* %4, align 4
  %36 = icmp sge i32 %35, 32
  br i1 %36, label %37, label %53

37:                                               ; preds = %34
  %38 = load i32, i32* %4, align 4
  %39 = icmp slt i32 %38, 36
  br i1 %39, label %40, label %53

40:                                               ; preds = %37
  %41 = load i32, i32* @CVMX_PKO_MAX_PORTS_INTERFACE0, align 4
  %42 = load i32, i32* @CVMX_PKO_QUEUES_PER_PORT_INTERFACE0, align 4
  %43 = mul nsw i32 %41, %42
  %44 = load i32, i32* @CVMX_PKO_MAX_PORTS_INTERFACE1, align 4
  %45 = load i32, i32* @CVMX_PKO_QUEUES_PER_PORT_INTERFACE1, align 4
  %46 = mul nsw i32 %44, %45
  %47 = add nsw i32 %43, %46
  %48 = load i32, i32* %4, align 4
  %49 = sub nsw i32 %48, 32
  %50 = load i32, i32* @CVMX_PKO_QUEUES_PER_PORT_PCI, align 4
  %51 = mul nsw i32 %49, %50
  %52 = add nsw i32 %47, %51
  store i32 %52, i32* %3, align 4
  br label %77

53:                                               ; preds = %37, %34
  %54 = load i32, i32* %4, align 4
  %55 = icmp sge i32 %54, 36
  br i1 %55, label %56, label %75

56:                                               ; preds = %53
  %57 = load i32, i32* %4, align 4
  %58 = icmp slt i32 %57, 40
  br i1 %58, label %59, label %75

59:                                               ; preds = %56
  %60 = load i32, i32* @CVMX_PKO_MAX_PORTS_INTERFACE0, align 4
  %61 = load i32, i32* @CVMX_PKO_QUEUES_PER_PORT_INTERFACE0, align 4
  %62 = mul nsw i32 %60, %61
  %63 = load i32, i32* @CVMX_PKO_MAX_PORTS_INTERFACE1, align 4
  %64 = load i32, i32* @CVMX_PKO_QUEUES_PER_PORT_INTERFACE1, align 4
  %65 = mul nsw i32 %63, %64
  %66 = add nsw i32 %62, %65
  %67 = load i32, i32* @CVMX_PKO_QUEUES_PER_PORT_PCI, align 4
  %68 = mul nsw i32 4, %67
  %69 = add nsw i32 %66, %68
  %70 = load i32, i32* %4, align 4
  %71 = sub nsw i32 %70, 36
  %72 = load i32, i32* @CVMX_PKO_QUEUES_PER_PORT_LOOP, align 4
  %73 = mul nsw i32 %71, %72
  %74 = add nsw i32 %69, %73
  store i32 %74, i32* %3, align 4
  br label %77

75:                                               ; preds = %56, %53
  %76 = load i32, i32* @CVMX_PKO_ILLEGAL_QUEUE, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %75, %59, %40, %23, %9
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
