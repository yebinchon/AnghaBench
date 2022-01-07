; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_arp.c_arp_bind_neighbour.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_arp.c_arp_bind_neighbour.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_entry = type { %struct.neighbour*, %struct.net_device* }
%struct.neighbour = type { i32 }
%struct.net_device = type { i32, i64 }
%struct.rtable = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@IFF_LOOPBACK = common dso_local global i32 0, align 4
@IFF_POINTOPOINT = common dso_local global i32 0, align 4
@arp_tbl = common dso_local global i32 0, align 4
@ARPHRD_ATM = common dso_local global i64 0, align 8
@clip_tbl_hook = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arp_bind_neighbour(%struct.dst_entry* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dst_entry*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.neighbour*, align 8
  %6 = alloca i64, align 8
  store %struct.dst_entry* %0, %struct.dst_entry** %3, align 8
  %7 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %8 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %7, i32 0, i32 1
  %9 = load %struct.net_device*, %struct.net_device** %8, align 8
  store %struct.net_device* %9, %struct.net_device** %4, align 8
  %10 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %11 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %10, i32 0, i32 0
  %12 = load %struct.neighbour*, %struct.neighbour** %11, align 8
  store %struct.neighbour* %12, %struct.neighbour** %5, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = icmp eq %struct.net_device* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %49

18:                                               ; preds = %1
  %19 = load %struct.neighbour*, %struct.neighbour** %5, align 8
  %20 = icmp eq %struct.neighbour* %19, null
  br i1 %20, label %21, label %48

21:                                               ; preds = %18
  %22 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %23 = bitcast %struct.dst_entry* %22 to %struct.rtable*
  %24 = getelementptr inbounds %struct.rtable, %struct.rtable* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %6, align 8
  %26 = load %struct.net_device*, %struct.net_device** %4, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @IFF_LOOPBACK, align 4
  %30 = load i32, i32* @IFF_POINTOPOINT, align 4
  %31 = or i32 %29, %30
  %32 = and i32 %28, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %21
  store i64 0, i64* %6, align 8
  br label %35

35:                                               ; preds = %34, %21
  %36 = load %struct.net_device*, %struct.net_device** %4, align 8
  %37 = call %struct.neighbour* @__neigh_lookup_errno(i32* @arp_tbl, i64* %6, %struct.net_device* %36)
  store %struct.neighbour* %37, %struct.neighbour** %5, align 8
  %38 = load %struct.neighbour*, %struct.neighbour** %5, align 8
  %39 = call i64 @IS_ERR(%struct.neighbour* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load %struct.neighbour*, %struct.neighbour** %5, align 8
  %43 = call i32 @PTR_ERR(%struct.neighbour* %42)
  store i32 %43, i32* %2, align 4
  br label %49

44:                                               ; preds = %35
  %45 = load %struct.neighbour*, %struct.neighbour** %5, align 8
  %46 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %47 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %46, i32 0, i32 0
  store %struct.neighbour* %45, %struct.neighbour** %47, align 8
  br label %48

48:                                               ; preds = %44, %18
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %41, %15
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.neighbour* @__neigh_lookup_errno(i32*, i64*, %struct.net_device*) #1

declare dso_local i64 @IS_ERR(%struct.neighbour*) #1

declare dso_local i32 @PTR_ERR(%struct.neighbour*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
