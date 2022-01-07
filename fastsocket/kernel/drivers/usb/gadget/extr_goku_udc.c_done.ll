; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_goku_udc.c_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_goku_udc.c_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.goku_ep = type { i32, %struct.TYPE_4__, i64, %struct.goku_udc* }
%struct.TYPE_4__ = type { i32 }
%struct.goku_udc = type { i32, i32 }
%struct.goku_request = type { %struct.TYPE_5__, i64, i32 }
%struct.TYPE_5__ = type { i32, i32 (%struct.TYPE_4__*, %struct.TYPE_5__*)*, i32, i32, i32 }

@EINPROGRESS = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@DMA_ADDR_INVALID = common dso_local global i32 0, align 4
@ESHUTDOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"complete %s req %p stat %d len %u/%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.goku_ep*, %struct.goku_request*, i32)* @done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @done(%struct.goku_ep* %0, %struct.goku_request* %1, i32 %2) #0 {
  %4 = alloca %struct.goku_ep*, align 8
  %5 = alloca %struct.goku_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.goku_udc*, align 8
  %8 = alloca i32, align 4
  store %struct.goku_ep* %0, %struct.goku_ep** %4, align 8
  store %struct.goku_request* %1, %struct.goku_request** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.goku_ep*, %struct.goku_ep** %4, align 8
  %10 = getelementptr inbounds %struct.goku_ep, %struct.goku_ep* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %8, align 4
  %12 = load %struct.goku_request*, %struct.goku_request** %5, align 8
  %13 = getelementptr inbounds %struct.goku_request, %struct.goku_request* %12, i32 0, i32 2
  %14 = call i32 @list_del_init(i32* %13)
  %15 = load %struct.goku_request*, %struct.goku_request** %5, align 8
  %16 = getelementptr inbounds %struct.goku_request, %struct.goku_request* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @EINPROGRESS, align 4
  %20 = sub nsw i32 0, %19
  %21 = icmp eq i32 %18, %20
  %22 = zext i1 %21 to i32
  %23 = call i64 @likely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %3
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.goku_request*, %struct.goku_request** %5, align 8
  %28 = getelementptr inbounds %struct.goku_request, %struct.goku_request* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 8
  br label %35

30:                                               ; preds = %3
  %31 = load %struct.goku_request*, %struct.goku_request** %5, align 8
  %32 = getelementptr inbounds %struct.goku_request, %struct.goku_request* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %30, %25
  %36 = load %struct.goku_ep*, %struct.goku_ep** %4, align 8
  %37 = getelementptr inbounds %struct.goku_ep, %struct.goku_ep* %36, i32 0, i32 3
  %38 = load %struct.goku_udc*, %struct.goku_udc** %37, align 8
  store %struct.goku_udc* %38, %struct.goku_udc** %7, align 8
  %39 = load %struct.goku_request*, %struct.goku_request** %5, align 8
  %40 = getelementptr inbounds %struct.goku_request, %struct.goku_request* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %72

43:                                               ; preds = %35
  %44 = load %struct.goku_udc*, %struct.goku_udc** %7, align 8
  %45 = getelementptr inbounds %struct.goku_udc, %struct.goku_udc* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.goku_request*, %struct.goku_request** %5, align 8
  %48 = getelementptr inbounds %struct.goku_request, %struct.goku_request* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.goku_request*, %struct.goku_request** %5, align 8
  %52 = getelementptr inbounds %struct.goku_request, %struct.goku_request* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.goku_ep*, %struct.goku_ep** %4, align 8
  %56 = getelementptr inbounds %struct.goku_ep, %struct.goku_ep* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %43
  %60 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  br label %63

61:                                               ; preds = %43
  %62 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi i32 [ %60, %59 ], [ %62, %61 ]
  %65 = call i32 @pci_unmap_single(i32 %46, i32 %50, i32 %54, i32 %64)
  %66 = load i32, i32* @DMA_ADDR_INVALID, align 4
  %67 = load %struct.goku_request*, %struct.goku_request** %5, align 8
  %68 = getelementptr inbounds %struct.goku_request, %struct.goku_request* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 4
  store i32 %66, i32* %69, align 8
  %70 = load %struct.goku_request*, %struct.goku_request** %5, align 8
  %71 = getelementptr inbounds %struct.goku_request, %struct.goku_request* %70, i32 0, i32 1
  store i64 0, i64* %71, align 8
  br label %72

72:                                               ; preds = %63, %35
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %98

75:                                               ; preds = %72
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @ESHUTDOWN, align 4
  %78 = sub nsw i32 0, %77
  %79 = icmp ne i32 %76, %78
  br i1 %79, label %80, label %98

80:                                               ; preds = %75
  %81 = load %struct.goku_udc*, %struct.goku_udc** %7, align 8
  %82 = load %struct.goku_ep*, %struct.goku_ep** %4, align 8
  %83 = getelementptr inbounds %struct.goku_ep, %struct.goku_ep* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.goku_request*, %struct.goku_request** %5, align 8
  %87 = getelementptr inbounds %struct.goku_request, %struct.goku_request* %86, i32 0, i32 0
  %88 = load i32, i32* %6, align 4
  %89 = load %struct.goku_request*, %struct.goku_request** %5, align 8
  %90 = getelementptr inbounds %struct.goku_request, %struct.goku_request* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.goku_request*, %struct.goku_request** %5, align 8
  %94 = getelementptr inbounds %struct.goku_request, %struct.goku_request* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @VDBG(%struct.goku_udc* %81, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %85, %struct.TYPE_5__* %87, i32 %88, i32 %92, i32 %96)
  br label %98

98:                                               ; preds = %80, %75, %72
  %99 = load %struct.goku_ep*, %struct.goku_ep** %4, align 8
  %100 = getelementptr inbounds %struct.goku_ep, %struct.goku_ep* %99, i32 0, i32 0
  store i32 1, i32* %100, align 8
  %101 = load %struct.goku_udc*, %struct.goku_udc** %7, align 8
  %102 = getelementptr inbounds %struct.goku_udc, %struct.goku_udc* %101, i32 0, i32 0
  %103 = call i32 @spin_unlock(i32* %102)
  %104 = load %struct.goku_request*, %struct.goku_request** %5, align 8
  %105 = getelementptr inbounds %struct.goku_request, %struct.goku_request* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 1
  %107 = load i32 (%struct.TYPE_4__*, %struct.TYPE_5__*)*, i32 (%struct.TYPE_4__*, %struct.TYPE_5__*)** %106, align 8
  %108 = load %struct.goku_ep*, %struct.goku_ep** %4, align 8
  %109 = getelementptr inbounds %struct.goku_ep, %struct.goku_ep* %108, i32 0, i32 1
  %110 = load %struct.goku_request*, %struct.goku_request** %5, align 8
  %111 = getelementptr inbounds %struct.goku_request, %struct.goku_request* %110, i32 0, i32 0
  %112 = call i32 %107(%struct.TYPE_4__* %109, %struct.TYPE_5__* %111)
  %113 = load %struct.goku_udc*, %struct.goku_udc** %7, align 8
  %114 = getelementptr inbounds %struct.goku_udc, %struct.goku_udc* %113, i32 0, i32 0
  %115 = call i32 @spin_lock(i32* %114)
  %116 = load i32, i32* %8, align 4
  %117 = load %struct.goku_ep*, %struct.goku_ep** %4, align 8
  %118 = getelementptr inbounds %struct.goku_ep, %struct.goku_ep* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 8
  ret void
}

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @VDBG(%struct.goku_udc*, i8*, i32, %struct.TYPE_5__*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
