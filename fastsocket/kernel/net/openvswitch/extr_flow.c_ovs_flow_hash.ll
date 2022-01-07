; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_flow.c_ovs_flow_hash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_flow.c_ovs_flow_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sw_flow_key = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sw_flow_key*, i32, i32)* @ovs_flow_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovs_flow_hash(%struct.sw_flow_key* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sw_flow_key*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sw_flow_key* %0, %struct.sw_flow_key** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.sw_flow_key*, %struct.sw_flow_key** %4, align 8
  %8 = bitcast %struct.sw_flow_key* %7 to i32*
  %9 = load i32, i32* %5, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %8, i64 %10
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %5, align 4
  %14 = sub nsw i32 %12, %13
  %15 = call i32 @DIV_ROUND_UP(i32 %14, i32 4)
  %16 = call i32 @jhash2(i32* %11, i32 %15, i32 0)
  ret i32 %16
}

declare dso_local i32 @jhash2(i32*, i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
