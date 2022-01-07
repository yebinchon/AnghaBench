; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_multicast.c_br_multicast_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_multicast.c_br_multicast_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@HZ = common dso_local global i32 0, align 4
@br_multicast_local_router_expired = common dso_local global i32 0, align 4
@br_multicast_querier_expired = common dso_local global i32 0, align 4
@br_multicast_query_expired = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_multicast_init(%struct.net_bridge* %0) #0 {
  %2 = alloca %struct.net_bridge*, align 8
  store %struct.net_bridge* %0, %struct.net_bridge** %2, align 8
  %3 = load %struct.net_bridge*, %struct.net_bridge** %2, align 8
  %4 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %3, i32 0, i32 0
  store i32 4, i32* %4, align 8
  %5 = load %struct.net_bridge*, %struct.net_bridge** %2, align 8
  %6 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %5, i32 0, i32 1
  store i32 512, i32* %6, align 4
  %7 = load %struct.net_bridge*, %struct.net_bridge** %2, align 8
  %8 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %7, i32 0, i32 2
  store i32 1, i32* %8, align 8
  %9 = load %struct.net_bridge*, %struct.net_bridge** %2, align 8
  %10 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %9, i32 0, i32 15
  store i64 0, i64* %10, align 8
  %11 = load %struct.net_bridge*, %struct.net_bridge** %2, align 8
  %12 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %11, i32 0, i32 3
  store i32 2, i32* %12, align 4
  %13 = load %struct.net_bridge*, %struct.net_bridge** %2, align 8
  %14 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %13, i32 0, i32 4
  store i32 2, i32* %14, align 8
  %15 = load i32, i32* @HZ, align 4
  %16 = load %struct.net_bridge*, %struct.net_bridge** %2, align 8
  %17 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %16, i32 0, i32 5
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @HZ, align 4
  %19 = mul nsw i32 10, %18
  %20 = load %struct.net_bridge*, %struct.net_bridge** %2, align 8
  %21 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %20, i32 0, i32 6
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* @HZ, align 4
  %23 = mul nsw i32 125, %22
  %24 = sdiv i32 %23, 4
  %25 = load %struct.net_bridge*, %struct.net_bridge** %2, align 8
  %26 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %25, i32 0, i32 7
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @HZ, align 4
  %28 = mul nsw i32 125, %27
  %29 = load %struct.net_bridge*, %struct.net_bridge** %2, align 8
  %30 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %29, i32 0, i32 8
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* @HZ, align 4
  %32 = mul nsw i32 255, %31
  %33 = load %struct.net_bridge*, %struct.net_bridge** %2, align 8
  %34 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %33, i32 0, i32 9
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @HZ, align 4
  %36 = mul nsw i32 260, %35
  %37 = load %struct.net_bridge*, %struct.net_bridge** %2, align 8
  %38 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %37, i32 0, i32 10
  store i32 %36, i32* %38, align 8
  %39 = load %struct.net_bridge*, %struct.net_bridge** %2, align 8
  %40 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %39, i32 0, i32 14
  %41 = call i32 @spin_lock_init(i32* %40)
  %42 = load %struct.net_bridge*, %struct.net_bridge** %2, align 8
  %43 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %42, i32 0, i32 13
  %44 = load i32, i32* @br_multicast_local_router_expired, align 4
  %45 = call i32 @setup_timer(i32* %43, i32 %44, i64 0)
  %46 = load %struct.net_bridge*, %struct.net_bridge** %2, align 8
  %47 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %46, i32 0, i32 12
  %48 = load i32, i32* @br_multicast_querier_expired, align 4
  %49 = load %struct.net_bridge*, %struct.net_bridge** %2, align 8
  %50 = ptrtoint %struct.net_bridge* %49 to i64
  %51 = call i32 @setup_timer(i32* %47, i32 %48, i64 %50)
  %52 = load %struct.net_bridge*, %struct.net_bridge** %2, align 8
  %53 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %52, i32 0, i32 11
  %54 = load i32, i32* @br_multicast_query_expired, align 4
  %55 = load %struct.net_bridge*, %struct.net_bridge** %2, align 8
  %56 = ptrtoint %struct.net_bridge* %55 to i64
  %57 = call i32 @setup_timer(i32* %53, i32 %54, i64 %56)
  %58 = call i32 (...) @br_mdb_init()
  ret void
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @setup_timer(i32*, i32, i64) #1

declare dso_local i32 @br_mdb_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
