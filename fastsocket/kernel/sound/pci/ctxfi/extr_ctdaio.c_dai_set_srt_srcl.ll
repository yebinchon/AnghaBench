; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctdaio.c_dai_set_srt_srcl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctdaio.c_dai_set_srt_srcl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dai = type { i32, i64 }
%struct.rsc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.rsc*)*, i32 (%struct.rsc*)* }
%struct.hw = type { i32 (i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dai*, %struct.rsc*)* @dai_set_srt_srcl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dai_set_srt_srcl(%struct.dai* %0, %struct.rsc* %1) #0 {
  %3 = alloca %struct.dai*, align 8
  %4 = alloca %struct.rsc*, align 8
  store %struct.dai* %0, %struct.dai** %3, align 8
  store %struct.rsc* %1, %struct.rsc** %4, align 8
  %5 = load %struct.rsc*, %struct.rsc** %4, align 8
  %6 = getelementptr inbounds %struct.rsc, %struct.rsc* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load i32 (%struct.rsc*)*, i32 (%struct.rsc*)** %8, align 8
  %10 = load %struct.rsc*, %struct.rsc** %4, align 8
  %11 = call i32 %9(%struct.rsc* %10)
  %12 = load %struct.dai*, %struct.dai** %3, align 8
  %13 = getelementptr inbounds %struct.dai, %struct.dai* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.hw*
  %16 = getelementptr inbounds %struct.hw, %struct.hw* %15, i32 0, i32 0
  %17 = load i32 (i32, i32)*, i32 (i32, i32)** %16, align 8
  %18 = load %struct.dai*, %struct.dai** %3, align 8
  %19 = getelementptr inbounds %struct.dai, %struct.dai* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.rsc*, %struct.rsc** %4, align 8
  %22 = getelementptr inbounds %struct.rsc, %struct.rsc* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (%struct.rsc*)*, i32 (%struct.rsc*)** %24, align 8
  %26 = load %struct.rsc*, %struct.rsc** %4, align 8
  %27 = call i32 %25(%struct.rsc* %26)
  %28 = call i32 %17(i32 %20, i32 %27)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
