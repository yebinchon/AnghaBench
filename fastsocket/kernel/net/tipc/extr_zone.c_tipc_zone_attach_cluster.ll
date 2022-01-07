; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_zone.c_tipc_zone_attach_cluster.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_zone.c_tipc_zone_attach_cluster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._zone = type { %struct.cluster** }
%struct.cluster = type { i32 }

@tipc_max_clusters = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_zone_attach_cluster(%struct._zone* %0, %struct.cluster* %1) #0 {
  %3 = alloca %struct._zone*, align 8
  %4 = alloca %struct.cluster*, align 8
  %5 = alloca i64, align 8
  store %struct._zone* %0, %struct._zone** %3, align 8
  store %struct.cluster* %1, %struct.cluster** %4, align 8
  %6 = load %struct.cluster*, %struct.cluster** %4, align 8
  %7 = getelementptr inbounds %struct.cluster, %struct.cluster* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @tipc_cluster(i32 %8)
  store i64 %9, i64* %5, align 8
  %10 = load %struct.cluster*, %struct.cluster** %4, align 8
  %11 = getelementptr inbounds %struct.cluster, %struct.cluster* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @assert(i32 %12)
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @tipc_max_clusters, align 8
  %16 = icmp ule i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct._zone*, %struct._zone** %3, align 8
  %20 = getelementptr inbounds %struct._zone, %struct._zone* %19, i32 0, i32 0
  %21 = load %struct.cluster**, %struct.cluster*** %20, align 8
  %22 = load i64, i64* %5, align 8
  %23 = getelementptr inbounds %struct.cluster*, %struct.cluster** %21, i64 %22
  %24 = load %struct.cluster*, %struct.cluster** %23, align 8
  %25 = icmp eq %struct.cluster* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.cluster*, %struct.cluster** %4, align 8
  %29 = load %struct._zone*, %struct._zone** %3, align 8
  %30 = getelementptr inbounds %struct._zone, %struct._zone* %29, i32 0, i32 0
  %31 = load %struct.cluster**, %struct.cluster*** %30, align 8
  %32 = load i64, i64* %5, align 8
  %33 = getelementptr inbounds %struct.cluster*, %struct.cluster** %31, i64 %32
  store %struct.cluster* %28, %struct.cluster** %33, align 8
  ret void
}

declare dso_local i64 @tipc_cluster(i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
