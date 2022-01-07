; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_mx3fb.c_chan_filter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_mx3fb.c_chan_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.dma_chan_request = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device* }
%struct.device = type { %struct.mx3fb_platform_data* }
%struct.mx3fb_platform_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*, i8*)* @chan_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chan_filter(%struct.dma_chan* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dma_chan*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dma_chan_request*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.mx3fb_platform_data*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.dma_chan_request*
  store %struct.dma_chan_request* %10, %struct.dma_chan_request** %6, align 8
  %11 = load %struct.dma_chan_request*, %struct.dma_chan_request** %6, align 8
  %12 = icmp ne %struct.dma_chan_request* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %43

14:                                               ; preds = %2
  %15 = load %struct.dma_chan_request*, %struct.dma_chan_request** %6, align 8
  %16 = getelementptr inbounds %struct.dma_chan_request, %struct.dma_chan_request* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.device*, %struct.device** %18, align 8
  store %struct.device* %19, %struct.device** %7, align 8
  %20 = load %struct.device*, %struct.device** %7, align 8
  %21 = getelementptr inbounds %struct.device, %struct.device* %20, i32 0, i32 0
  %22 = load %struct.mx3fb_platform_data*, %struct.mx3fb_platform_data** %21, align 8
  store %struct.mx3fb_platform_data* %22, %struct.mx3fb_platform_data** %8, align 8
  %23 = load %struct.dma_chan_request*, %struct.dma_chan_request** %6, align 8
  %24 = getelementptr inbounds %struct.dma_chan_request, %struct.dma_chan_request* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %27 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %25, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %14
  %31 = load %struct.mx3fb_platform_data*, %struct.mx3fb_platform_data** %8, align 8
  %32 = getelementptr inbounds %struct.mx3fb_platform_data, %struct.mx3fb_platform_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %35 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %33, %38
  br label %40

40:                                               ; preds = %30, %14
  %41 = phi i1 [ false, %14 ], [ %39, %30 ]
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %40, %13
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
