; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_lro.c_lro_receive_frags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_lro.c_lro_receive_frags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_lro_mgr = type { i32 }
%struct.skb_frag_struct = type { i32 }
%struct.sk_buff = type { i32 }

@LRO_F_NAPI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lro_receive_frags(%struct.net_lro_mgr* %0, %struct.skb_frag_struct* %1, i32 %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.net_lro_mgr*, align 8
  %8 = alloca %struct.skb_frag_struct*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.sk_buff*, align 8
  store %struct.net_lro_mgr* %0, %struct.net_lro_mgr** %7, align 8
  store %struct.skb_frag_struct* %1, %struct.skb_frag_struct** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %14 = load %struct.net_lro_mgr*, %struct.net_lro_mgr** %7, align 8
  %15 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %8, align 8
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %10, align 4
  %18 = load i8*, i8** %11, align 8
  %19 = load i32, i32* %12, align 4
  %20 = call %struct.sk_buff* @__lro_proc_segment(%struct.net_lro_mgr* %14, %struct.skb_frag_struct* %15, i32 %16, i32 %17, i32* null, i32 0, i8* %18, i32 %19)
  store %struct.sk_buff* %20, %struct.sk_buff** %13, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %22 = icmp ne %struct.sk_buff* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %6
  br label %37

24:                                               ; preds = %6
  %25 = load %struct.net_lro_mgr*, %struct.net_lro_mgr** %7, align 8
  %26 = getelementptr inbounds %struct.net_lro_mgr, %struct.net_lro_mgr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @LRO_F_NAPI, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %33 = call i32 @netif_receive_skb(%struct.sk_buff* %32)
  br label %37

34:                                               ; preds = %24
  %35 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %36 = call i32 @netif_rx(%struct.sk_buff* %35)
  br label %37

37:                                               ; preds = %23, %34, %31
  ret void
}

declare dso_local %struct.sk_buff* @__lro_proc_segment(%struct.net_lro_mgr*, %struct.skb_frag_struct*, i32, i32, i32*, i32, i8*, i32) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
