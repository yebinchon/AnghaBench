; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hcd.c_unmap_urb_for_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hcd.c_unmap_urb_for_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i64 }
%struct.urb = type { i32, i32, i8*, i32, %struct.TYPE_8__*, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@URB_NO_SETUP_DMA_MAP = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@HCD_LOCAL_MEM = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_hcd*, %struct.urb*)* @unmap_urb_for_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unmap_urb_for_dma(%struct.usb_hcd* %0, %struct.urb* %1) #0 {
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.urb*, align 8
  %5 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  store %struct.urb* %1, %struct.urb** %4, align 8
  %6 = load %struct.urb*, %struct.urb** %4, align 8
  %7 = getelementptr inbounds %struct.urb, %struct.urb* %6, i32 0, i32 4
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %9 = call i64 @is_root_hub(%struct.TYPE_8__* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %132

12:                                               ; preds = %2
  %13 = load %struct.urb*, %struct.urb** %4, align 8
  %14 = getelementptr inbounds %struct.urb, %struct.urb* %13, i32 0, i32 7
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = call i64 @usb_endpoint_xfer_control(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %66

19:                                               ; preds = %12
  %20 = load %struct.urb*, %struct.urb** %4, align 8
  %21 = getelementptr inbounds %struct.urb, %struct.urb* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @URB_NO_SETUP_DMA_MAP, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %66, label %26

26:                                               ; preds = %19
  %27 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %28 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %26
  %33 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %34 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.urb*, %struct.urb** %4, align 8
  %38 = getelementptr inbounds %struct.urb, %struct.urb* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @DMA_TO_DEVICE, align 4
  %41 = call i32 @dma_unmap_single(i32 %36, i32 %39, i32 4, i32 %40)
  br label %65

42:                                               ; preds = %26
  %43 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %44 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %43, i32 0, i32 0
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @HCD_LOCAL_MEM, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %42
  %52 = load %struct.urb*, %struct.urb** %4, align 8
  %53 = getelementptr inbounds %struct.urb, %struct.urb* %52, i32 0, i32 4
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.urb*, %struct.urb** %4, align 8
  %58 = getelementptr inbounds %struct.urb, %struct.urb* %57, i32 0, i32 6
  %59 = load %struct.urb*, %struct.urb** %4, align 8
  %60 = getelementptr inbounds %struct.urb, %struct.urb* %59, i32 0, i32 5
  %61 = bitcast i32* %60 to i8**
  %62 = load i32, i32* @DMA_TO_DEVICE, align 4
  %63 = call i32 @hcd_free_coherent(i32 %56, i32* %58, i8** %61, i32 4, i32 %62)
  br label %64

64:                                               ; preds = %51, %42
  br label %65

65:                                               ; preds = %64, %32
  br label %66

66:                                               ; preds = %65, %19, %12
  %67 = load %struct.urb*, %struct.urb** %4, align 8
  %68 = call i64 @usb_urb_dir_in(%struct.urb* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load i32, i32* @DMA_FROM_DEVICE, align 4
  br label %74

72:                                               ; preds = %66
  %73 = load i32, i32* @DMA_TO_DEVICE, align 4
  br label %74

74:                                               ; preds = %72, %70
  %75 = phi i32 [ %71, %70 ], [ %73, %72 ]
  store i32 %75, i32* %5, align 4
  %76 = load %struct.urb*, %struct.urb** %4, align 8
  %77 = getelementptr inbounds %struct.urb, %struct.urb* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %132

80:                                               ; preds = %74
  %81 = load %struct.urb*, %struct.urb** %4, align 8
  %82 = getelementptr inbounds %struct.urb, %struct.urb* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %132, label %87

87:                                               ; preds = %80
  %88 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %89 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %106

93:                                               ; preds = %87
  %94 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %95 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.urb*, %struct.urb** %4, align 8
  %99 = getelementptr inbounds %struct.urb, %struct.urb* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.urb*, %struct.urb** %4, align 8
  %102 = getelementptr inbounds %struct.urb, %struct.urb* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %5, align 4
  %105 = call i32 @dma_unmap_single(i32 %97, i32 %100, i32 %103, i32 %104)
  br label %131

106:                                              ; preds = %87
  %107 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %108 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %107, i32 0, i32 0
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @HCD_LOCAL_MEM, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %130

115:                                              ; preds = %106
  %116 = load %struct.urb*, %struct.urb** %4, align 8
  %117 = getelementptr inbounds %struct.urb, %struct.urb* %116, i32 0, i32 4
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.urb*, %struct.urb** %4, align 8
  %122 = getelementptr inbounds %struct.urb, %struct.urb* %121, i32 0, i32 3
  %123 = load %struct.urb*, %struct.urb** %4, align 8
  %124 = getelementptr inbounds %struct.urb, %struct.urb* %123, i32 0, i32 2
  %125 = load %struct.urb*, %struct.urb** %4, align 8
  %126 = getelementptr inbounds %struct.urb, %struct.urb* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %5, align 4
  %129 = call i32 @hcd_free_coherent(i32 %120, i32* %122, i8** %124, i32 %127, i32 %128)
  br label %130

130:                                              ; preds = %115, %106
  br label %131

131:                                              ; preds = %130, %93
  br label %132

132:                                              ; preds = %11, %131, %80, %74
  ret void
}

declare dso_local i64 @is_root_hub(%struct.TYPE_8__*) #1

declare dso_local i64 @usb_endpoint_xfer_control(i32*) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @hcd_free_coherent(i32, i32*, i8**, i32, i32) #1

declare dso_local i64 @usb_urb_dir_in(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
