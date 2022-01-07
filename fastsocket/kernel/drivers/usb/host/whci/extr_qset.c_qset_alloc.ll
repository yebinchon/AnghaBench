; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/whci/extr_qset.c_qset_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/whci/extr_qset.c_qset_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.whc_qset = type { i32, i32, %struct.whc*, i32 }
%struct.whc = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.whc_qset* @qset_alloc(%struct.whc* %0, i32 %1) #0 {
  %3 = alloca %struct.whc_qset*, align 8
  %4 = alloca %struct.whc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.whc_qset*, align 8
  %7 = alloca i32, align 4
  store %struct.whc* %0, %struct.whc** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.whc*, %struct.whc** %4, align 8
  %9 = getelementptr inbounds %struct.whc, %struct.whc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.whc_qset* @dma_pool_alloc(i32 %10, i32 %11, i32* %7)
  store %struct.whc_qset* %12, %struct.whc_qset** %6, align 8
  %13 = load %struct.whc_qset*, %struct.whc_qset** %6, align 8
  %14 = icmp eq %struct.whc_qset* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store %struct.whc_qset* null, %struct.whc_qset** %3, align 8
  br label %32

16:                                               ; preds = %2
  %17 = load %struct.whc_qset*, %struct.whc_qset** %6, align 8
  %18 = call i32 @memset(%struct.whc_qset* %17, i32 0, i32 24)
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.whc_qset*, %struct.whc_qset** %6, align 8
  %21 = getelementptr inbounds %struct.whc_qset, %struct.whc_qset* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 8
  %22 = load %struct.whc*, %struct.whc** %4, align 8
  %23 = load %struct.whc_qset*, %struct.whc_qset** %6, align 8
  %24 = getelementptr inbounds %struct.whc_qset, %struct.whc_qset* %23, i32 0, i32 2
  store %struct.whc* %22, %struct.whc** %24, align 8
  %25 = load %struct.whc_qset*, %struct.whc_qset** %6, align 8
  %26 = getelementptr inbounds %struct.whc_qset, %struct.whc_qset* %25, i32 0, i32 1
  %27 = call i32 @INIT_LIST_HEAD(i32* %26)
  %28 = load %struct.whc_qset*, %struct.whc_qset** %6, align 8
  %29 = getelementptr inbounds %struct.whc_qset, %struct.whc_qset* %28, i32 0, i32 0
  %30 = call i32 @INIT_LIST_HEAD(i32* %29)
  %31 = load %struct.whc_qset*, %struct.whc_qset** %6, align 8
  store %struct.whc_qset* %31, %struct.whc_qset** %3, align 8
  br label %32

32:                                               ; preds = %16, %15
  %33 = load %struct.whc_qset*, %struct.whc_qset** %3, align 8
  ret %struct.whc_qset* %33
}

declare dso_local %struct.whc_qset* @dma_pool_alloc(i32, i32, i32*) #1

declare dso_local i32 @memset(%struct.whc_qset*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
