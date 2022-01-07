; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_eth_media.c_recv_notification.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_eth_media.c_recv_notification.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eth_bearer = type { %struct.TYPE_2__*, %struct.net_device* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.net_device = type { i32 }
%struct.notifier_block = type { i32 }

@eth_bearers = common dso_local global %struct.eth_bearer* null, align 8
@MAX_ETH_BEARERS = common dso_local global i64 0, align 8
@init_net = common dso_local global i32 0, align 4
@NOTIFY_DONE = common dso_local global i32 0, align 4
@NOTIFY_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @recv_notification to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recv_notification(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.eth_bearer*, align 8
  %10 = alloca %struct.eth_bearer*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to %struct.net_device*
  store %struct.net_device* %12, %struct.net_device** %8, align 8
  %13 = load %struct.eth_bearer*, %struct.eth_bearer** @eth_bearers, align 8
  %14 = getelementptr inbounds %struct.eth_bearer, %struct.eth_bearer* %13, i64 0
  store %struct.eth_bearer* %14, %struct.eth_bearer** %9, align 8
  %15 = load %struct.eth_bearer*, %struct.eth_bearer** @eth_bearers, align 8
  %16 = load i64, i64* @MAX_ETH_BEARERS, align 8
  %17 = getelementptr inbounds %struct.eth_bearer, %struct.eth_bearer* %15, i64 %16
  store %struct.eth_bearer* %17, %struct.eth_bearer** %10, align 8
  %18 = load %struct.net_device*, %struct.net_device** %8, align 8
  %19 = call i32 @dev_net(%struct.net_device* %18)
  %20 = call i32 @net_eq(i32 %19, i32* @init_net)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %23, i32* %4, align 4
  br label %104

24:                                               ; preds = %3
  br label %25

25:                                               ; preds = %38, %24
  %26 = load %struct.eth_bearer*, %struct.eth_bearer** %9, align 8
  %27 = getelementptr inbounds %struct.eth_bearer, %struct.eth_bearer* %26, i32 0, i32 1
  %28 = load %struct.net_device*, %struct.net_device** %27, align 8
  %29 = load %struct.net_device*, %struct.net_device** %8, align 8
  %30 = icmp ne %struct.net_device* %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %25
  %32 = load %struct.eth_bearer*, %struct.eth_bearer** %9, align 8
  %33 = getelementptr inbounds %struct.eth_bearer, %struct.eth_bearer* %32, i32 1
  store %struct.eth_bearer* %33, %struct.eth_bearer** %9, align 8
  %34 = load %struct.eth_bearer*, %struct.eth_bearer** %10, align 8
  %35 = icmp eq %struct.eth_bearer* %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %37, i32* %4, align 4
  br label %104

38:                                               ; preds = %31
  br label %25

39:                                               ; preds = %25
  %40 = load %struct.eth_bearer*, %struct.eth_bearer** %9, align 8
  %41 = getelementptr inbounds %struct.eth_bearer, %struct.eth_bearer* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = icmp ne %struct.TYPE_2__* %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %45, i32* %4, align 4
  br label %104

46:                                               ; preds = %39
  %47 = load %struct.net_device*, %struct.net_device** %8, align 8
  %48 = getelementptr inbounds %struct.net_device, %struct.net_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.eth_bearer*, %struct.eth_bearer** %9, align 8
  %51 = getelementptr inbounds %struct.eth_bearer, %struct.eth_bearer* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  store i32 %49, i32* %53, align 4
  %54 = load i64, i64* %6, align 8
  switch i64 %54, label %102 [
    i64 134, label %55
    i64 128, label %72
    i64 130, label %77
    i64 132, label %84
    i64 133, label %84
    i64 129, label %95
    i64 131, label %95
  ]

55:                                               ; preds = %46
  %56 = load %struct.net_device*, %struct.net_device** %8, align 8
  %57 = call i32 @netif_carrier_ok(%struct.net_device* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load %struct.eth_bearer*, %struct.eth_bearer** %9, align 8
  %61 = getelementptr inbounds %struct.eth_bearer, %struct.eth_bearer* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = call i32 @tipc_continue(%struct.TYPE_2__* %62)
  br label %71

64:                                               ; preds = %55
  %65 = load %struct.eth_bearer*, %struct.eth_bearer** %9, align 8
  %66 = getelementptr inbounds %struct.eth_bearer, %struct.eth_bearer* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @tipc_block_bearer(i32 %69)
  br label %71

71:                                               ; preds = %64, %59
  br label %102

72:                                               ; preds = %46
  %73 = load %struct.eth_bearer*, %struct.eth_bearer** %9, align 8
  %74 = getelementptr inbounds %struct.eth_bearer, %struct.eth_bearer* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = call i32 @tipc_continue(%struct.TYPE_2__* %75)
  br label %102

77:                                               ; preds = %46
  %78 = load %struct.eth_bearer*, %struct.eth_bearer** %9, align 8
  %79 = getelementptr inbounds %struct.eth_bearer, %struct.eth_bearer* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @tipc_block_bearer(i32 %82)
  br label %102

84:                                               ; preds = %46, %46
  %85 = load %struct.eth_bearer*, %struct.eth_bearer** %9, align 8
  %86 = getelementptr inbounds %struct.eth_bearer, %struct.eth_bearer* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @tipc_block_bearer(i32 %89)
  %91 = load %struct.eth_bearer*, %struct.eth_bearer** %9, align 8
  %92 = getelementptr inbounds %struct.eth_bearer, %struct.eth_bearer* %91, i32 0, i32 0
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = call i32 @tipc_continue(%struct.TYPE_2__* %93)
  br label %102

95:                                               ; preds = %46, %46
  %96 = load %struct.eth_bearer*, %struct.eth_bearer** %9, align 8
  %97 = getelementptr inbounds %struct.eth_bearer, %struct.eth_bearer* %96, i32 0, i32 0
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @tipc_disable_bearer(i32 %100)
  br label %102

102:                                              ; preds = %46, %95, %84, %77, %72, %71
  %103 = load i32, i32* @NOTIFY_OK, align 4
  store i32 %103, i32* %4, align 4
  br label %104

104:                                              ; preds = %102, %44, %36, %22
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local i32 @net_eq(i32, i32*) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @tipc_continue(%struct.TYPE_2__*) #1

declare dso_local i32 @tipc_block_bearer(i32) #1

declare dso_local i32 @tipc_disable_bearer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
