; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_xfrm6_policy.c_xfrm6_update_pmtu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_xfrm6_policy.c_xfrm6_update_pmtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_entry = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dst_entry*, i32)* }
%struct.xfrm_dst = type { %struct.dst_entry* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dst_entry*, i32)* @xfrm6_update_pmtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfrm6_update_pmtu(%struct.dst_entry* %0, i32 %1) #0 {
  %3 = alloca %struct.dst_entry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfrm_dst*, align 8
  %6 = alloca %struct.dst_entry*, align 8
  store %struct.dst_entry* %0, %struct.dst_entry** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %8 = bitcast %struct.dst_entry* %7 to %struct.xfrm_dst*
  store %struct.xfrm_dst* %8, %struct.xfrm_dst** %5, align 8
  %9 = load %struct.xfrm_dst*, %struct.xfrm_dst** %5, align 8
  %10 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %9, i32 0, i32 0
  %11 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  store %struct.dst_entry* %11, %struct.dst_entry** %6, align 8
  %12 = load %struct.dst_entry*, %struct.dst_entry** %6, align 8
  %13 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (%struct.dst_entry*, i32)*, i32 (%struct.dst_entry*, i32)** %15, align 8
  %17 = load %struct.dst_entry*, %struct.dst_entry** %6, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 %16(%struct.dst_entry* %17, i32 %18)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
