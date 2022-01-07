; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_output.c_dccp_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_output.c_dccp_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.inet_connection_sock = type { i32 }
%struct.TYPE_4__ = type { i32 }

@EPROTO = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@DCCP_PKT_REQUEST = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@DCCP_MIB_ACTIVEOPENS = common dso_local global i32 0, align 4
@ICSK_TIME_RETRANS = common dso_local global i32 0, align 4
@DCCP_RTO_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dccp_connect(%struct.sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.inet_connection_sock*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  %6 = load %struct.sock*, %struct.sock** %3, align 8
  %7 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %6)
  store %struct.inet_connection_sock* %7, %struct.inet_connection_sock** %5, align 8
  %8 = load %struct.sock*, %struct.sock** %3, align 8
  %9 = call i32 @dccp_sk(%struct.sock* %8)
  %10 = call i64 @dccp_feat_finalise_settings(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @EPROTO, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %64

15:                                               ; preds = %1
  %16 = load %struct.sock*, %struct.sock** %3, align 8
  %17 = call i32 @dccp_connect_init(%struct.sock* %16)
  %18 = load %struct.sock*, %struct.sock** %3, align 8
  %19 = getelementptr inbounds %struct.sock, %struct.sock* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.sock*, %struct.sock** %3, align 8
  %24 = getelementptr inbounds %struct.sock, %struct.sock* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call %struct.sk_buff* @alloc_skb(i32 %22, i32 %25)
  store %struct.sk_buff* %26, %struct.sk_buff** %4, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = icmp eq %struct.sk_buff* %27, null
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %15
  %33 = load i32, i32* @ENOBUFS, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %64

35:                                               ; preds = %15
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = load %struct.sock*, %struct.sock** %3, align 8
  %38 = getelementptr inbounds %struct.sock, %struct.sock* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @skb_reserve(%struct.sk_buff* %36, i32 %41)
  %43 = load i32, i32* @DCCP_PKT_REQUEST, align 4
  %44 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %45 = call %struct.TYPE_4__* @DCCP_SKB_CB(%struct.sk_buff* %44)
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 4
  %47 = load %struct.sock*, %struct.sock** %3, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %49 = call i32 @dccp_skb_entail(%struct.sock* %47, %struct.sk_buff* %48)
  %50 = load %struct.sock*, %struct.sock** %3, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call i32 @skb_clone(%struct.sk_buff* %51, i32 %52)
  %54 = call i32 @dccp_transmit_skb(%struct.sock* %50, i32 %53)
  %55 = load i32, i32* @DCCP_MIB_ACTIVEOPENS, align 4
  %56 = call i32 @DCCP_INC_STATS(i32 %55)
  %57 = load %struct.sock*, %struct.sock** %3, align 8
  %58 = load i32, i32* @ICSK_TIME_RETRANS, align 4
  %59 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %5, align 8
  %60 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @DCCP_RTO_MAX, align 4
  %63 = call i32 @inet_csk_reset_xmit_timer(%struct.sock* %57, i32 %58, i32 %61, i32 %62)
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %35, %32, %12
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local i64 @dccp_feat_finalise_settings(i32) #1

declare dso_local i32 @dccp_sk(%struct.sock*) #1

declare dso_local i32 @dccp_connect_init(%struct.sock*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local %struct.TYPE_4__* @DCCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @dccp_skb_entail(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @dccp_transmit_skb(%struct.sock*, i32) #1

declare dso_local i32 @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @DCCP_INC_STATS(i32) #1

declare dso_local i32 @inet_csk_reset_xmit_timer(%struct.sock*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
