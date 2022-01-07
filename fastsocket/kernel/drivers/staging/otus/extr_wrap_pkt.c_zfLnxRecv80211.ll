; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/extr_wrap_pkt.c_zfLnxRecv80211.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/extr_wrap_pkt.c_zfLnxRecv80211.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.usbdrv_private* }
%struct.usbdrv_private = type { i64 }
%struct.TYPE_11__ = type { i32, i32, i32, i64, i64, %struct.TYPE_10__* }
%struct.zsAdditionInfo = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@CHECKSUM_NONE = common dso_local global i32 0, align 4
@PACKET_OTHERHOST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfLnxRecv80211(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1, %struct.zsAdditionInfo* %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.zsAdditionInfo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.usbdrv_private*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  store %struct.zsAdditionInfo* %2, %struct.zsAdditionInfo** %6, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load %struct.usbdrv_private*, %struct.usbdrv_private** %13, align 8
  store %struct.usbdrv_private* %14, %struct.usbdrv_private** %11, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i32*
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = and i32 %20, 15
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %8, align 4
  %23 = and i32 %22, 240
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %62

26:                                               ; preds = %3
  %27 = load %struct.usbdrv_private*, %struct.usbdrv_private** %11, align 8
  %28 = getelementptr inbounds %struct.usbdrv_private, %struct.usbdrv_private* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %62

31:                                               ; preds = %26
  %32 = load i32, i32* %9, align 4
  switch i32 %32, label %60 [
    i32 128, label %33
    i32 80, label %33
  ]

33:                                               ; preds = %31, %31
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %35 = load i32, i32* @GFP_ATOMIC, align 4
  %36 = call %struct.TYPE_11__* @skb_copy(%struct.TYPE_11__* %34, i32 %35)
  store %struct.TYPE_11__* %36, %struct.TYPE_11__** %10, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %38 = icmp ne %struct.TYPE_11__* %37, null
  br i1 %38, label %39, label %59

39:                                               ; preds = %33
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 5
  store %struct.TYPE_10__* %40, %struct.TYPE_10__** %42, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 4
  store i64 %45, i64* %47, align 8
  %48 = load i32, i32* @CHECKSUM_NONE, align 4
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* @PACKET_OTHERHOST, align 4
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = call i32 @__constant_htons(i32 25)
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %58 = call i32 @netif_rx(%struct.TYPE_11__* %57)
  br label %59

59:                                               ; preds = %39, %33
  br label %61

60:                                               ; preds = %31
  br label %61

61:                                               ; preds = %60, %59
  br label %62

62:                                               ; preds = %61, %26, %3
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %65 = load %struct.zsAdditionInfo*, %struct.zsAdditionInfo** %6, align 8
  %66 = call i32 @zfiRecv80211(%struct.TYPE_10__* %63, %struct.TYPE_11__* %64, %struct.zsAdditionInfo* %65)
  ret void
}

declare dso_local %struct.TYPE_11__* @skb_copy(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @__constant_htons(i32) #1

declare dso_local i32 @netif_rx(%struct.TYPE_11__*) #1

declare dso_local i32 @zfiRecv80211(%struct.TYPE_10__*, %struct.TYPE_11__*, %struct.zsAdditionInfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
