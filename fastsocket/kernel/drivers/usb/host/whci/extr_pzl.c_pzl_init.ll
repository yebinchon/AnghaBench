; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/whci/extr_pzl.c_pzl_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/whci/extr_pzl.c_pzl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.whc = type { i64, i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@QH_LINK_T = common dso_local global i32 0, align 4
@WUSBPERIODICLISTBASE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pzl_init(%struct.whc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.whc*, align 8
  %4 = alloca i32, align 4
  store %struct.whc* %0, %struct.whc** %3, align 8
  %5 = load %struct.whc*, %struct.whc** %3, align 8
  %6 = getelementptr inbounds %struct.whc, %struct.whc* %5, i32 0, i32 3
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.whc*, %struct.whc** %3, align 8
  %10 = getelementptr inbounds %struct.whc, %struct.whc* %9, i32 0, i32 1
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i32* @dma_alloc_coherent(i32* %8, i32 64, i32* %10, i32 %11)
  %13 = load %struct.whc*, %struct.whc** %3, align 8
  %14 = getelementptr inbounds %struct.whc, %struct.whc* %13, i32 0, i32 2
  store i32* %12, i32** %14, align 8
  %15 = load %struct.whc*, %struct.whc** %3, align 8
  %16 = getelementptr inbounds %struct.whc, %struct.whc* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %50

22:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %37, %22
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %24, 16
  br i1 %25, label %26, label %40

26:                                               ; preds = %23
  %27 = call i32 @QH_LINK_NTDS(i32 8)
  %28 = load i32, i32* @QH_LINK_T, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @cpu_to_le64(i32 %29)
  %31 = load %struct.whc*, %struct.whc** %3, align 8
  %32 = getelementptr inbounds %struct.whc, %struct.whc* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  store i32 %30, i32* %36, align 4
  br label %37

37:                                               ; preds = %26
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %23

40:                                               ; preds = %23
  %41 = load %struct.whc*, %struct.whc** %3, align 8
  %42 = getelementptr inbounds %struct.whc, %struct.whc* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.whc*, %struct.whc** %3, align 8
  %45 = getelementptr inbounds %struct.whc, %struct.whc* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @WUSBPERIODICLISTBASE, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @le_writeq(i32 %43, i64 %48)
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %40, %19
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @QH_LINK_NTDS(i32) #1

declare dso_local i32 @le_writeq(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
