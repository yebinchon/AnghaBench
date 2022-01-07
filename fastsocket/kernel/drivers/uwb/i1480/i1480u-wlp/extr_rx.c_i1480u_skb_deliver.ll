; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/i1480/i1480u-wlp/extr_rx.c_i1480u_skb_deliver.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/i1480/i1480u-wlp/extr_rx.c_i1480u_skb_deliver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i1480u = type { i64, %struct.TYPE_8__*, i32, i32, %struct.TYPE_6__*, %struct.net_device* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { %struct.device }
%struct.device = type { i32 }
%struct.net_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i1480u*)* @i1480u_skb_deliver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i1480u_skb_deliver(%struct.i1480u* %0) #0 {
  %2 = alloca %struct.i1480u*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.device*, align 8
  store %struct.i1480u* %0, %struct.i1480u** %2, align 8
  %6 = load %struct.i1480u*, %struct.i1480u** %2, align 8
  %7 = getelementptr inbounds %struct.i1480u, %struct.i1480u* %6, i32 0, i32 5
  %8 = load %struct.net_device*, %struct.net_device** %7, align 8
  store %struct.net_device* %8, %struct.net_device** %4, align 8
  %9 = load %struct.i1480u*, %struct.i1480u** %2, align 8
  %10 = getelementptr inbounds %struct.i1480u, %struct.i1480u* %9, i32 0, i32 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %5, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = load %struct.i1480u*, %struct.i1480u** %2, align 8
  %15 = getelementptr inbounds %struct.i1480u, %struct.i1480u* %14, i32 0, i32 3
  %16 = load %struct.i1480u*, %struct.i1480u** %2, align 8
  %17 = getelementptr inbounds %struct.i1480u, %struct.i1480u* %16, i32 0, i32 1
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = load %struct.i1480u*, %struct.i1480u** %2, align 8
  %20 = getelementptr inbounds %struct.i1480u, %struct.i1480u* %19, i32 0, i32 2
  %21 = call i32 @wlp_receive_frame(%struct.device* %13, i32* %15, %struct.TYPE_8__* %18, i32* %20)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %1
  br label %54

25:                                               ; preds = %1
  %26 = load %struct.i1480u*, %struct.i1480u** %2, align 8
  %27 = getelementptr inbounds %struct.i1480u, %struct.i1480u* %26, i32 0, i32 1
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = load %struct.net_device*, %struct.net_device** %4, align 8
  %30 = call i32 @eth_type_trans(%struct.TYPE_8__* %28, %struct.net_device* %29)
  %31 = load %struct.i1480u*, %struct.i1480u** %2, align 8
  %32 = getelementptr inbounds %struct.i1480u, %struct.i1480u* %31, i32 0, i32 1
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  store i32 %30, i32* %34, align 4
  %35 = load %struct.net_device*, %struct.net_device** %4, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  %40 = load %struct.i1480u*, %struct.i1480u** %2, align 8
  %41 = getelementptr inbounds %struct.i1480u, %struct.i1480u* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.net_device*, %struct.net_device** %4, align 8
  %44 = getelementptr inbounds %struct.net_device, %struct.net_device* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %47, %42
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %45, align 4
  %50 = load %struct.i1480u*, %struct.i1480u** %2, align 8
  %51 = getelementptr inbounds %struct.i1480u, %struct.i1480u* %50, i32 0, i32 1
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = call i32 @netif_rx(%struct.TYPE_8__* %52)
  br label %54

54:                                               ; preds = %25, %24
  %55 = load %struct.i1480u*, %struct.i1480u** %2, align 8
  %56 = getelementptr inbounds %struct.i1480u, %struct.i1480u* %55, i32 0, i32 1
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %56, align 8
  %57 = load %struct.i1480u*, %struct.i1480u** %2, align 8
  %58 = getelementptr inbounds %struct.i1480u, %struct.i1480u* %57, i32 0, i32 0
  store i64 0, i64* %58, align 8
  ret void
}

declare dso_local i32 @wlp_receive_frame(%struct.device*, i32*, %struct.TYPE_8__*, i32*) #1

declare dso_local i32 @eth_type_trans(%struct.TYPE_8__*, %struct.net_device*) #1

declare dso_local i32 @netif_rx(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
