; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_netfilter.c_nf_bridge_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_netfilter.c_nf_bridge_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_bridge_info = type { i32 }
%struct.sk_buff = type { %struct.nf_bridge_info* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nf_bridge_info* (%struct.sk_buff*)* @nf_bridge_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nf_bridge_info* @nf_bridge_alloc(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %3 = load i32, i32* @GFP_ATOMIC, align 4
  %4 = call %struct.nf_bridge_info* @kzalloc(i32 4, i32 %3)
  %5 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %6 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %5, i32 0, i32 0
  store %struct.nf_bridge_info* %4, %struct.nf_bridge_info** %6, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 0
  %9 = load %struct.nf_bridge_info*, %struct.nf_bridge_info** %8, align 8
  %10 = call i64 @likely(%struct.nf_bridge_info* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load %struct.nf_bridge_info*, %struct.nf_bridge_info** %14, align 8
  %16 = getelementptr inbounds %struct.nf_bridge_info, %struct.nf_bridge_info* %15, i32 0, i32 0
  %17 = call i32 @atomic_set(i32* %16, i32 1)
  br label %18

18:                                               ; preds = %12, %1
  %19 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load %struct.nf_bridge_info*, %struct.nf_bridge_info** %20, align 8
  ret %struct.nf_bridge_info* %21
}

declare dso_local %struct.nf_bridge_info* @kzalloc(i32, i32) #1

declare dso_local i64 @likely(%struct.nf_bridge_info*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
