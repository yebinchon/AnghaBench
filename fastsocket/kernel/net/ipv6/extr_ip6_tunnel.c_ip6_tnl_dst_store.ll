; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_tunnel.c_ip6_tnl_dst_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_tunnel.c_ip6_tnl_dst_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip6_tnl = type { %struct.dst_entry*, i32 }
%struct.dst_entry = type { i32 }
%struct.rt6_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip6_tnl*, %struct.dst_entry*)* @ip6_tnl_dst_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip6_tnl_dst_store(%struct.ip6_tnl* %0, %struct.dst_entry* %1) #0 {
  %3 = alloca %struct.ip6_tnl*, align 8
  %4 = alloca %struct.dst_entry*, align 8
  %5 = alloca %struct.rt6_info*, align 8
  store %struct.ip6_tnl* %0, %struct.ip6_tnl** %3, align 8
  store %struct.dst_entry* %1, %struct.dst_entry** %4, align 8
  %6 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %7 = bitcast %struct.dst_entry* %6 to %struct.rt6_info*
  store %struct.rt6_info* %7, %struct.rt6_info** %5, align 8
  %8 = load %struct.rt6_info*, %struct.rt6_info** %5, align 8
  %9 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = icmp ne %struct.TYPE_2__* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.rt6_info*, %struct.rt6_info** %5, align 8
  %14 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  br label %19

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %18, %12
  %20 = phi i32 [ %17, %12 ], [ 0, %18 ]
  %21 = load %struct.ip6_tnl*, %struct.ip6_tnl** %3, align 8
  %22 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  %23 = load %struct.ip6_tnl*, %struct.ip6_tnl** %3, align 8
  %24 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %23, i32 0, i32 0
  %25 = load %struct.dst_entry*, %struct.dst_entry** %24, align 8
  %26 = call i32 @dst_release(%struct.dst_entry* %25)
  %27 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %28 = load %struct.ip6_tnl*, %struct.ip6_tnl** %3, align 8
  %29 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %28, i32 0, i32 0
  store %struct.dst_entry* %27, %struct.dst_entry** %29, align 8
  ret void
}

declare dso_local i32 @dst_release(%struct.dst_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
