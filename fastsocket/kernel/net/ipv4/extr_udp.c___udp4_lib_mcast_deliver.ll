; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_udp.c___udp4_lib_mcast_deliver.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_udp.c___udp4_lib_mcast_deliver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sk_buff = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.udphdr = type { i32, i32 }
%struct.udp_table = type { %struct.udp_hslot* }
%struct.udp_hslot = type { i32, i32 }
%struct.sock = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sk_buff*, %struct.udphdr*, i32, i32, %struct.udp_table*)* @__udp4_lib_mcast_deliver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__udp4_lib_mcast_deliver(%struct.net* %0, %struct.sk_buff* %1, %struct.udphdr* %2, i32 %3, i32 %4, %struct.udp_table* %5) #0 {
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.udphdr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.udp_table*, align 8
  %13 = alloca %struct.sock*, align 8
  %14 = alloca %struct.udp_hslot*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.sock*, align 8
  %17 = alloca %struct.sk_buff*, align 8
  %18 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %7, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store %struct.udphdr* %2, %struct.udphdr** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.udp_table* %5, %struct.udp_table** %12, align 8
  %19 = load %struct.udp_table*, %struct.udp_table** %12, align 8
  %20 = getelementptr inbounds %struct.udp_table, %struct.udp_table* %19, i32 0, i32 0
  %21 = load %struct.udp_hslot*, %struct.udp_hslot** %20, align 8
  %22 = load %struct.net*, %struct.net** %7, align 8
  %23 = load %struct.udphdr*, %struct.udphdr** %9, align 8
  %24 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ntohs(i32 %25)
  %27 = call i64 @udp_hashfn(%struct.net* %22, i32 %26)
  %28 = getelementptr inbounds %struct.udp_hslot, %struct.udp_hslot* %21, i64 %27
  store %struct.udp_hslot* %28, %struct.udp_hslot** %14, align 8
  %29 = load %struct.udp_hslot*, %struct.udp_hslot** %14, align 8
  %30 = getelementptr inbounds %struct.udp_hslot, %struct.udp_hslot* %29, i32 0, i32 0
  %31 = call i32 @spin_lock(i32* %30)
  %32 = load %struct.udp_hslot*, %struct.udp_hslot** %14, align 8
  %33 = getelementptr inbounds %struct.udp_hslot, %struct.udp_hslot* %32, i32 0, i32 1
  %34 = call %struct.sock* @sk_nulls_head(i32* %33)
  store %struct.sock* %34, %struct.sock** %13, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %15, align 4
  %40 = load %struct.net*, %struct.net** %7, align 8
  %41 = load %struct.sock*, %struct.sock** %13, align 8
  %42 = load %struct.udphdr*, %struct.udphdr** %9, align 8
  %43 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load %struct.udphdr*, %struct.udphdr** %9, align 8
  %47 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %15, align 4
  %51 = call %struct.sock* @udp_v4_mcast_next(%struct.net* %40, %struct.sock* %41, i32 %44, i32 %45, i32 %48, i32 %49, i32 %50)
  store %struct.sock* %51, %struct.sock** %13, align 8
  %52 = load %struct.sock*, %struct.sock** %13, align 8
  %53 = icmp ne %struct.sock* %52, null
  br i1 %53, label %54, label %95

54:                                               ; preds = %6
  store %struct.sock* null, %struct.sock** %16, align 8
  br label %55

55:                                               ; preds = %91, %54
  %56 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  store %struct.sk_buff* %56, %struct.sk_buff** %17, align 8
  %57 = load %struct.net*, %struct.net** %7, align 8
  %58 = load %struct.sock*, %struct.sock** %13, align 8
  %59 = call %struct.sock* @sk_nulls_next(%struct.sock* %58)
  %60 = load %struct.udphdr*, %struct.udphdr** %9, align 8
  %61 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load %struct.udphdr*, %struct.udphdr** %9, align 8
  %65 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %15, align 4
  %69 = call %struct.sock* @udp_v4_mcast_next(%struct.net* %57, %struct.sock* %59, i32 %62, i32 %63, i32 %66, i32 %67, i32 %68)
  store %struct.sock* %69, %struct.sock** %16, align 8
  %70 = load %struct.sock*, %struct.sock** %16, align 8
  %71 = icmp ne %struct.sock* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %55
  %73 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %74 = load i32, i32* @GFP_ATOMIC, align 4
  %75 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %73, i32 %74)
  store %struct.sk_buff* %75, %struct.sk_buff** %17, align 8
  br label %76

76:                                               ; preds = %72, %55
  %77 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %78 = icmp ne %struct.sk_buff* %77, null
  br i1 %78, label %79, label %89

79:                                               ; preds = %76
  %80 = load %struct.sock*, %struct.sock** %13, align 8
  %81 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %82 = call i32 @udp_queue_rcv_skb(%struct.sock* %80, %struct.sk_buff* %81)
  store i32 %82, i32* %18, align 4
  %83 = load i32, i32* %18, align 4
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %79
  %86 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %87 = call i32 @kfree_skb(%struct.sk_buff* %86)
  br label %88

88:                                               ; preds = %85, %79
  br label %89

89:                                               ; preds = %88, %76
  %90 = load %struct.sock*, %struct.sock** %16, align 8
  store %struct.sock* %90, %struct.sock** %13, align 8
  br label %91

91:                                               ; preds = %89
  %92 = load %struct.sock*, %struct.sock** %16, align 8
  %93 = icmp ne %struct.sock* %92, null
  br i1 %93, label %55, label %94

94:                                               ; preds = %91
  br label %98

95:                                               ; preds = %6
  %96 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %97 = call i32 @consume_skb(%struct.sk_buff* %96)
  br label %98

98:                                               ; preds = %95, %94
  %99 = load %struct.udp_hslot*, %struct.udp_hslot** %14, align 8
  %100 = getelementptr inbounds %struct.udp_hslot, %struct.udp_hslot* %99, i32 0, i32 0
  %101 = call i32 @spin_unlock(i32* %100)
  ret i32 0
}

declare dso_local i64 @udp_hashfn(%struct.net*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.sock* @sk_nulls_head(i32*) #1

declare dso_local %struct.sock* @udp_v4_mcast_next(%struct.net*, %struct.sock*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.sock* @sk_nulls_next(%struct.sock*) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @udp_queue_rcv_skb(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
