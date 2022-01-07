; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_flow.c_ovs_flow_used.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_flow.c_ovs_flow_used.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sw_flow = type { i32, i32, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.sk_buff = type { i64 }

@ETH_P_IP = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i64 0, align 8
@TCP_FLAGS_OFFSET = common dso_local global i32 0, align 4
@TCP_FLAG_MASK = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ovs_flow_used(%struct.sw_flow* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sw_flow*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.sw_flow* %0, %struct.sw_flow** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.sw_flow*, %struct.sw_flow** %3, align 8
  %8 = getelementptr inbounds %struct.sw_flow, %struct.sw_flow* %7, i32 0, i32 5
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i32, i32* @ETH_P_IP, align 4
  %13 = call i64 @htons(i32 %12)
  %14 = icmp eq i64 %11, %13
  br i1 %14, label %24, label %15

15:                                               ; preds = %2
  %16 = load %struct.sw_flow*, %struct.sw_flow** %3, align 8
  %17 = getelementptr inbounds %struct.sw_flow, %struct.sw_flow* %16, i32 0, i32 5
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* @ETH_P_IPV6, align 4
  %22 = call i64 @htons(i32 %21)
  %23 = icmp eq i64 %20, %22
  br i1 %23, label %24, label %54

24:                                               ; preds = %15, %2
  %25 = load %struct.sw_flow*, %struct.sw_flow** %3, align 8
  %26 = getelementptr inbounds %struct.sw_flow, %struct.sw_flow* %25, i32 0, i32 5
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @IPPROTO_TCP, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %54

32:                                               ; preds = %24
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = call i64 @skb_transport_offset(%struct.sk_buff* %36)
  %38 = add i64 %37, 4
  %39 = icmp uge i64 %35, %38
  %40 = zext i1 %39 to i32
  %41 = call i64 @likely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %32
  %44 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %45 = call i64 @tcp_hdr(%struct.sk_buff* %44)
  %46 = inttoptr i64 %45 to i32*
  store i32* %46, i32** %6, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* @TCP_FLAGS_OFFSET, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @TCP_FLAG_MASK, align 4
  %53 = and i32 %51, %52
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %43, %32, %24, %15
  %55 = load %struct.sw_flow*, %struct.sw_flow** %3, align 8
  %56 = getelementptr inbounds %struct.sw_flow, %struct.sw_flow* %55, i32 0, i32 1
  %57 = call i32 @spin_lock(i32* %56)
  %58 = load i32, i32* @jiffies, align 4
  %59 = load %struct.sw_flow*, %struct.sw_flow** %3, align 8
  %60 = getelementptr inbounds %struct.sw_flow, %struct.sw_flow* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 8
  %61 = load %struct.sw_flow*, %struct.sw_flow** %3, align 8
  %62 = getelementptr inbounds %struct.sw_flow, %struct.sw_flow* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  %65 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %66 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.sw_flow*, %struct.sw_flow** %3, align 8
  %69 = getelementptr inbounds %struct.sw_flow, %struct.sw_flow* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %71, %67
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %69, align 8
  %74 = load i32, i32* %5, align 4
  %75 = load %struct.sw_flow*, %struct.sw_flow** %3, align 8
  %76 = getelementptr inbounds %struct.sw_flow, %struct.sw_flow* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 8
  %79 = load %struct.sw_flow*, %struct.sw_flow** %3, align 8
  %80 = getelementptr inbounds %struct.sw_flow, %struct.sw_flow* %79, i32 0, i32 1
  %81 = call i32 @spin_unlock(i32* %80)
  ret void
}

declare dso_local i64 @htons(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local i64 @tcp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
