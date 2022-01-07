; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_xfrm6_output.c_xfrm6_prepare_output.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_xfrm6_output.c_xfrm6_prepare_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { {}* }
%struct.sk_buff = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

@ETH_P_IPV6 = common dso_local global i32 0, align 4
@IP6SKB_XFRM_TRANSFORMED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfrm6_prepare_output(%struct.xfrm_state* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfrm_state*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  store %struct.xfrm_state* %0, %struct.xfrm_state** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %7 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %9 = call i32 @xfrm_inner_extract_output(%struct.xfrm_state* %7, %struct.sk_buff* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %33

14:                                               ; preds = %2
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = call %struct.TYPE_5__* @IP6CB(%struct.sk_buff* %15)
  %17 = call i32 @memset(%struct.TYPE_5__* %16, i32 0, i32 4)
  %18 = load i32, i32* @ETH_P_IPV6, align 4
  %19 = call i32 @htons(i32 %18)
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  store i32 1, i32* %23, align 4
  %24 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %25 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = bitcast {}** %27 to i32 (%struct.xfrm_state*, %struct.sk_buff*)**
  %29 = load i32 (%struct.xfrm_state*, %struct.sk_buff*)*, i32 (%struct.xfrm_state*, %struct.sk_buff*)** %28, align 8
  %30 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = call i32 %29(%struct.xfrm_state* %30, %struct.sk_buff* %31)
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %14, %12
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @xfrm_inner_extract_output(%struct.xfrm_state*, %struct.sk_buff*) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local %struct.TYPE_5__* @IP6CB(%struct.sk_buff*) #1

declare dso_local i32 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
