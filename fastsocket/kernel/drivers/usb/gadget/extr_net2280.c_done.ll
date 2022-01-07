; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_net2280.c_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_net2280.c_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net2280_ep = type { i32, %struct.TYPE_4__, i64, %struct.net2280* }
%struct.TYPE_4__ = type { i32 }
%struct.net2280 = type { i32, i32 }
%struct.net2280_request = type { %struct.TYPE_5__, i64, i32 }
%struct.TYPE_5__ = type { i32, i32 (%struct.TYPE_4__*, %struct.TYPE_5__*)*, i32, i32, i32 }

@EINPROGRESS = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@DMA_ADDR_INVALID = common dso_local global i32 0, align 4
@ESHUTDOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"complete %s req %p stat %d len %u/%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net2280_ep*, %struct.net2280_request*, i32)* @done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @done(%struct.net2280_ep* %0, %struct.net2280_request* %1, i32 %2) #0 {
  %4 = alloca %struct.net2280_ep*, align 8
  %5 = alloca %struct.net2280_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.net2280*, align 8
  %8 = alloca i32, align 4
  store %struct.net2280_ep* %0, %struct.net2280_ep** %4, align 8
  store %struct.net2280_request* %1, %struct.net2280_request** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.net2280_ep*, %struct.net2280_ep** %4, align 8
  %10 = getelementptr inbounds %struct.net2280_ep, %struct.net2280_ep* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %8, align 4
  %12 = load %struct.net2280_request*, %struct.net2280_request** %5, align 8
  %13 = getelementptr inbounds %struct.net2280_request, %struct.net2280_request* %12, i32 0, i32 2
  %14 = call i32 @list_del_init(i32* %13)
  %15 = load %struct.net2280_request*, %struct.net2280_request** %5, align 8
  %16 = getelementptr inbounds %struct.net2280_request, %struct.net2280_request* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @EINPROGRESS, align 4
  %20 = sub nsw i32 0, %19
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.net2280_request*, %struct.net2280_request** %5, align 8
  %25 = getelementptr inbounds %struct.net2280_request, %struct.net2280_request* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 8
  br label %32

27:                                               ; preds = %3
  %28 = load %struct.net2280_request*, %struct.net2280_request** %5, align 8
  %29 = getelementptr inbounds %struct.net2280_request, %struct.net2280_request* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %27, %22
  %33 = load %struct.net2280_ep*, %struct.net2280_ep** %4, align 8
  %34 = getelementptr inbounds %struct.net2280_ep, %struct.net2280_ep* %33, i32 0, i32 3
  %35 = load %struct.net2280*, %struct.net2280** %34, align 8
  store %struct.net2280* %35, %struct.net2280** %7, align 8
  %36 = load %struct.net2280_request*, %struct.net2280_request** %5, align 8
  %37 = getelementptr inbounds %struct.net2280_request, %struct.net2280_request* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %69

40:                                               ; preds = %32
  %41 = load %struct.net2280*, %struct.net2280** %7, align 8
  %42 = getelementptr inbounds %struct.net2280, %struct.net2280* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.net2280_request*, %struct.net2280_request** %5, align 8
  %45 = getelementptr inbounds %struct.net2280_request, %struct.net2280_request* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.net2280_request*, %struct.net2280_request** %5, align 8
  %49 = getelementptr inbounds %struct.net2280_request, %struct.net2280_request* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.net2280_ep*, %struct.net2280_ep** %4, align 8
  %53 = getelementptr inbounds %struct.net2280_ep, %struct.net2280_ep* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %40
  %57 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  br label %60

58:                                               ; preds = %40
  %59 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i32 [ %57, %56 ], [ %59, %58 ]
  %62 = call i32 @pci_unmap_single(i32 %43, i32 %47, i32 %51, i32 %61)
  %63 = load i32, i32* @DMA_ADDR_INVALID, align 4
  %64 = load %struct.net2280_request*, %struct.net2280_request** %5, align 8
  %65 = getelementptr inbounds %struct.net2280_request, %struct.net2280_request* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 4
  store i32 %63, i32* %66, align 8
  %67 = load %struct.net2280_request*, %struct.net2280_request** %5, align 8
  %68 = getelementptr inbounds %struct.net2280_request, %struct.net2280_request* %67, i32 0, i32 1
  store i64 0, i64* %68, align 8
  br label %69

69:                                               ; preds = %60, %32
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %95

72:                                               ; preds = %69
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @ESHUTDOWN, align 4
  %75 = sub nsw i32 0, %74
  %76 = icmp ne i32 %73, %75
  br i1 %76, label %77, label %95

77:                                               ; preds = %72
  %78 = load %struct.net2280*, %struct.net2280** %7, align 8
  %79 = load %struct.net2280_ep*, %struct.net2280_ep** %4, align 8
  %80 = getelementptr inbounds %struct.net2280_ep, %struct.net2280_ep* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.net2280_request*, %struct.net2280_request** %5, align 8
  %84 = getelementptr inbounds %struct.net2280_request, %struct.net2280_request* %83, i32 0, i32 0
  %85 = load i32, i32* %6, align 4
  %86 = load %struct.net2280_request*, %struct.net2280_request** %5, align 8
  %87 = getelementptr inbounds %struct.net2280_request, %struct.net2280_request* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.net2280_request*, %struct.net2280_request** %5, align 8
  %91 = getelementptr inbounds %struct.net2280_request, %struct.net2280_request* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @VDEBUG(%struct.net2280* %78, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %82, %struct.TYPE_5__* %84, i32 %85, i32 %89, i32 %93)
  br label %95

95:                                               ; preds = %77, %72, %69
  %96 = load %struct.net2280_ep*, %struct.net2280_ep** %4, align 8
  %97 = getelementptr inbounds %struct.net2280_ep, %struct.net2280_ep* %96, i32 0, i32 0
  store i32 1, i32* %97, align 8
  %98 = load %struct.net2280*, %struct.net2280** %7, align 8
  %99 = getelementptr inbounds %struct.net2280, %struct.net2280* %98, i32 0, i32 0
  %100 = call i32 @spin_unlock(i32* %99)
  %101 = load %struct.net2280_request*, %struct.net2280_request** %5, align 8
  %102 = getelementptr inbounds %struct.net2280_request, %struct.net2280_request* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 1
  %104 = load i32 (%struct.TYPE_4__*, %struct.TYPE_5__*)*, i32 (%struct.TYPE_4__*, %struct.TYPE_5__*)** %103, align 8
  %105 = load %struct.net2280_ep*, %struct.net2280_ep** %4, align 8
  %106 = getelementptr inbounds %struct.net2280_ep, %struct.net2280_ep* %105, i32 0, i32 1
  %107 = load %struct.net2280_request*, %struct.net2280_request** %5, align 8
  %108 = getelementptr inbounds %struct.net2280_request, %struct.net2280_request* %107, i32 0, i32 0
  %109 = call i32 %104(%struct.TYPE_4__* %106, %struct.TYPE_5__* %108)
  %110 = load %struct.net2280*, %struct.net2280** %7, align 8
  %111 = getelementptr inbounds %struct.net2280, %struct.net2280* %110, i32 0, i32 0
  %112 = call i32 @spin_lock(i32* %111)
  %113 = load i32, i32* %8, align 4
  %114 = load %struct.net2280_ep*, %struct.net2280_ep** %4, align 8
  %115 = getelementptr inbounds %struct.net2280_ep, %struct.net2280_ep* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  ret void
}

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @VDEBUG(%struct.net2280*, i8*, i32, %struct.TYPE_5__*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
