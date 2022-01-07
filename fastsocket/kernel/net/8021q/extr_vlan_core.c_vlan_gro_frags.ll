; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/8021q/extr_vlan_core.c_vlan_gro_frags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/8021q/extr_vlan_core.c_vlan_gro_frags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.napi_struct = type { i32 }
%struct.vlan_group = type { i32 }

@GRO_DROP = common dso_local global i64 0, align 8
@NET_RX_DROP = common dso_local global i32 0, align 4
@NET_RX_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlan_gro_frags(%struct.napi_struct* %0, %struct.vlan_group* %1, i32 %2) #0 {
  %4 = alloca %struct.napi_struct*, align 8
  %5 = alloca %struct.vlan_group*, align 8
  %6 = alloca i32, align 4
  store %struct.napi_struct* %0, %struct.napi_struct** %4, align 8
  store %struct.vlan_group* %1, %struct.vlan_group** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.napi_struct*, %struct.napi_struct** %4, align 8
  %8 = load %struct.vlan_group*, %struct.vlan_group** %5, align 8
  %9 = load i32, i32* %6, align 4
  %10 = call i64 @__vlan_gro_frags_gr(%struct.napi_struct* %7, %struct.vlan_group* %8, i32 %9)
  %11 = load i64, i64* @GRO_DROP, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @NET_RX_DROP, align 4
  br label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @NET_RX_SUCCESS, align 4
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ]
  ret i32 %18
}

declare dso_local i64 @__vlan_gro_frags_gr(%struct.napi_struct*, %struct.vlan_group*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
