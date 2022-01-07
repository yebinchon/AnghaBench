; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_ipv4.c_dccp_v4_conn_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_ipv4.c_dccp_v4_conn_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.inet_request_sock = type { i32, i32 }
%struct.request_sock = type { i32 }
%struct.dccp_request_sock = type { i32, i32, i32 }
%struct.dccp_skb_cb = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@RTCF_BROADCAST = common dso_local global i32 0, align 4
@RTCF_MULTICAST = common dso_local global i32 0, align 4
@DCCP_RESET_CODE_BAD_SERVICE_CODE = common dso_local global i32 0, align 4
@DCCP_RESET_CODE_TOO_BUSY = common dso_local global i32 0, align 4
@dccp_request_sock_ops = common dso_local global i32 0, align 4
@DCCP_TIMEOUT_INIT = common dso_local global i32 0, align 4
@DCCP_MIB_ATTEMPTFAILS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dccp_v4_conn_request(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.inet_request_sock*, align 8
  %7 = alloca %struct.request_sock*, align 8
  %8 = alloca %struct.dccp_request_sock*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dccp_skb_cb*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = call %struct.TYPE_6__* @dccp_hdr_request(%struct.sk_buff* %11)
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %9, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = call %struct.dccp_skb_cb* @DCCP_SKB_CB(%struct.sk_buff* %15)
  store %struct.dccp_skb_cb* %16, %struct.dccp_skb_cb** %10, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = call %struct.TYPE_4__* @skb_rtable(%struct.sk_buff* %17)
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @RTCF_BROADCAST, align 4
  %22 = load i32, i32* @RTCF_MULTICAST, align 4
  %23 = or i32 %21, %22
  %24 = and i32 %20, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %125

27:                                               ; preds = %2
  %28 = load %struct.sock*, %struct.sock** %4, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i64 @dccp_bad_service_code(%struct.sock* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i32, i32* @DCCP_RESET_CODE_BAD_SERVICE_CODE, align 4
  %34 = load %struct.dccp_skb_cb*, %struct.dccp_skb_cb** %10, align 8
  %35 = getelementptr inbounds %struct.dccp_skb_cb, %struct.dccp_skb_cb* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  br label %122

36:                                               ; preds = %27
  %37 = load i32, i32* @DCCP_RESET_CODE_TOO_BUSY, align 4
  %38 = load %struct.dccp_skb_cb*, %struct.dccp_skb_cb** %10, align 8
  %39 = getelementptr inbounds %struct.dccp_skb_cb, %struct.dccp_skb_cb* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.sock*, %struct.sock** %4, align 8
  %41 = call i64 @inet_csk_reqsk_queue_is_full(%struct.sock* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %122

44:                                               ; preds = %36
  %45 = load %struct.sock*, %struct.sock** %4, align 8
  %46 = call i64 @sk_acceptq_is_full(%struct.sock* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load %struct.sock*, %struct.sock** %4, align 8
  %50 = call i32 @inet_csk_reqsk_queue_young(%struct.sock* %49)
  %51 = icmp sgt i32 %50, 1
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %122

53:                                               ; preds = %48, %44
  %54 = call %struct.request_sock* @inet_reqsk_alloc(i32* @dccp_request_sock_ops)
  store %struct.request_sock* %54, %struct.request_sock** %7, align 8
  %55 = load %struct.request_sock*, %struct.request_sock** %7, align 8
  %56 = icmp eq %struct.request_sock* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %122

58:                                               ; preds = %53
  %59 = load %struct.request_sock*, %struct.request_sock** %7, align 8
  %60 = load %struct.sock*, %struct.sock** %4, align 8
  %61 = call i32 @dccp_sk(%struct.sock* %60)
  %62 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %63 = call i64 @dccp_reqsk_init(%struct.request_sock* %59, i32 %61, %struct.sk_buff* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  br label %119

66:                                               ; preds = %58
  %67 = load %struct.request_sock*, %struct.request_sock** %7, align 8
  %68 = call %struct.dccp_request_sock* @dccp_rsk(%struct.request_sock* %67)
  store %struct.dccp_request_sock* %68, %struct.dccp_request_sock** %8, align 8
  %69 = load %struct.sock*, %struct.sock** %4, align 8
  %70 = load %struct.dccp_request_sock*, %struct.dccp_request_sock** %8, align 8
  %71 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %72 = call i64 @dccp_parse_options(%struct.sock* %69, %struct.dccp_request_sock* %70, %struct.sk_buff* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %66
  br label %119

75:                                               ; preds = %66
  %76 = load %struct.sock*, %struct.sock** %4, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %78 = load %struct.request_sock*, %struct.request_sock** %7, align 8
  %79 = call i64 @security_inet_conn_request(%struct.sock* %76, %struct.sk_buff* %77, %struct.request_sock* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  br label %119

82:                                               ; preds = %75
  %83 = load %struct.request_sock*, %struct.request_sock** %7, align 8
  %84 = call %struct.inet_request_sock* @inet_rsk(%struct.request_sock* %83)
  store %struct.inet_request_sock* %84, %struct.inet_request_sock** %6, align 8
  %85 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %86 = call %struct.TYPE_5__* @ip_hdr(%struct.sk_buff* %85)
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.inet_request_sock*, %struct.inet_request_sock** %6, align 8
  %90 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %92 = call %struct.TYPE_5__* @ip_hdr(%struct.sk_buff* %91)
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.inet_request_sock*, %struct.inet_request_sock** %6, align 8
  %96 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 4
  %97 = load %struct.dccp_skb_cb*, %struct.dccp_skb_cb** %10, align 8
  %98 = getelementptr inbounds %struct.dccp_skb_cb, %struct.dccp_skb_cb* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.dccp_request_sock*, %struct.dccp_request_sock** %8, align 8
  %101 = getelementptr inbounds %struct.dccp_request_sock, %struct.dccp_request_sock* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 4
  %102 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %103 = call i32 @dccp_v4_init_sequence(%struct.sk_buff* %102)
  %104 = load %struct.dccp_request_sock*, %struct.dccp_request_sock** %8, align 8
  %105 = getelementptr inbounds %struct.dccp_request_sock, %struct.dccp_request_sock* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* %9, align 4
  %107 = load %struct.dccp_request_sock*, %struct.dccp_request_sock** %8, align 8
  %108 = getelementptr inbounds %struct.dccp_request_sock, %struct.dccp_request_sock* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 4
  %109 = load %struct.sock*, %struct.sock** %4, align 8
  %110 = load %struct.request_sock*, %struct.request_sock** %7, align 8
  %111 = call i64 @dccp_v4_send_response(%struct.sock* %109, %struct.request_sock* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %82
  br label %119

114:                                              ; preds = %82
  %115 = load %struct.sock*, %struct.sock** %4, align 8
  %116 = load %struct.request_sock*, %struct.request_sock** %7, align 8
  %117 = load i32, i32* @DCCP_TIMEOUT_INIT, align 4
  %118 = call i32 @inet_csk_reqsk_queue_hash_add(%struct.sock* %115, %struct.request_sock* %116, i32 %117)
  store i32 0, i32* %3, align 4
  br label %125

119:                                              ; preds = %113, %81, %74, %65
  %120 = load %struct.request_sock*, %struct.request_sock** %7, align 8
  %121 = call i32 @reqsk_free(%struct.request_sock* %120)
  br label %122

122:                                              ; preds = %119, %57, %52, %43, %32
  %123 = load i32, i32* @DCCP_MIB_ATTEMPTFAILS, align 4
  %124 = call i32 @DCCP_INC_STATS_BH(i32 %123)
  store i32 -1, i32* %3, align 4
  br label %125

125:                                              ; preds = %122, %114, %26
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local %struct.TYPE_6__* @dccp_hdr_request(%struct.sk_buff*) #1

declare dso_local %struct.dccp_skb_cb* @DCCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_4__* @skb_rtable(%struct.sk_buff*) #1

declare dso_local i64 @dccp_bad_service_code(%struct.sock*, i32) #1

declare dso_local i64 @inet_csk_reqsk_queue_is_full(%struct.sock*) #1

declare dso_local i64 @sk_acceptq_is_full(%struct.sock*) #1

declare dso_local i32 @inet_csk_reqsk_queue_young(%struct.sock*) #1

declare dso_local %struct.request_sock* @inet_reqsk_alloc(i32*) #1

declare dso_local i64 @dccp_reqsk_init(%struct.request_sock*, i32, %struct.sk_buff*) #1

declare dso_local i32 @dccp_sk(%struct.sock*) #1

declare dso_local %struct.dccp_request_sock* @dccp_rsk(%struct.request_sock*) #1

declare dso_local i64 @dccp_parse_options(%struct.sock*, %struct.dccp_request_sock*, %struct.sk_buff*) #1

declare dso_local i64 @security_inet_conn_request(%struct.sock*, %struct.sk_buff*, %struct.request_sock*) #1

declare dso_local %struct.inet_request_sock* @inet_rsk(%struct.request_sock*) #1

declare dso_local %struct.TYPE_5__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @dccp_v4_init_sequence(%struct.sk_buff*) #1

declare dso_local i64 @dccp_v4_send_response(%struct.sock*, %struct.request_sock*) #1

declare dso_local i32 @inet_csk_reqsk_queue_hash_add(%struct.sock*, %struct.request_sock*, i32) #1

declare dso_local i32 @reqsk_free(%struct.request_sock*) #1

declare dso_local i32 @DCCP_INC_STATS_BH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
