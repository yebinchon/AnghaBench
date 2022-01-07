; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_if.c_new_bridge_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_if.c_new_bridge_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.net = type { i32 }
%struct.net_bridge = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, %struct.TYPE_2__, %struct.TYPE_2__, i32, i32, i32, i32, i32, i32, %struct.net_device* }
%struct.TYPE_2__ = type { i32* }

@br_dev_setup = common dso_local global i32 0, align 4
@br_reserved_address = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@BR_NO_STP = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device* (%struct.net*, i8*)* @new_bridge_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device* @new_bridge_dev(%struct.net* %0, i8* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.net*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.net_bridge*, align 8
  %7 = alloca %struct.net_device*, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load i32, i32* @br_dev_setup, align 4
  %10 = call %struct.net_device* @alloc_netdev(i32 112, i8* %8, i32 %9)
  store %struct.net_device* %10, %struct.net_device** %7, align 8
  %11 = load %struct.net_device*, %struct.net_device** %7, align 8
  %12 = icmp ne %struct.net_device* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store %struct.net_device* null, %struct.net_device** %3, align 8
  br label %102

14:                                               ; preds = %2
  %15 = load %struct.net_device*, %struct.net_device** %7, align 8
  %16 = load %struct.net*, %struct.net** %4, align 8
  %17 = call i32 @dev_net_set(%struct.net_device* %15, %struct.net* %16)
  %18 = load %struct.net_device*, %struct.net_device** %7, align 8
  %19 = call %struct.net_bridge* @netdev_priv(%struct.net_device* %18)
  store %struct.net_bridge* %19, %struct.net_bridge** %6, align 8
  %20 = load %struct.net_device*, %struct.net_device** %7, align 8
  %21 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %22 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %21, i32 0, i32 20
  store %struct.net_device* %20, %struct.net_device** %22, align 8
  %23 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %24 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %23, i32 0, i32 19
  %25 = call i32 @spin_lock_init(i32* %24)
  %26 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %27 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %26, i32 0, i32 18
  %28 = call i32 @INIT_LIST_HEAD(i32* %27)
  %29 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %30 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %29, i32 0, i32 17
  %31 = call i32 @spin_lock_init(i32* %30)
  %32 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %33 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %32, i32 0, i32 12
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  store i32 128, i32* %36, align 4
  %37 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %38 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %37, i32 0, i32 12
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  store i32 0, i32* %41, align 4
  %42 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %43 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %42, i32 0, i32 16
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @br_reserved_address, align 4
  %46 = load i32, i32* @ETH_ALEN, align 4
  %47 = call i32 @memcpy(i32 %44, i32 %45, i32 %46)
  %48 = load %struct.net_device*, %struct.net_device** %7, align 8
  %49 = getelementptr inbounds %struct.net_device, %struct.net_device* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %52 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %51, i32 0, i32 15
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @BR_NO_STP, align 4
  %54 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %55 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %54, i32 0, i32 14
  store i32 %53, i32* %55, align 8
  %56 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %57 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %56, i32 0, i32 13
  %58 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %59 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %58, i32 0, i32 12
  %60 = bitcast %struct.TYPE_2__* %57 to i8*
  %61 = bitcast %struct.TYPE_2__* %59 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %60, i8* align 8 %61, i64 8, i1 false)
  %62 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %63 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %62, i32 0, i32 11
  store i64 0, i64* %63, align 8
  %64 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %65 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %64, i32 0, i32 10
  store i64 0, i64* %65, align 8
  %66 = load i32, i32* @HZ, align 4
  %67 = mul nsw i32 20, %66
  %68 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %69 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %71 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %70, i32 0, i32 0
  store i32 %67, i32* %71, align 8
  %72 = load i32, i32* @HZ, align 4
  %73 = mul nsw i32 2, %72
  %74 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %75 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 4
  %76 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %77 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %76, i32 0, i32 2
  store i32 %73, i32* %77, align 8
  %78 = load i32, i32* @HZ, align 4
  %79 = mul nsw i32 15, %78
  %80 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %81 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %80, i32 0, i32 5
  store i32 %79, i32* %81, align 4
  %82 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %83 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %82, i32 0, i32 4
  store i32 %79, i32* %83, align 8
  %84 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %85 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %84, i32 0, i32 9
  store i64 0, i64* %85, align 8
  %86 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %87 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %86, i32 0, i32 8
  store i64 0, i64* %87, align 8
  %88 = load i32, i32* @HZ, align 4
  %89 = mul nsw i32 300, %88
  %90 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %91 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %90, i32 0, i32 6
  store i32 %89, i32* %91, align 8
  %92 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %93 = call i32 @br_netfilter_rtable_init(%struct.net_bridge* %92)
  %94 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %95 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %94, i32 0, i32 7
  %96 = call i32 @INIT_LIST_HEAD(i32* %95)
  %97 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %98 = call i32 @br_stp_timer_init(%struct.net_bridge* %97)
  %99 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %100 = call i32 @br_multicast_init(%struct.net_bridge* %99)
  %101 = load %struct.net_device*, %struct.net_device** %7, align 8
  store %struct.net_device* %101, %struct.net_device** %3, align 8
  br label %102

102:                                              ; preds = %14, %13
  %103 = load %struct.net_device*, %struct.net_device** %3, align 8
  ret %struct.net_device* %103
}

declare dso_local %struct.net_device* @alloc_netdev(i32, i8*, i32) #1

declare dso_local i32 @dev_net_set(%struct.net_device*, %struct.net*) #1

declare dso_local %struct.net_bridge* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @br_netfilter_rtable_init(%struct.net_bridge*) #1

declare dso_local i32 @br_stp_timer_init(%struct.net_bridge*) #1

declare dso_local i32 @br_multicast_init(%struct.net_bridge*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
