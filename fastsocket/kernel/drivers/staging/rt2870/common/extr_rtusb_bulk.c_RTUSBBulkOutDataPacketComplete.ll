; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt2870/common/extr_rtusb_bulk.c_RTUSBBulkOutDataPacketComplete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt2870/common/extr_rtusb_bulk.c_RTUSBBulkOutDataPacketComplete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.pt_regs = type { i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_11__, %struct.TYPE_11__, %struct.TYPE_11__, %struct.TYPE_11__, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RTUSBBulkOutDataPacketComplete(%struct.TYPE_7__* %0, %struct.pt_regs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %5, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** %6, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %7, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %20, %struct.TYPE_9__** %8, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %9, align 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 8
  %28 = load i32, i32* %9, align 4
  switch i32 %28, label %74 [
    i32 0, label %29
    i32 1, label %38
    i32 2, label %47
    i32 3, label %56
    i32 4, label %65
  ]

29:                                               ; preds = %2
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %31 = ptrtoint %struct.TYPE_7__* %30 to i64
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  store i64 %31, i64* %34, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 4
  %37 = call i32 @tasklet_hi_schedule(%struct.TYPE_11__* %36)
  br label %74

38:                                               ; preds = %2
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %40 = ptrtoint %struct.TYPE_7__* %39 to i64
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  store i64 %40, i64* %43, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 3
  %46 = call i32 @tasklet_hi_schedule(%struct.TYPE_11__* %45)
  br label %74

47:                                               ; preds = %2
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %49 = ptrtoint %struct.TYPE_7__* %48 to i64
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  store i64 %49, i64* %52, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 2
  %55 = call i32 @tasklet_hi_schedule(%struct.TYPE_11__* %54)
  br label %74

56:                                               ; preds = %2
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %58 = ptrtoint %struct.TYPE_7__* %57 to i64
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  store i64 %58, i64* %61, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = call i32 @tasklet_hi_schedule(%struct.TYPE_11__* %63)
  br label %74

65:                                               ; preds = %2
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %67 = ptrtoint %struct.TYPE_7__* %66 to i64
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  store i64 %67, i64* %70, align 8
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = call i32 @tasklet_hi_schedule(%struct.TYPE_11__* %72)
  br label %74

74:                                               ; preds = %2, %65, %56, %47, %38, %29
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @tasklet_hi_schedule(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
