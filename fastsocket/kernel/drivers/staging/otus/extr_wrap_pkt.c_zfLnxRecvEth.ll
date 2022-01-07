; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/extr_wrap_pkt.c_zfLnxRecvEth.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/extr_wrap_pkt.c_zfLnxRecvEth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i8*, %struct.usbdrv_private* }
%struct.usbdrv_private = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, i32 }
%struct.TYPE_17__ = type { i64, i8*, i8*, %struct.TYPE_16__*, i64, i64 }

@vap = common dso_local global %struct.TYPE_18__* null, align 8
@CHECKSUM_NONE = common dso_local global i8* null, align 8
@jiffies = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfLnxRecvEth(%struct.TYPE_16__* %0, %struct.TYPE_17__* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.usbdrv_private*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 1
  %10 = load %struct.usbdrv_private*, %struct.usbdrv_private** %9, align 8
  store %struct.usbdrv_private* %10, %struct.usbdrv_private** %7, align 8
  %11 = load i64, i64* %6, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %3
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 3
  store %struct.TYPE_16__* %14, %struct.TYPE_16__** %16, align 8
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %19 = call i8* @eth_type_trans(%struct.TYPE_17__* %17, %struct.TYPE_16__* %18)
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 2
  store i8* %19, i8** %21, align 8
  br label %53

22:                                               ; preds = %3
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** @vap, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i64 0
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %27 = icmp ne %struct.TYPE_16__* %26, null
  br i1 %27, label %28, label %43

28:                                               ; preds = %22
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** @vap, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %31, align 8
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 3
  store %struct.TYPE_16__* %32, %struct.TYPE_16__** %34, align 8
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** @vap, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i64 0
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %38, align 8
  %40 = call i8* @eth_type_trans(%struct.TYPE_17__* %35, %struct.TYPE_16__* %39)
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 2
  store i8* %40, i8** %42, align 8
  br label %52

43:                                               ; preds = %22
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 3
  store %struct.TYPE_16__* %44, %struct.TYPE_16__** %46, align 8
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %49 = call i8* @eth_type_trans(%struct.TYPE_17__* %47, %struct.TYPE_16__* %48)
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 2
  store i8* %49, i8** %51, align 8
  br label %52

52:                                               ; preds = %43, %28
  br label %53

53:                                               ; preds = %52, %13
  %54 = load i8*, i8** @CHECKSUM_NONE, align 8
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  %57 = load i8*, i8** @jiffies, align 8
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 0
  store i8* %57, i8** %59, align 8
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %61 = call i32 @netif_rx(%struct.TYPE_17__* %60)
  switch i32 %61, label %63 [
    i32 128, label %62
  ]

62:                                               ; preds = %53
  br label %79

63:                                               ; preds = %53
  %64 = load %struct.usbdrv_private*, %struct.usbdrv_private** %7, align 8
  %65 = getelementptr inbounds %struct.usbdrv_private, %struct.usbdrv_private* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 8
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.usbdrv_private*, %struct.usbdrv_private** %7, align 8
  %74 = getelementptr inbounds %struct.usbdrv_private, %struct.usbdrv_private* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %77, %72
  store i64 %78, i64* %76, align 8
  br label %79

79:                                               ; preds = %63, %62
  ret void
}

declare dso_local i8* @eth_type_trans(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

declare dso_local i32 @netif_rx(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
