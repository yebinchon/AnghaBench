; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_tunnel.c_ip6_tnl_dst_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_tunnel.c_ip6_tnl_dst_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_entry = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32* (%struct.dst_entry*, i32)* }
%struct.ip6_tnl = type { %struct.dst_entry*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dst_entry* (%struct.ip6_tnl*)* @ip6_tnl_dst_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dst_entry* @ip6_tnl_dst_check(%struct.ip6_tnl* %0) #0 {
  %2 = alloca %struct.dst_entry*, align 8
  %3 = alloca %struct.ip6_tnl*, align 8
  %4 = alloca %struct.dst_entry*, align 8
  store %struct.ip6_tnl* %0, %struct.ip6_tnl** %3, align 8
  %5 = load %struct.ip6_tnl*, %struct.ip6_tnl** %3, align 8
  %6 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %5, i32 0, i32 0
  %7 = load %struct.dst_entry*, %struct.dst_entry** %6, align 8
  store %struct.dst_entry* %7, %struct.dst_entry** %4, align 8
  %8 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %9 = icmp ne %struct.dst_entry* %8, null
  br i1 %9, label %10, label %32

10:                                               ; preds = %1
  %11 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %12 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %32

15:                                               ; preds = %10
  %16 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %17 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32* (%struct.dst_entry*, i32)*, i32* (%struct.dst_entry*, i32)** %19, align 8
  %21 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %22 = load %struct.ip6_tnl*, %struct.ip6_tnl** %3, align 8
  %23 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32* %20(%struct.dst_entry* %21, i32 %24)
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %15
  %28 = load %struct.ip6_tnl*, %struct.ip6_tnl** %3, align 8
  %29 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %28, i32 0, i32 0
  store %struct.dst_entry* null, %struct.dst_entry** %29, align 8
  %30 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %31 = call i32 @dst_release(%struct.dst_entry* %30)
  store %struct.dst_entry* null, %struct.dst_entry** %2, align 8
  br label %34

32:                                               ; preds = %15, %10, %1
  %33 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  store %struct.dst_entry* %33, %struct.dst_entry** %2, align 8
  br label %34

34:                                               ; preds = %32, %27
  %35 = load %struct.dst_entry*, %struct.dst_entry** %2, align 8
  ret %struct.dst_entry* %35
}

declare dso_local i32 @dst_release(%struct.dst_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
