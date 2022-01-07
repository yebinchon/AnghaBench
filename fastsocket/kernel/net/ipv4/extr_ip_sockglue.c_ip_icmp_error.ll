; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_sockglue.c_ip_icmp_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_sockglue.c_ip_icmp_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.inet_sock = type { i32 }
%struct.sock_exterr_skb = type { i32, i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64, i32, i64, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.iphdr = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@SO_EE_ORIGIN_ICMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ip_icmp_error(%struct.sock* %0, %struct.sk_buff* %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.inet_sock*, align 8
  %14 = alloca %struct.sock_exterr_skb*, align 8
  store %struct.sock* %0, %struct.sock** %7, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %15 = load %struct.sock*, %struct.sock** %7, align 8
  %16 = call %struct.inet_sock* @inet_sk(%struct.sock* %15)
  store %struct.inet_sock* %16, %struct.inet_sock** %13, align 8
  %17 = load %struct.inet_sock*, %struct.inet_sock** %13, align 8
  %18 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %6
  br label %101

22:                                               ; preds = %6
  %23 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %24 = load i32, i32* @GFP_ATOMIC, align 4
  %25 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %23, i32 %24)
  store %struct.sk_buff* %25, %struct.sk_buff** %8, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %27 = icmp ne %struct.sk_buff* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %22
  br label %101

29:                                               ; preds = %22
  %30 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %31 = call %struct.sock_exterr_skb* @SKB_EXT_ERR(%struct.sk_buff* %30)
  store %struct.sock_exterr_skb* %31, %struct.sock_exterr_skb** %14, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %14, align 8
  %34 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 8
  %36 = load i32, i32* @SO_EE_ORIGIN_ICMP, align 4
  %37 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %14, align 8
  %38 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 6
  store i32 %36, i32* %39, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %41 = call %struct.TYPE_4__* @icmp_hdr(%struct.sk_buff* %40)
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %14, align 8
  %45 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 5
  store i32 %43, i32* %46, align 4
  %47 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %48 = call %struct.TYPE_4__* @icmp_hdr(%struct.sk_buff* %47)
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %14, align 8
  %52 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 4
  store i32 %50, i32* %53, align 8
  %54 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %14, align 8
  %55 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 3
  store i64 0, i64* %56, align 8
  %57 = load i32, i32* %11, align 4
  %58 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %14, align 8
  %59 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 2
  store i32 %57, i32* %60, align 8
  %61 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %14, align 8
  %62 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  store i64 0, i64* %63, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %65 = call %struct.TYPE_4__* @icmp_hdr(%struct.sk_buff* %64)
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i64 1
  %67 = bitcast %struct.TYPE_4__* %66 to %struct.iphdr*
  %68 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %67, i32 0, i32 0
  %69 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %70 = call i32 @skb_network_header(%struct.sk_buff* %69)
  %71 = sext i32 %70 to i64
  %72 = sub i64 0, %71
  %73 = getelementptr inbounds i32, i32* %68, i64 %72
  %74 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %14, align 8
  %75 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %74, i32 0, i32 1
  store i32* %73, i32** %75, align 8
  %76 = load i32, i32* %10, align 4
  %77 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %14, align 8
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
  %87 = call i32* @skb_pull(%struct.sk_buff* %79, i32* %86)
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %98

89:                                               ; preds = %29
  %90 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %91 = call i32 @skb_reset_transport_header(%struct.sk_buff* %90)
  %92 = load %struct.sock*, %struct.sock** %7, align 8
  %93 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %94 = call i64 @sock_queue_err_skb(%struct.sock* %92, %struct.sk_buff* %93)
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %89
  br label %101

97:                                               ; preds = %89
  br label %98

98:                                               ; preds = %97, %29
  %99 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %100 = call i32 @kfree_skb(%struct.sk_buff* %99)
  br label %101

101:                                              ; preds = %98, %96, %28, %21
  ret void
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local %struct.sock_exterr_skb* @SKB_EXT_ERR(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_4__* @icmp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @skb_network_header(%struct.sk_buff*) #1

declare dso_local i32* @skb_pull(%struct.sk_buff*, i32*) #1

declare dso_local i32 @skb_reset_transport_header(%struct.sk_buff*) #1

declare dso_local i64 @sock_queue_err_skb(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
