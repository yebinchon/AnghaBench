; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_tunnel_core.c_iptunnel_pull_header.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_tunnel_core.c_iptunnel_pull_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64, i64, i64 }
%struct.ethhdr = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@ETH_P_TEB = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@ETH_P_802_2 = common dso_local global i32 0, align 4
@PACKET_HOST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iptunnel_pull_header(%struct.sk_buff* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.ethhdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @pskb_may_pull(%struct.sk_buff* %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %83

20:                                               ; preds = %3
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @skb_pull_rcsum(%struct.sk_buff* %21, i32 %22)
  %24 = load i64, i64* %7, align 8
  %25 = load i32, i32* @ETH_P_TEB, align 4
  %26 = call i64 @htons(i32 %25)
  %27 = icmp eq i64 %24, %26
  br i1 %27, label %28, label %65

28:                                               ; preds = %20
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.ethhdr*
  store %struct.ethhdr* %32, %struct.ethhdr** %8, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = load i32, i32* @ETH_HLEN, align 4
  %35 = call i32 @pskb_may_pull(%struct.sk_buff* %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %28
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %83

44:                                               ; preds = %28
  %45 = load %struct.ethhdr*, %struct.ethhdr** %8, align 8
  %46 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @ntohs(i64 %47)
  %49 = icmp sge i32 %48, 1536
  %50 = zext i1 %49 to i32
  %51 = call i64 @likely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %44
  %54 = load %struct.ethhdr*, %struct.ethhdr** %8, align 8
  %55 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 2
  store i64 %56, i64* %58, align 8
  br label %64

59:                                               ; preds = %44
  %60 = load i32, i32* @ETH_P_802_2, align 4
  %61 = call i64 @htons(i32 %60)
  %62 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %63 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %62, i32 0, i32 2
  store i64 %61, i64* %63, align 8
  br label %64

64:                                               ; preds = %59, %53
  br label %69

65:                                               ; preds = %20
  %66 = load i64, i64* %7, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %68 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %67, i32 0, i32 2
  store i64 %66, i64* %68, align 8
  br label %69

69:                                               ; preds = %65, %64
  %70 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %71 = call i32 @nf_reset(%struct.sk_buff* %70)
  %72 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %73 = call i32 @secpath_reset(%struct.sk_buff* %72)
  %74 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %75 = call i32 @skb_dst_drop(%struct.sk_buff* %74)
  %76 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %77 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %76, i32 0, i32 1
  store i64 0, i64* %77, align 8
  %78 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %79 = call i32 @skb_set_queue_mapping(%struct.sk_buff* %78, i32 0)
  %80 = load i32, i32* @PACKET_HOST, align 4
  %81 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %82 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %69, %41, %17
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_pull_rcsum(%struct.sk_buff*, i32) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @ntohs(i64) #1

declare dso_local i32 @nf_reset(%struct.sk_buff*) #1

declare dso_local i32 @secpath_reset(%struct.sk_buff*) #1

declare dso_local i32 @skb_dst_drop(%struct.sk_buff*) #1

declare dso_local i32 @skb_set_queue_mapping(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
