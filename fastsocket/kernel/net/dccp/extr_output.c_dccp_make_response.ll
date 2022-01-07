; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_output.c_dccp_make_response.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_output.c_dccp_make_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.sock = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.dst_entry = type { i32 }
%struct.request_sock = type { i32 }
%struct.dccp_hdr = type { i32, i32, i8*, i32, i32 }
%struct.dccp_request_sock = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i8* }
%struct.TYPE_7__ = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@DCCP_PKT_RESPONSE = common dso_local global i8* null, align 8
@DCCP_MIB_OUTSEGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @dccp_make_response(%struct.sock* %0, %struct.dst_entry* %1, %struct.request_sock* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.dst_entry*, align 8
  %7 = alloca %struct.request_sock*, align 8
  %8 = alloca %struct.dccp_hdr*, align 8
  %9 = alloca %struct.dccp_request_sock*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff*, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.dst_entry* %1, %struct.dst_entry** %6, align 8
  store %struct.request_sock* %2, %struct.request_sock** %7, align 8
  store i32 32, i32* %10, align 4
  %12 = load %struct.sock*, %struct.sock** %5, align 8
  %13 = load %struct.sock*, %struct.sock** %5, align 8
  %14 = getelementptr inbounds %struct.sock, %struct.sock* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @GFP_ATOMIC, align 4
  %19 = call %struct.sk_buff* @sock_wmalloc(%struct.sock* %12, i32 %17, i32 1, i32 %18)
  store %struct.sk_buff* %19, %struct.sk_buff** %11, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %21 = icmp eq %struct.sk_buff* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %123

23:                                               ; preds = %3
  %24 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %25 = load %struct.sock*, %struct.sock** %5, align 8
  %26 = getelementptr inbounds %struct.sock, %struct.sock* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @skb_reserve(%struct.sk_buff* %24, i32 %29)
  %31 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %32 = load %struct.dst_entry*, %struct.dst_entry** %6, align 8
  %33 = call i32 @dst_clone(%struct.dst_entry* %32)
  %34 = call i32 @skb_dst_set(%struct.sk_buff* %31, i32 %33)
  %35 = load %struct.request_sock*, %struct.request_sock** %7, align 8
  %36 = call %struct.dccp_request_sock* @dccp_rsk(%struct.request_sock* %35)
  store %struct.dccp_request_sock* %36, %struct.dccp_request_sock** %9, align 8
  %37 = load %struct.request_sock*, %struct.request_sock** %7, align 8
  %38 = call %struct.TYPE_6__* @inet_rsk(%struct.request_sock* %37)
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %23
  %43 = load %struct.dccp_request_sock*, %struct.dccp_request_sock** %9, align 8
  %44 = getelementptr inbounds %struct.dccp_request_sock, %struct.dccp_request_sock* %43, i32 0, i32 2
  %45 = call i32 @dccp_inc_seqno(i32* %44)
  br label %46

46:                                               ; preds = %42, %23
  %47 = load i8*, i8** @DCCP_PKT_RESPONSE, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %49 = call %struct.TYPE_8__* @DCCP_SKB_CB(%struct.sk_buff* %48)
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 2
  store i8* %47, i8** %50, align 8
  %51 = load %struct.dccp_request_sock*, %struct.dccp_request_sock** %9, align 8
  %52 = getelementptr inbounds %struct.dccp_request_sock, %struct.dccp_request_sock* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %55 = call %struct.TYPE_8__* @DCCP_SKB_CB(%struct.sk_buff* %54)
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  store i32 %53, i32* %56, align 4
  %57 = load %struct.dccp_request_sock*, %struct.dccp_request_sock** %9, align 8
  %58 = call i64 @dccp_feat_server_ccid_dependencies(%struct.dccp_request_sock* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %46
  br label %120

61:                                               ; preds = %46
  %62 = load %struct.dccp_request_sock*, %struct.dccp_request_sock** %9, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %64 = call i64 @dccp_insert_options_rsk(%struct.dccp_request_sock* %62, %struct.sk_buff* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %120

67:                                               ; preds = %61
  %68 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %69 = call %struct.dccp_hdr* @dccp_zeroed_hdr(%struct.sk_buff* %68, i32 32)
  store %struct.dccp_hdr* %69, %struct.dccp_hdr** %8, align 8
  %70 = load %struct.request_sock*, %struct.request_sock** %7, align 8
  %71 = call %struct.TYPE_6__* @inet_rsk(%struct.request_sock* %70)
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.dccp_hdr*, %struct.dccp_hdr** %8, align 8
  %75 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %74, i32 0, i32 4
  store i32 %73, i32* %75, align 4
  %76 = load %struct.request_sock*, %struct.request_sock** %7, align 8
  %77 = call %struct.TYPE_6__* @inet_rsk(%struct.request_sock* %76)
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.dccp_hdr*, %struct.dccp_hdr** %8, align 8
  %81 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 8
  %82 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %83 = call %struct.TYPE_8__* @DCCP_SKB_CB(%struct.sk_buff* %82)
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = add nsw i32 32, %85
  %87 = sdiv i32 %86, 4
  %88 = load %struct.dccp_hdr*, %struct.dccp_hdr** %8, align 8
  %89 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load i8*, i8** @DCCP_PKT_RESPONSE, align 8
  %91 = load %struct.dccp_hdr*, %struct.dccp_hdr** %8, align 8
  %92 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %91, i32 0, i32 2
  store i8* %90, i8** %92, align 8
  %93 = load %struct.dccp_hdr*, %struct.dccp_hdr** %8, align 8
  %94 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %93, i32 0, i32 1
  store i32 1, i32* %94, align 4
  %95 = load %struct.dccp_hdr*, %struct.dccp_hdr** %8, align 8
  %96 = load %struct.dccp_request_sock*, %struct.dccp_request_sock** %9, align 8
  %97 = getelementptr inbounds %struct.dccp_request_sock, %struct.dccp_request_sock* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @dccp_hdr_set_seq(%struct.dccp_hdr* %95, i32 %98)
  %100 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %101 = call i32 @dccp_hdr_ack_bits(%struct.sk_buff* %100)
  %102 = load %struct.dccp_request_sock*, %struct.dccp_request_sock** %9, align 8
  %103 = getelementptr inbounds %struct.dccp_request_sock, %struct.dccp_request_sock* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @dccp_hdr_set_ack(i32 %101, i32 %104)
  %106 = load %struct.dccp_request_sock*, %struct.dccp_request_sock** %9, align 8
  %107 = getelementptr inbounds %struct.dccp_request_sock, %struct.dccp_request_sock* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %110 = call %struct.TYPE_7__* @dccp_hdr_response(%struct.sk_buff* %109)
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  store i32 %108, i32* %111, align 4
  %112 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %113 = call i32 @dccp_csum_outgoing(%struct.sk_buff* %112)
  %114 = load %struct.request_sock*, %struct.request_sock** %7, align 8
  %115 = call %struct.TYPE_6__* @inet_rsk(%struct.request_sock* %114)
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  store i32 1, i32* %116, align 4
  %117 = load i32, i32* @DCCP_MIB_OUTSEGS, align 4
  %118 = call i32 @DCCP_INC_STATS(i32 %117)
  %119 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  store %struct.sk_buff* %119, %struct.sk_buff** %4, align 8
  br label %123

120:                                              ; preds = %66, %60
  %121 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %122 = call i32 @kfree_skb(%struct.sk_buff* %121)
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %123

123:                                              ; preds = %120, %67, %22
  %124 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %124
}

declare dso_local %struct.sk_buff* @sock_wmalloc(%struct.sock*, i32, i32, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_dst_set(%struct.sk_buff*, i32) #1

declare dso_local i32 @dst_clone(%struct.dst_entry*) #1

declare dso_local %struct.dccp_request_sock* @dccp_rsk(%struct.request_sock*) #1

declare dso_local %struct.TYPE_6__* @inet_rsk(%struct.request_sock*) #1

declare dso_local i32 @dccp_inc_seqno(i32*) #1

declare dso_local %struct.TYPE_8__* @DCCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @dccp_feat_server_ccid_dependencies(%struct.dccp_request_sock*) #1

declare dso_local i64 @dccp_insert_options_rsk(%struct.dccp_request_sock*, %struct.sk_buff*) #1

declare dso_local %struct.dccp_hdr* @dccp_zeroed_hdr(%struct.sk_buff*, i32) #1

declare dso_local i32 @dccp_hdr_set_seq(%struct.dccp_hdr*, i32) #1

declare dso_local i32 @dccp_hdr_set_ack(i32, i32) #1

declare dso_local i32 @dccp_hdr_ack_bits(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_7__* @dccp_hdr_response(%struct.sk_buff*) #1

declare dso_local i32 @dccp_csum_outgoing(%struct.sk_buff*) #1

declare dso_local i32 @DCCP_INC_STATS(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
