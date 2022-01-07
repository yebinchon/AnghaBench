; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_datagram.c_ipv6_icmp_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_datagram.c_ipv6_icmp_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ipv6_pinfo = type { i32 }
%struct.icmp6hdr = type { i32, i32 }
%struct.sock_exterr_skb = type { i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i32, i64, i32, i32, i32 }
%struct.ipv6hdr = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@SO_EE_ORIGIN_ICMP6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipv6_icmp_error(%struct.sock* %0, %struct.sk_buff* %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.ipv6_pinfo*, align 8
  %14 = alloca %struct.icmp6hdr*, align 8
  %15 = alloca %struct.sock_exterr_skb*, align 8
  store %struct.sock* %0, %struct.sock** %7, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %16 = load %struct.sock*, %struct.sock** %7, align 8
  %17 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %16)
  store %struct.ipv6_pinfo* %17, %struct.ipv6_pinfo** %13, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %19 = call %struct.icmp6hdr* @icmp6_hdr(%struct.sk_buff* %18)
  store %struct.icmp6hdr* %19, %struct.icmp6hdr** %14, align 8
  %20 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %13, align 8
  %21 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %6
  br label %97

25:                                               ; preds = %6
  %26 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %27 = load i32, i32* @GFP_ATOMIC, align 4
  %28 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %26, i32 %27)
  store %struct.sk_buff* %28, %struct.sk_buff** %8, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %30 = icmp ne %struct.sk_buff* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  br label %97

32:                                               ; preds = %25
  %33 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %34 = call %struct.sock_exterr_skb* @SKB_EXT_ERR(%struct.sk_buff* %33)
  store %struct.sock_exterr_skb* %34, %struct.sock_exterr_skb** %15, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %15, align 8
  %37 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 8
  %39 = load i32, i32* @SO_EE_ORIGIN_ICMP6, align 4
  %40 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %15, align 8
  %41 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 6
  store i32 %39, i32* %42, align 8
  %43 = load %struct.icmp6hdr*, %struct.icmp6hdr** %14, align 8
  %44 = getelementptr inbounds %struct.icmp6hdr, %struct.icmp6hdr* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %15, align 8
  %47 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 5
  store i32 %45, i32* %48, align 4
  %49 = load %struct.icmp6hdr*, %struct.icmp6hdr** %14, align 8
  %50 = getelementptr inbounds %struct.icmp6hdr, %struct.icmp6hdr* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %15, align 8
  %53 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 4
  store i32 %51, i32* %54, align 8
  %55 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %15, align 8
  %56 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 3
  store i64 0, i64* %57, align 8
  %58 = load i32, i32* %11, align 4
  %59 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %15, align 8
  %60 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  store i32 %58, i32* %61, align 8
  %62 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %15, align 8
  %63 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  store i64 0, i64* %64, align 8
  %65 = load %struct.icmp6hdr*, %struct.icmp6hdr** %14, align 8
  %66 = getelementptr inbounds %struct.icmp6hdr, %struct.icmp6hdr* %65, i64 1
  %67 = bitcast %struct.icmp6hdr* %66 to %struct.ipv6hdr*
  %68 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %67, i32 0, i32 0
  %69 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %70 = call i32 @skb_network_header(%struct.sk_buff* %69)
  %71 = sext i32 %70 to i64
  %72 = sub i64 0, %71
  %73 = getelementptr inbounds i32, i32* %68, i64 %72
  %74 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %15, align 8
  %75 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %74, i32 0, i32 1
  store i32* %73, i32** %75, align 8
  %76 = load i32, i32* %10, align 4
  %77 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %15, align 8
  %78 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %80 = load i32*, i32** %12, align 8
  %81 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %82 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = sub i64 0, %84
  %86 = getelementptr inbounds i32, i32* %80, i64 %85
  %87 = call i32 @__skb_pull(%struct.sk_buff* %79, i32* %86)
  %88 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %89 = call i32 @skb_reset_transport_header(%struct.sk_buff* %88)
  %90 = load %struct.sock*, %struct.sock** %7, align 8
  %91 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %92 = call i64 @sock_queue_err_skb(%struct.sock* %90, %struct.sk_buff* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %32
  %95 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %96 = call i32 @kfree_skb(%struct.sk_buff* %95)
  br label %97

97:                                               ; preds = %24, %31, %94, %32
  ret void
}

declare dso_local %struct.ipv6_pinfo* @inet6_sk(%struct.sock*) #1

declare dso_local %struct.icmp6hdr* @icmp6_hdr(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local %struct.sock_exterr_skb* @SKB_EXT_ERR(%struct.sk_buff*) #1

declare dso_local i32 @skb_network_header(%struct.sk_buff*) #1

declare dso_local i32 @__skb_pull(%struct.sk_buff*, i32*) #1

declare dso_local i32 @skb_reset_transport_header(%struct.sk_buff*) #1

declare dso_local i64 @sock_queue_err_skb(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
