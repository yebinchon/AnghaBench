; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_buffer.c_hcd_buffer_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_buffer.c_hcd_buffer_alloc.c"
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
define dso_local i8* @hcd_buffer_alloc(%struct.usb_bus* %0, i64 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.usb_bus*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.usb_hcd*, align 8
  %11 = alloca i32, align 4
  store %struct.usb_bus* %0, %struct.usb_bus** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load %struct.usb_bus*, %struct.usb_bus** %6, align 8
  %13 = call %struct.usb_hcd* @bus_to_hcd(%struct.usb_bus* %12)
  store %struct.usb_hcd* %13, %struct.usb_hcd** %10, align 8
  %14 = load %struct.usb_bus*, %struct.usb_bus** %6, align 8
  %15 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %34, label %20

20:                                               ; preds = %4
  %21 = load %struct.usb_hcd*, %struct.usb_hcd** %10, align 8
  %22 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %21, i32 0, i32 2
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @HCD_LOCAL_MEM, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %20
  %30 = load i32*, i32** %9, align 8
  store i32 -1, i32* %30, align 4
  %31 = load i64, i64* %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i8* @kmalloc(i64 %31, i32 %32)
  store i8* %33, i8** %5, align 8
  br label %71

34:                                               ; preds = %20, %4
  store i32 0, i32* %11, align 4
  br label %35

35:                                               ; preds = %59, %34
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @HCD_BUFFER_POOLS, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %62

39:                                               ; preds = %35
  %40 = load i64, i64* %7, align 8
  %41 = load i64*, i64** @pool_max, align 8
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = icmp ule i64 %40, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %39
  %48 = load %struct.usb_hcd*, %struct.usb_hcd** %10, align 8
  %49 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32*, i32** %9, align 8
  %57 = call i8* @dma_pool_alloc(i32 %54, i32 %55, i32* %56)
  store i8* %57, i8** %5, align 8
  br label %71

58:                                               ; preds = %39
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %11, align 4
  br label %35

62:                                               ; preds = %35
  %63 = load %struct.usb_hcd*, %struct.usb_hcd** %10, align 8
  %64 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i64, i64* %7, align 8
  %68 = load i32*, i32** %9, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i8* @dma_alloc_coherent(i32 %66, i64 %67, i32* %68, i32 %69)
  store i8* %70, i8** %5, align 8
  br label %71

71:                                               ; preds = %62, %47, %29
  %72 = load i8*, i8** %5, align 8
  ret i8* %72
}

declare dso_local %struct.usb_hcd* @bus_to_hcd(%struct.usb_bus*) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i8* @dma_pool_alloc(i32, i32, i32*) #1

declare dso_local i8* @dma_alloc_coherent(i32, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
