; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ethernet/extr_eth.c_eth_header_cache.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ethernet/extr_eth.c_eth_header_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.neighbour = type { i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.hh_cache = type { i64, i32, i64 }
%struct.ethhdr = type { i32, i32, i64 }

@ETH_P_802_3 = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eth_header_cache(%struct.neighbour* %0, %struct.hh_cache* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.neighbour*, align 8
  %5 = alloca %struct.hh_cache*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ethhdr*, align 8
  %8 = alloca %struct.net_device*, align 8
  store %struct.neighbour* %0, %struct.neighbour** %4, align 8
  store %struct.hh_cache* %1, %struct.hh_cache** %5, align 8
  %9 = load %struct.hh_cache*, %struct.hh_cache** %5, align 8
  %10 = getelementptr inbounds %struct.hh_cache, %struct.hh_cache* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %6, align 8
  %12 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %13 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %12, i32 0, i32 1
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  store %struct.net_device* %14, %struct.net_device** %8, align 8
  %15 = load %struct.hh_cache*, %struct.hh_cache** %5, align 8
  %16 = getelementptr inbounds %struct.hh_cache, %struct.hh_cache* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i32*
  %19 = call i32 @HH_DATA_OFF(i32 16)
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = bitcast i32* %21 to %struct.ethhdr*
  store %struct.ethhdr* %22, %struct.ethhdr** %7, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load i32, i32* @ETH_P_802_3, align 4
  %25 = call i64 @htons(i32 %24)
  %26 = icmp eq i64 %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %51

28:                                               ; preds = %2
  %29 = load i64, i64* %6, align 8
  %30 = load %struct.ethhdr*, %struct.ethhdr** %7, align 8
  %31 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %30, i32 0, i32 2
  store i64 %29, i64* %31, align 8
  %32 = load %struct.ethhdr*, %struct.ethhdr** %7, align 8
  %33 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.net_device*, %struct.net_device** %8, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @ETH_ALEN, align 4
  %39 = call i32 @memcpy(i32 %34, i32 %37, i32 %38)
  %40 = load %struct.ethhdr*, %struct.ethhdr** %7, align 8
  %41 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %44 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @ETH_ALEN, align 4
  %47 = call i32 @memcpy(i32 %42, i32 %45, i32 %46)
  %48 = load i32, i32* @ETH_HLEN, align 4
  %49 = load %struct.hh_cache*, %struct.hh_cache** %5, align 8
  %50 = getelementptr inbounds %struct.hh_cache, %struct.hh_cache* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %28, %27
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @HH_DATA_OFF(i32) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
