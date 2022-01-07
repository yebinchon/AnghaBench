; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_proto_tcp.c_tcp_dnat_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_proto_tcp.c_tcp_dnat_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64, i32 }
%struct.ip_vs_protocol = type { i32 (i64, %struct.sk_buff*, %struct.ip_vs_protocol*)* }
%struct.ip_vs_conn = type { i64, i32, %struct.TYPE_5__, %struct.TYPE_4__, i32, i32, i32, i32* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.tcphdr = type { i64, i32 }

@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@CHECKSUM_COMPLETE = common dso_local global i64 0, align 8
@CHECKSUM_NONE = common dso_local global i64 0, align 8
@CHECKSUM_UNNECESSARY = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.ip_vs_protocol*, %struct.ip_vs_conn*)* @tcp_dnat_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_dnat_handler(%struct.sk_buff* %0, %struct.ip_vs_protocol* %1, %struct.ip_vs_conn* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ip_vs_protocol*, align 8
  %7 = alloca %struct.ip_vs_conn*, align 8
  %8 = alloca %struct.tcphdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.ip_vs_protocol* %1, %struct.ip_vs_protocol** %6, align 8
  store %struct.ip_vs_conn* %2, %struct.ip_vs_conn** %7, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = call i32 @ip_hdrlen(%struct.sk_buff* %11)
  store i32 %12, i32* %9, align 4
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %9, align 4
  %17 = sub i32 %15, %16
  store i32 %17, i32* %10, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = load i32, i32* %9, align 4
  %20 = zext i32 %19 to i64
  %21 = add i64 %20, 16
  %22 = trunc i64 %21 to i32
  %23 = call i32 @skb_make_writable(%struct.sk_buff* %18, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %165

26:                                               ; preds = %3
  %27 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %7, align 8
  %28 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %27, i32 0, i32 7
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %58

34:                                               ; preds = %26
  %35 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %6, align 8
  %36 = getelementptr inbounds %struct.ip_vs_protocol, %struct.ip_vs_protocol* %35, i32 0, i32 0
  %37 = load i32 (i64, %struct.sk_buff*, %struct.ip_vs_protocol*)*, i32 (i64, %struct.sk_buff*, %struct.ip_vs_protocol*)** %36, align 8
  %38 = icmp ne i32 (i64, %struct.sk_buff*, %struct.ip_vs_protocol*)* %37, null
  br i1 %38, label %39, label %51

39:                                               ; preds = %34
  %40 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %6, align 8
  %41 = getelementptr inbounds %struct.ip_vs_protocol, %struct.ip_vs_protocol* %40, i32 0, i32 0
  %42 = load i32 (i64, %struct.sk_buff*, %struct.ip_vs_protocol*)*, i32 (i64, %struct.sk_buff*, %struct.ip_vs_protocol*)** %41, align 8
  %43 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %7, align 8
  %44 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %47 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %6, align 8
  %48 = call i32 %42(i64 %45, %struct.sk_buff* %46, %struct.ip_vs_protocol* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %165

51:                                               ; preds = %39, %34
  %52 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %7, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %54 = call i32 @ip_vs_app_pkt_in(%struct.ip_vs_conn* %52, %struct.sk_buff* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  store i32 0, i32* %4, align 4
  br label %165

57:                                               ; preds = %51
  br label %58

58:                                               ; preds = %57, %26
  %59 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %60 = call i64 @skb_network_header(%struct.sk_buff* %59)
  %61 = inttoptr i64 %60 to i8*
  %62 = load i32, i32* %9, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr i8, i8* %61, i64 %63
  %65 = bitcast i8* %64 to %struct.tcphdr*
  store %struct.tcphdr* %65, %struct.tcphdr** %8, align 8
  %66 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %7, align 8
  %67 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %70 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 8
  %71 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %72 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %94

76:                                               ; preds = %58
  %77 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %7, align 8
  %78 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %81 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %7, align 8
  %82 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %81, i32 0, i32 6
  %83 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %7, align 8
  %84 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %83, i32 0, i32 2
  %85 = load i32, i32* %10, align 4
  %86 = call i32 @htons(i32 %85)
  %87 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %88 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sub i32 %89, %90
  %92 = call i32 @htons(i32 %91)
  %93 = call i32 @tcp_partial_csum_update(i64 %79, %struct.tcphdr* %80, i32* %82, %struct.TYPE_5__* %84, i32 %86, i32 %92)
  br label %164

94:                                               ; preds = %58
  %95 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %7, align 8
  %96 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %95, i32 0, i32 7
  %97 = load i32*, i32** %96, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %125, label %99

99:                                               ; preds = %94
  %100 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %7, align 8
  %101 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %104 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %7, align 8
  %105 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %104, i32 0, i32 6
  %106 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %7, align 8
  %107 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %106, i32 0, i32 2
  %108 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %7, align 8
  %109 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %7, align 8
  %112 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @tcp_fast_csum_update(i64 %102, %struct.tcphdr* %103, i32* %105, %struct.TYPE_5__* %107, i32 %110, i32 %113)
  %115 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %116 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @CHECKSUM_COMPLETE, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %99
  %121 = load i64, i64* @CHECKSUM_NONE, align 8
  %122 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %123 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %122, i32 0, i32 1
  store i64 %121, i64* %123, align 8
  br label %124

124:                                              ; preds = %120, %99
  br label %163

125:                                              ; preds = %94
  %126 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %127 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %126, i32 0, i32 0
  store i64 0, i64* %127, align 8
  %128 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %129 = load i32, i32* %9, align 4
  %130 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %131 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* %9, align 4
  %134 = sub i32 %132, %133
  %135 = call i32 @skb_checksum(%struct.sk_buff* %128, i32 %129, i32 %134, i32 0)
  %136 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %137 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %136, i32 0, i32 2
  store i32 %135, i32* %137, align 8
  %138 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %7, align 8
  %139 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %7, align 8
  %143 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %147 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* %9, align 4
  %150 = sub i32 %148, %149
  %151 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %7, align 8
  %152 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %155 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = call i64 @csum_tcpudp_magic(i32 %141, i32 %145, i32 %150, i32 %153, i32 %156)
  %158 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %159 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %158, i32 0, i32 0
  store i64 %157, i64* %159, align 8
  %160 = load i64, i64* @CHECKSUM_UNNECESSARY, align 8
  %161 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %162 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %161, i32 0, i32 1
  store i64 %160, i64* %162, align 8
  br label %163

163:                                              ; preds = %125, %124
  br label %164

164:                                              ; preds = %163, %76
  store i32 1, i32* %4, align 4
  br label %165

165:                                              ; preds = %164, %56, %50, %25
  %166 = load i32, i32* %4, align 4
  ret i32 %166
}

declare dso_local i32 @ip_hdrlen(%struct.sk_buff*) #1

declare dso_local i32 @skb_make_writable(%struct.sk_buff*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ip_vs_app_pkt_in(%struct.ip_vs_conn*, %struct.sk_buff*) #1

declare dso_local i64 @skb_network_header(%struct.sk_buff*) #1

declare dso_local i32 @tcp_partial_csum_update(i64, %struct.tcphdr*, i32*, %struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @tcp_fast_csum_update(i64, %struct.tcphdr*, i32*, %struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @skb_checksum(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i64 @csum_tcpudp_magic(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
