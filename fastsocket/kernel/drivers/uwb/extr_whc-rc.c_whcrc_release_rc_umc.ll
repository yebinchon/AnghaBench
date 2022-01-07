; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_whc-rc.c_whcrc_release_rc_umc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_whc-rc.c_whcrc_release_rc_umc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.whcrc = type { i32, i32, i32, i32, i32, i32, i32, %struct.umc_dev* }
%struct.umc_dev = type { i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.whcrc*)* @whcrc_release_rc_umc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @whcrc_release_rc_umc(%struct.whcrc* %0) #0 {
  %2 = alloca %struct.whcrc*, align 8
  %3 = alloca %struct.umc_dev*, align 8
  store %struct.whcrc* %0, %struct.whcrc** %2, align 8
  %4 = load %struct.whcrc*, %struct.whcrc** %2, align 8
  %5 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %4, i32 0, i32 7
  %6 = load %struct.umc_dev*, %struct.umc_dev** %5, align 8
  store %struct.umc_dev* %6, %struct.umc_dev** %3, align 8
  %7 = load %struct.umc_dev*, %struct.umc_dev** %3, align 8
  %8 = getelementptr inbounds %struct.umc_dev, %struct.umc_dev* %7, i32 0, i32 1
  %9 = load i32, i32* @PAGE_SIZE, align 4
  %10 = load %struct.whcrc*, %struct.whcrc** %2, align 8
  %11 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.whcrc*, %struct.whcrc** %2, align 8
  %14 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @dma_free_coherent(i32* %8, i32 %9, i32 %12, i32 %15)
  %17 = load %struct.umc_dev*, %struct.umc_dev** %3, align 8
  %18 = getelementptr inbounds %struct.umc_dev, %struct.umc_dev* %17, i32 0, i32 1
  %19 = load i32, i32* @PAGE_SIZE, align 4
  %20 = load %struct.whcrc*, %struct.whcrc** %2, align 8
  %21 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.whcrc*, %struct.whcrc** %2, align 8
  %24 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dma_free_coherent(i32* %18, i32 %19, i32 %22, i32 %25)
  %27 = load %struct.umc_dev*, %struct.umc_dev** %3, align 8
  %28 = getelementptr inbounds %struct.umc_dev, %struct.umc_dev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.whcrc*, %struct.whcrc** %2, align 8
  %31 = call i32 @free_irq(i32 %29, %struct.whcrc* %30)
  %32 = load %struct.whcrc*, %struct.whcrc** %2, align 8
  %33 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @iounmap(i32 %34)
  %36 = load %struct.whcrc*, %struct.whcrc** %2, align 8
  %37 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.whcrc*, %struct.whcrc** %2, align 8
  %40 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @release_mem_region(i32 %38, i32 %41)
  ret void
}

declare dso_local i32 @dma_free_coherent(i32*, i32, i32, i32) #1

declare dso_local i32 @free_irq(i32, %struct.whcrc*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
