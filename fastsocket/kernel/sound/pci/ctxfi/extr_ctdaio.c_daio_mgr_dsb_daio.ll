; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctdaio.c_daio_mgr_dsb_daio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctdaio.c_daio_mgr_dsb_daio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.daio_mgr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.hw* }
%struct.hw = type { i32 (i32, i32)*, i32 (i32, i32)* }
%struct.daio = type { i64 }

@DAIO_OUT_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.daio_mgr*, %struct.daio*)* @daio_mgr_dsb_daio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @daio_mgr_dsb_daio(%struct.daio_mgr* %0, %struct.daio* %1) #0 {
  %3 = alloca %struct.daio_mgr*, align 8
  %4 = alloca %struct.daio*, align 8
  %5 = alloca %struct.hw*, align 8
  store %struct.daio_mgr* %0, %struct.daio_mgr** %3, align 8
  store %struct.daio* %1, %struct.daio** %4, align 8
  %6 = load %struct.daio_mgr*, %struct.daio_mgr** %3, align 8
  %7 = getelementptr inbounds %struct.daio_mgr, %struct.daio_mgr* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load %struct.hw*, %struct.hw** %8, align 8
  store %struct.hw* %9, %struct.hw** %5, align 8
  %10 = load i64, i64* @DAIO_OUT_MAX, align 8
  %11 = load %struct.daio*, %struct.daio** %4, align 8
  %12 = getelementptr inbounds %struct.daio, %struct.daio* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sge i64 %10, %13
  br i1 %14, label %15, label %29

15:                                               ; preds = %2
  %16 = load %struct.hw*, %struct.hw** %5, align 8
  %17 = getelementptr inbounds %struct.hw, %struct.hw* %16, i32 0, i32 1
  %18 = load i32 (i32, i32)*, i32 (i32, i32)** %17, align 8
  %19 = load %struct.daio_mgr*, %struct.daio_mgr** %3, align 8
  %20 = getelementptr inbounds %struct.daio_mgr, %struct.daio_mgr* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.daio*, %struct.daio** %4, align 8
  %24 = getelementptr inbounds %struct.daio, %struct.daio* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.hw*, %struct.hw** %5, align 8
  %27 = call i32 @daio_device_index(i64 %25, %struct.hw* %26)
  %28 = call i32 %18(i32 %22, i32 %27)
  br label %43

29:                                               ; preds = %2
  %30 = load %struct.hw*, %struct.hw** %5, align 8
  %31 = getelementptr inbounds %struct.hw, %struct.hw* %30, i32 0, i32 0
  %32 = load i32 (i32, i32)*, i32 (i32, i32)** %31, align 8
  %33 = load %struct.daio_mgr*, %struct.daio_mgr** %3, align 8
  %34 = getelementptr inbounds %struct.daio_mgr, %struct.daio_mgr* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.daio*, %struct.daio** %4, align 8
  %38 = getelementptr inbounds %struct.daio, %struct.daio* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.hw*, %struct.hw** %5, align 8
  %41 = call i32 @daio_device_index(i64 %39, %struct.hw* %40)
  %42 = call i32 %32(i32 %36, i32 %41)
  br label %43

43:                                               ; preds = %29, %15
  ret i32 0
}

declare dso_local i32 @daio_device_index(i64, %struct.hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
