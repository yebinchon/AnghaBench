; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hcd.c_map_urb_for_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hcd.c_map_urb_for_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i64 }
%struct.urb = type { i32, i8*, i64, i8*, i8*, %struct.TYPE_8__*, %struct.TYPE_7__*, i8* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@URB_NO_SETUP_DMA_MAP = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@HCD_LOCAL_MEM = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*, %struct.urb*, i32)* @map_urb_for_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_urb_for_dma(%struct.usb_hcd* %0, %struct.urb* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_hcd*, align 8
  %6 = alloca %struct.urb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %5, align 8
  store %struct.urb* %1, %struct.urb** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.urb*, %struct.urb** %6, align 8
  %11 = getelementptr inbounds %struct.urb, %struct.urb* %10, i32 0, i32 5
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = call i64 @is_root_hub(%struct.TYPE_8__* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %177

16:                                               ; preds = %3
  %17 = load %struct.urb*, %struct.urb** %6, align 8
  %18 = getelementptr inbounds %struct.urb, %struct.urb* %17, i32 0, i32 6
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = call i64 @usb_endpoint_xfer_control(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %72

23:                                               ; preds = %16
  %24 = load %struct.urb*, %struct.urb** %6, align 8
  %25 = getelementptr inbounds %struct.urb, %struct.urb* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @URB_NO_SETUP_DMA_MAP, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %72, label %30

30:                                               ; preds = %23
  %31 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %32 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %30
  %37 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %38 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.urb*, %struct.urb** %6, align 8
  %42 = getelementptr inbounds %struct.urb, %struct.urb* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = load i32, i32* @DMA_TO_DEVICE, align 4
  %45 = call i8* @dma_map_single(i32 %40, i8* %43, i32 4, i32 %44)
  %46 = load %struct.urb*, %struct.urb** %6, align 8
  %47 = getelementptr inbounds %struct.urb, %struct.urb* %46, i32 0, i32 4
  store i8* %45, i8** %47, align 8
  br label %71

48:                                               ; preds = %30
  %49 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %50 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @HCD_LOCAL_MEM, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %48
  %58 = load %struct.urb*, %struct.urb** %6, align 8
  %59 = getelementptr inbounds %struct.urb, %struct.urb* %58, i32 0, i32 5
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.urb*, %struct.urb** %6, align 8
  %65 = getelementptr inbounds %struct.urb, %struct.urb* %64, i32 0, i32 4
  %66 = load %struct.urb*, %struct.urb** %6, align 8
  %67 = getelementptr inbounds %struct.urb, %struct.urb* %66, i32 0, i32 1
  %68 = load i32, i32* @DMA_TO_DEVICE, align 4
  %69 = call i32 @hcd_alloc_coherent(i32 %62, i32 %63, i8** %65, i8** %67, i32 4, i32 %68)
  store i32 %69, i32* %9, align 4
  br label %70

70:                                               ; preds = %57, %48
  br label %71

71:                                               ; preds = %70, %36
  br label %72

72:                                               ; preds = %71, %23, %16
  %73 = load %struct.urb*, %struct.urb** %6, align 8
  %74 = call i64 @usb_urb_dir_in(%struct.urb* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = load i32, i32* @DMA_FROM_DEVICE, align 4
  br label %80

78:                                               ; preds = %72
  %79 = load i32, i32* @DMA_TO_DEVICE, align 4
  br label %80

80:                                               ; preds = %78, %76
  %81 = phi i32 [ %77, %76 ], [ %79, %78 ]
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %9, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %175

84:                                               ; preds = %80
  %85 = load %struct.urb*, %struct.urb** %6, align 8
  %86 = getelementptr inbounds %struct.urb, %struct.urb* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %175

89:                                               ; preds = %84
  %90 = load %struct.urb*, %struct.urb** %6, align 8
  %91 = getelementptr inbounds %struct.urb, %struct.urb* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %175, label %96

96:                                               ; preds = %89
  %97 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %98 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %118

102:                                              ; preds = %96
  %103 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %104 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.urb*, %struct.urb** %6, align 8
  %108 = getelementptr inbounds %struct.urb, %struct.urb* %107, i32 0, i32 3
  %109 = load i8*, i8** %108, align 8
  %110 = load %struct.urb*, %struct.urb** %6, align 8
  %111 = getelementptr inbounds %struct.urb, %struct.urb* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = trunc i64 %112 to i32
  %114 = load i32, i32* %8, align 4
  %115 = call i8* @dma_map_single(i32 %106, i8* %109, i32 %113, i32 %114)
  %116 = load %struct.urb*, %struct.urb** %6, align 8
  %117 = getelementptr inbounds %struct.urb, %struct.urb* %116, i32 0, i32 7
  store i8* %115, i8** %117, align 8
  br label %174

118:                                              ; preds = %96
  %119 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %120 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %119, i32 0, i32 0
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @HCD_LOCAL_MEM, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %173

127:                                              ; preds = %118
  %128 = load %struct.urb*, %struct.urb** %6, align 8
  %129 = getelementptr inbounds %struct.urb, %struct.urb* %128, i32 0, i32 5
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %7, align 4
  %134 = load %struct.urb*, %struct.urb** %6, align 8
  %135 = getelementptr inbounds %struct.urb, %struct.urb* %134, i32 0, i32 7
  %136 = load %struct.urb*, %struct.urb** %6, align 8
  %137 = getelementptr inbounds %struct.urb, %struct.urb* %136, i32 0, i32 3
  %138 = load %struct.urb*, %struct.urb** %6, align 8
  %139 = getelementptr inbounds %struct.urb, %struct.urb* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = trunc i64 %140 to i32
  %142 = load i32, i32* %8, align 4
  %143 = call i32 @hcd_alloc_coherent(i32 %132, i32 %133, i8** %135, i8** %137, i32 %141, i32 %142)
  store i32 %143, i32* %9, align 4
  %144 = load i32, i32* %9, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %172

146:                                              ; preds = %127
  %147 = load %struct.urb*, %struct.urb** %6, align 8
  %148 = getelementptr inbounds %struct.urb, %struct.urb* %147, i32 0, i32 6
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 0
  %151 = call i64 @usb_endpoint_xfer_control(i32* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %172

153:                                              ; preds = %146
  %154 = load %struct.urb*, %struct.urb** %6, align 8
  %155 = getelementptr inbounds %struct.urb, %struct.urb* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @URB_NO_SETUP_DMA_MAP, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %172, label %160

160:                                              ; preds = %153
  %161 = load %struct.urb*, %struct.urb** %6, align 8
  %162 = getelementptr inbounds %struct.urb, %struct.urb* %161, i32 0, i32 5
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.urb*, %struct.urb** %6, align 8
  %167 = getelementptr inbounds %struct.urb, %struct.urb* %166, i32 0, i32 4
  %168 = load %struct.urb*, %struct.urb** %6, align 8
  %169 = getelementptr inbounds %struct.urb, %struct.urb* %168, i32 0, i32 1
  %170 = load i32, i32* @DMA_TO_DEVICE, align 4
  %171 = call i32 @hcd_free_coherent(i32 %165, i8** %167, i8** %169, i32 4, i32 %170)
  br label %172

172:                                              ; preds = %160, %153, %146, %127
  br label %173

173:                                              ; preds = %172, %118
  br label %174

174:                                              ; preds = %173, %102
  br label %175

175:                                              ; preds = %174, %89, %84, %80
  %176 = load i32, i32* %9, align 4
  store i32 %176, i32* %4, align 4
  br label %177

177:                                              ; preds = %175, %15
  %178 = load i32, i32* %4, align 4
  ret i32 %178
}

declare dso_local i64 @is_root_hub(%struct.TYPE_8__*) #1

declare dso_local i64 @usb_endpoint_xfer_control(i32*) #1

declare dso_local i8* @dma_map_single(i32, i8*, i32, i32) #1

declare dso_local i32 @hcd_alloc_coherent(i32, i32, i8**, i8**, i32, i32) #1

declare dso_local i64 @usb_urb_dir_in(%struct.urb*) #1

declare dso_local i32 @hcd_free_coherent(i32, i8**, i8**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
