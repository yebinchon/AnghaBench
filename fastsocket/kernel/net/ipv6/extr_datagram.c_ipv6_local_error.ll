; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_datagram.c_ipv6_local_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_datagram.c_ipv6_local_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.flowi = type { i32, i32 }
%struct.ipv6_pinfo = type { i32 }
%struct.sock_exterr_skb = type { i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i32, i64, i64, i64, i32 }
%struct.ipv6hdr = type { i32 }
%struct.sk_buff = type { i64 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@SO_EE_ORIGIN_LOCAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipv6_local_error(%struct.sock* %0, i32 %1, %struct.flowi* %2, i32 %3) #0 {
  %5 = alloca %struct.sock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.flowi*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ipv6_pinfo*, align 8
  %10 = alloca %struct.sock_exterr_skb*, align 8
  %11 = alloca %struct.ipv6hdr*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.flowi* %2, %struct.flowi** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.sock*, %struct.sock** %5, align 8
  %14 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %13)
  store %struct.ipv6_pinfo* %14, %struct.ipv6_pinfo** %9, align 8
  %15 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %9, align 8
  %16 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  br label %95

20:                                               ; preds = %4
  %21 = load i32, i32* @GFP_ATOMIC, align 4
  %22 = call %struct.sk_buff* @alloc_skb(i32 4, i32 %21)
  store %struct.sk_buff* %22, %struct.sk_buff** %12, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %24 = icmp ne %struct.sk_buff* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  br label %95

26:                                               ; preds = %20
  %27 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %28 = call i32 @skb_put(%struct.sk_buff* %27, i32 4)
  %29 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %30 = call i32 @skb_reset_network_header(%struct.sk_buff* %29)
  %31 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %32 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %31)
  store %struct.ipv6hdr* %32, %struct.ipv6hdr** %11, align 8
  %33 = load %struct.ipv6hdr*, %struct.ipv6hdr** %11, align 8
  %34 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %33, i32 0, i32 0
  %35 = load %struct.flowi*, %struct.flowi** %7, align 8
  %36 = getelementptr inbounds %struct.flowi, %struct.flowi* %35, i32 0, i32 1
  %37 = call i32 @ipv6_addr_copy(i32* %34, i32* %36)
  %38 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %39 = call %struct.sock_exterr_skb* @SKB_EXT_ERR(%struct.sk_buff* %38)
  store %struct.sock_exterr_skb* %39, %struct.sock_exterr_skb** %10, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %10, align 8
  %42 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 8
  %44 = load i32, i32* @SO_EE_ORIGIN_LOCAL, align 4
  %45 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %10, align 8
  %46 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 6
  store i32 %44, i32* %47, align 8
  %48 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %10, align 8
  %49 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 5
  store i64 0, i64* %50, align 8
  %51 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %10, align 8
  %52 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 4
  store i64 0, i64* %53, align 8
  %54 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %10, align 8
  %55 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 3
  store i64 0, i64* %56, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %10, align 8
  %59 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  store i32 %57, i32* %60, align 8
  %61 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %10, align 8
  %62 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  store i64 0, i64* %63, align 8
  %64 = load %struct.ipv6hdr*, %struct.ipv6hdr** %11, align 8
  %65 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %64, i32 0, i32 0
  %66 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %67 = call i32 @skb_network_header(%struct.sk_buff* %66)
  %68 = sext i32 %67 to i64
  %69 = sub i64 0, %68
  %70 = getelementptr inbounds i32, i32* %65, i64 %69
  %71 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %10, align 8
  %72 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %71, i32 0, i32 1
  store i32* %70, i32** %72, align 8
  %73 = load %struct.flowi*, %struct.flowi** %7, align 8
  %74 = getelementptr inbounds %struct.flowi, %struct.flowi* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %10, align 8
  %77 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %79 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %80 = call i64 @skb_tail_pointer(%struct.sk_buff* %79)
  %81 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %82 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = sub nsw i64 %80, %83
  %85 = call i32 @__skb_pull(%struct.sk_buff* %78, i64 %84)
  %86 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %87 = call i32 @skb_reset_transport_header(%struct.sk_buff* %86)
  %88 = load %struct.sock*, %struct.sock** %5, align 8
  %89 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %90 = call i64 @sock_queue_err_skb(%struct.sock* %88, %struct.sk_buff* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %26
  %93 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %94 = call i32 @kfree_skb(%struct.sk_buff* %93)
  br label %95

95:                                               ; preds = %19, %25, %92, %26
  ret void
}

declare dso_local %struct.ipv6_pinfo* @inet6_sk(%struct.sock*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ipv6_addr_copy(i32*, i32*) #1

declare dso_local %struct.sock_exterr_skb* @SKB_EXT_ERR(%struct.sk_buff*) #1

declare dso_local i32 @skb_network_header(%struct.sk_buff*) #1

declare dso_local i32 @__skb_pull(%struct.sk_buff*, i64) #1

declare dso_local i64 @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local i32 @skb_reset_transport_header(%struct.sk_buff*) #1

declare dso_local i64 @sock_queue_err_skb(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
