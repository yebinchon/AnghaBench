; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_buffer.c_hcd_buffer_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_buffer.c_hcd_buffer_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_bus = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.usb_hcd = type { %struct.TYPE_4__, i32*, %struct.TYPE_6__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@HCD_LOCAL_MEM = common dso_local global i32 0, align 4
@HCD_BUFFER_POOLS = common dso_local global i32 0, align 4
@pool_max = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hcd_buffer_free(%struct.usb_bus* %0, i64 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.usb_bus*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.usb_hcd*, align 8
  %10 = alloca i32, align 4
  store %struct.usb_bus* %0, %struct.usb_bus** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.usb_bus*, %struct.usb_bus** %5, align 8
  %12 = call %struct.usb_hcd* @bus_to_hcd(%struct.usb_bus* %11)
  store %struct.usb_hcd* %12, %struct.usb_hcd** %9, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  br label %72

16:                                               ; preds = %4
  %17 = load %struct.usb_bus*, %struct.usb_bus** %5, align 8
  %18 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %35, label %23

23:                                               ; preds = %16
  %24 = load %struct.usb_hcd*, %struct.usb_hcd** %9, align 8
  %25 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %24, i32 0, i32 2
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @HCD_LOCAL_MEM, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %23
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 @kfree(i8* %33)
  br label %72

35:                                               ; preds = %23, %16
  store i32 0, i32* %10, align 4
  br label %36

36:                                               ; preds = %60, %35
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @HCD_BUFFER_POOLS, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %63

40:                                               ; preds = %36
  %41 = load i64, i64* %6, align 8
  %42 = load i64*, i64** @pool_max, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = icmp ule i64 %41, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %40
  %49 = load %struct.usb_hcd*, %struct.usb_hcd** %9, align 8
  %50 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i8*, i8** %7, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @dma_pool_free(i32 %55, i8* %56, i32 %57)
  br label %72

59:                                               ; preds = %40
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %10, align 4
  br label %36

63:                                               ; preds = %36
  %64 = load %struct.usb_hcd*, %struct.usb_hcd** %9, align 8
  %65 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i64, i64* %6, align 8
  %69 = load i8*, i8** %7, align 8
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @dma_free_coherent(i32 %67, i64 %68, i8* %69, i32 %70)
  br label %72

72:                                               ; preds = %63, %48, %32, %15
  ret void
}

declare dso_local %struct.usb_hcd* @bus_to_hcd(%struct.usb_bus*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @dma_pool_free(i32, i8*, i32) #1

declare dso_local i32 @dma_free_coherent(i32, i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
