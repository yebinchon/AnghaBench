; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_fragment.c_ip_defrag.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_fragment.c_ip_defrag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.ipq = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.net = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_8__ = type { i64 }

@IPSTATS_MIB_REASMREQDS = common dso_local global i32 0, align 4
@IPSTATS_MIB_REASMFAILS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip_defrag(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ipq*, align 8
  %7 = alloca %struct.net*, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call %struct.net* @dev_net(i64 %16)
  br label %24

18:                                               ; preds = %2
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = call %struct.TYPE_8__* @skb_dst(%struct.sk_buff* %19)
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call %struct.net* @dev_net(i64 %22)
  br label %24

24:                                               ; preds = %18, %13
  %25 = phi %struct.net* [ %17, %13 ], [ %23, %18 ]
  store %struct.net* %25, %struct.net** %7, align 8
  %26 = load %struct.net*, %struct.net** %7, align 8
  %27 = load i32, i32* @IPSTATS_MIB_REASMREQDS, align 4
  %28 = call i32 @IP_INC_STATS_BH(%struct.net* %26, i32 %27)
  %29 = load %struct.net*, %struct.net** %7, align 8
  %30 = getelementptr inbounds %struct.net, %struct.net* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = call i64 @atomic_read(i32* %32)
  %34 = load %struct.net*, %struct.net** %7, align 8
  %35 = getelementptr inbounds %struct.net, %struct.net* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sgt i64 %33, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %24
  %41 = load %struct.net*, %struct.net** %7, align 8
  %42 = call i32 @ip_evictor(%struct.net* %41)
  br label %43

43:                                               ; preds = %40, %24
  %44 = load %struct.net*, %struct.net** %7, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %46 = call i32 @ip_hdr(%struct.sk_buff* %45)
  %47 = load i32, i32* %5, align 4
  %48 = call %struct.ipq* @ip_find(%struct.net* %44, i32 %46, i32 %47)
  store %struct.ipq* %48, %struct.ipq** %6, align 8
  %49 = icmp ne %struct.ipq* %48, null
  br i1 %49, label %50, label %65

50:                                               ; preds = %43
  %51 = load %struct.ipq*, %struct.ipq** %6, align 8
  %52 = getelementptr inbounds %struct.ipq, %struct.ipq* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = call i32 @spin_lock(i32* %53)
  %55 = load %struct.ipq*, %struct.ipq** %6, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %57 = call i32 @ip_frag_queue(%struct.ipq* %55, %struct.sk_buff* %56)
  store i32 %57, i32* %8, align 4
  %58 = load %struct.ipq*, %struct.ipq** %6, align 8
  %59 = getelementptr inbounds %struct.ipq, %struct.ipq* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = call i32 @spin_unlock(i32* %60)
  %62 = load %struct.ipq*, %struct.ipq** %6, align 8
  %63 = call i32 @ipq_put(%struct.ipq* %62)
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %3, align 4
  br label %73

65:                                               ; preds = %43
  %66 = load %struct.net*, %struct.net** %7, align 8
  %67 = load i32, i32* @IPSTATS_MIB_REASMFAILS, align 4
  %68 = call i32 @IP_INC_STATS_BH(%struct.net* %66, i32 %67)
  %69 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %70 = call i32 @kfree_skb(%struct.sk_buff* %69)
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %65, %50
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local %struct.net* @dev_net(i64) #1

declare dso_local %struct.TYPE_8__* @skb_dst(%struct.sk_buff*) #1

declare dso_local i32 @IP_INC_STATS_BH(%struct.net*, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @ip_evictor(%struct.net*) #1

declare dso_local %struct.ipq* @ip_find(%struct.net*, i32, i32) #1

declare dso_local i32 @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ip_frag_queue(%struct.ipq*, %struct.sk_buff*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ipq_put(%struct.ipq*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
