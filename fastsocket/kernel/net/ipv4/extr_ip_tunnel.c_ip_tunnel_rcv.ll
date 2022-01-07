; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_tunnel.c_ip_tunnel_rcv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_tunnel.c_ip_tunnel_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_tunnel = type { i32, %struct.TYPE_8__*, i64, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i64, %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.sk_buff = type { %struct.TYPE_8__*, i32, i64, i32 }
%struct.tnl_ptk_info = type { i32, i32 }
%struct.iphdr = type { i32 }

@TUNNEL_CSUM = common dso_local global i32 0, align 4
@TUNNEL_SEQ = common dso_local global i32 0, align 4
@ARPHRD_ETHER = common dso_local global i64 0, align 8
@ETH_HLEN = common dso_local global i32 0, align 4
@PACKET_BROADCAST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip_tunnel_rcv(%struct.ip_tunnel* %0, %struct.sk_buff* %1, %struct.tnl_ptk_info* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ip_tunnel*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.tnl_ptk_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.net_device_stats*, align 8
  %11 = alloca %struct.iphdr*, align 8
  store %struct.ip_tunnel* %0, %struct.ip_tunnel** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.tnl_ptk_info* %2, %struct.tnl_ptk_info** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.ip_tunnel*, %struct.ip_tunnel** %6, align 8
  %13 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %12, i32 0, i32 1
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  store %struct.net_device_stats* %15, %struct.net_device_stats** %10, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %17 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %16)
  store %struct.iphdr* %17, %struct.iphdr** %11, align 8
  %18 = load %struct.tnl_ptk_info*, %struct.tnl_ptk_info** %8, align 8
  %19 = getelementptr inbounds %struct.tnl_ptk_info, %struct.tnl_ptk_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @TUNNEL_CSUM, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %4
  %25 = load %struct.ip_tunnel*, %struct.ip_tunnel** %6, align 8
  %26 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @TUNNEL_CSUM, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %47, label %32

32:                                               ; preds = %24, %4
  %33 = load %struct.tnl_ptk_info*, %struct.tnl_ptk_info** %8, align 8
  %34 = getelementptr inbounds %struct.tnl_ptk_info, %struct.tnl_ptk_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @TUNNEL_CSUM, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %62

39:                                               ; preds = %32
  %40 = load %struct.ip_tunnel*, %struct.ip_tunnel** %6, align 8
  %41 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @TUNNEL_CSUM, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %62, label %47

47:                                               ; preds = %39, %24
  %48 = load %struct.ip_tunnel*, %struct.ip_tunnel** %6, align 8
  %49 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %48, i32 0, i32 1
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 8
  %55 = load %struct.ip_tunnel*, %struct.ip_tunnel** %6, align 8
  %56 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %55, i32 0, i32 1
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 8
  br label %163

62:                                               ; preds = %39, %32
  %63 = load %struct.ip_tunnel*, %struct.ip_tunnel** %6, align 8
  %64 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @TUNNEL_SEQ, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %115

70:                                               ; preds = %62
  %71 = load %struct.tnl_ptk_info*, %struct.tnl_ptk_info** %8, align 8
  %72 = getelementptr inbounds %struct.tnl_ptk_info, %struct.tnl_ptk_info* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @TUNNEL_SEQ, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %92

77:                                               ; preds = %70
  %78 = load %struct.ip_tunnel*, %struct.ip_tunnel** %6, align 8
  %79 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %107

82:                                               ; preds = %77
  %83 = load %struct.tnl_ptk_info*, %struct.tnl_ptk_info** %8, align 8
  %84 = getelementptr inbounds %struct.tnl_ptk_info, %struct.tnl_ptk_info* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @ntohl(i32 %85)
  %87 = load %struct.ip_tunnel*, %struct.ip_tunnel** %6, align 8
  %88 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = sub nsw i64 %86, %89
  %91 = icmp slt i64 %90, 0
  br i1 %91, label %92, label %107

92:                                               ; preds = %82, %70
  %93 = load %struct.ip_tunnel*, %struct.ip_tunnel** %6, align 8
  %94 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %93, i32 0, i32 1
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 4
  %100 = load %struct.ip_tunnel*, %struct.ip_tunnel** %6, align 8
  %101 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %100, i32 0, i32 1
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %104, align 8
  br label %163

107:                                              ; preds = %82, %77
  %108 = load %struct.tnl_ptk_info*, %struct.tnl_ptk_info** %8, align 8
  %109 = getelementptr inbounds %struct.tnl_ptk_info, %struct.tnl_ptk_info* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @ntohl(i32 %110)
  %112 = add nsw i64 %111, 1
  %113 = load %struct.ip_tunnel*, %struct.ip_tunnel** %6, align 8
  %114 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %113, i32 0, i32 2
  store i64 %112, i64* %114, align 8
  br label %115

115:                                              ; preds = %107, %62
  %116 = load %struct.iphdr*, %struct.iphdr** %11, align 8
  %117 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %118 = call i32 @ipgre_ecn_decapsulate(%struct.iphdr* %116, %struct.sk_buff* %117)
  %119 = load %struct.net_device_stats*, %struct.net_device_stats** %10, align 8
  %120 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 4
  %123 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %124 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.net_device_stats*, %struct.net_device_stats** %10, align 8
  %127 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = sext i32 %128 to i64
  %130 = add nsw i64 %129, %125
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %127, align 4
  %132 = load %struct.ip_tunnel*, %struct.ip_tunnel** %6, align 8
  %133 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %132, i32 0, i32 1
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @ARPHRD_ETHER, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %152

139:                                              ; preds = %115
  %140 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %141 = load %struct.ip_tunnel*, %struct.ip_tunnel** %6, align 8
  %142 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %141, i32 0, i32 1
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %142, align 8
  %144 = call i32 @eth_type_trans(%struct.sk_buff* %140, %struct.TYPE_8__* %143)
  %145 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %146 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %145, i32 0, i32 1
  store i32 %144, i32* %146, align 8
  %147 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %148 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %149 = call i32 @eth_hdr(%struct.sk_buff* %148)
  %150 = load i32, i32* @ETH_HLEN, align 4
  %151 = call i32 @skb_postpull_rcsum(%struct.sk_buff* %147, i32 %149, i32 %150)
  br label %158

152:                                              ; preds = %115
  %153 = load %struct.ip_tunnel*, %struct.ip_tunnel** %6, align 8
  %154 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %153, i32 0, i32 1
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %154, align 8
  %156 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %157 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %156, i32 0, i32 0
  store %struct.TYPE_8__* %155, %struct.TYPE_8__** %157, align 8
  br label %158

158:                                              ; preds = %152, %139
  %159 = load %struct.ip_tunnel*, %struct.ip_tunnel** %6, align 8
  %160 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %159, i32 0, i32 0
  %161 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %162 = call i32 @gro_cells_receive(i32* %160, %struct.sk_buff* %161)
  store i32 0, i32* %5, align 4
  br label %166

163:                                              ; preds = %92, %47
  %164 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %165 = call i32 @kfree_skb(%struct.sk_buff* %164)
  store i32 0, i32* %5, align 4
  br label %166

166:                                              ; preds = %163, %158
  %167 = load i32, i32* %5, align 4
  ret i32 %167
}

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @ipgre_ecn_decapsulate(%struct.iphdr*, %struct.sk_buff*) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.TYPE_8__*) #1

declare dso_local i32 @skb_postpull_rcsum(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @eth_hdr(%struct.sk_buff*) #1

declare dso_local i32 @gro_cells_receive(i32*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
