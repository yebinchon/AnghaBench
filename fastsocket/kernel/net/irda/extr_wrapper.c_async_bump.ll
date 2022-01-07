; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/irda/extr_wrapper.c_async_bump.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/irda/extr_wrapper.c_async_bump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.net_device_stats = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i64, i64, i32, i32, %struct.sk_buff* }
%struct.sk_buff = type { i32, %struct.net_device*, i32 }

@IRDA_RX_COPY_THRESHOLD = common dso_local global i64 0, align 8
@ETH_P_IRDA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.net_device_stats*, %struct.TYPE_3__*)* @async_bump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @async_bump(%struct.net_device* %0, %struct.net_device_stats* %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.net_device_stats*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.net_device_stats* %1, %struct.net_device_stats** %5, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %6, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %13 = icmp eq %struct.sk_buff* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %3
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @IRDA_RX_COPY_THRESHOLD, align 8
  %19 = icmp slt i64 %17, %18
  br label %20

20:                                               ; preds = %14, %3
  %21 = phi i1 [ true, %3 ], [ %19, %14 ]
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, 1
  br label %34

30:                                               ; preds = %20
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  br label %34

34:                                               ; preds = %30, %25
  %35 = phi i64 [ %29, %25 ], [ %33, %30 ]
  %36 = call %struct.sk_buff* @dev_alloc_skb(i64 %35)
  store %struct.sk_buff* %36, %struct.sk_buff** %7, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %38 = icmp ne %struct.sk_buff* %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %41 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  br label %110

44:                                               ; preds = %34
  %45 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %46 = call i32 @skb_reserve(%struct.sk_buff* %45, i32 1)
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %44
  %50 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = sub nsw i64 %56, 2
  %58 = call i32 @skb_copy_to_linear_data(%struct.sk_buff* %50, i32 %53, i64 %57)
  %59 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %59, %struct.sk_buff** %8, align 8
  br label %72

60:                                               ; preds = %44
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 4
  %63 = load %struct.sk_buff*, %struct.sk_buff** %62, align 8
  store %struct.sk_buff* %63, %struct.sk_buff** %8, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 4
  store %struct.sk_buff* %64, %struct.sk_buff** %66, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %68 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  br label %72

72:                                               ; preds = %60, %49
  %73 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = sub nsw i64 %76, 2
  %78 = call i32 @skb_put(%struct.sk_buff* %73, i64 %77)
  %79 = load %struct.net_device*, %struct.net_device** %4, align 8
  %80 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %81 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %80, i32 0, i32 1
  store %struct.net_device* %79, %struct.net_device** %81, align 8
  %82 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %83 = call i32 @skb_reset_mac_header(%struct.sk_buff* %82)
  %84 = load i32, i32* @ETH_P_IRDA, align 4
  %85 = call i32 @htons(i32 %84)
  %86 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %87 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %89 = call i32 @netif_rx(%struct.sk_buff* %88)
  %90 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %91 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 4
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %98 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  %101 = add nsw i64 %100, %96
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %98, align 4
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 3
  store i32 %105, i32* %107, align 4
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  store i64 0, i64* %109, align 8
  br label %110

110:                                              ; preds = %72, %39
  ret void
}

declare dso_local %struct.sk_buff* @dev_alloc_skb(i64) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_copy_to_linear_data(%struct.sk_buff*, i32, i64) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
