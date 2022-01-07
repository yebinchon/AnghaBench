; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_xmit.c_ip_vs_nat_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_xmit.c_ip_vs_nat_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.ip_vs_conn = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.ip_vs_protocol = type { i32 (%struct.sk_buff*, %struct.ip_vs_protocol*, %struct.ip_vs_conn.0*)* }
%struct.ip_vs_conn.0 = type opaque
%struct.rtable = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.iphdr = type { i32, i32, i32, i32 }

@IP_VS_CONN_F_NO_CPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"filled cport=%d\0A\00", align 1
@IP_DF = common dso_local global i32 0, align 4
@ICMP_DEST_UNREACH = common dso_local global i32 0, align 4
@ICMP_FRAG_NEEDED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"ip_vs_nat_xmit(): frag needed for\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"After DNAT\00", align 1
@PF_INET = common dso_local global i32 0, align 4
@NF_STOLEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip_vs_nat_xmit(%struct.sk_buff* %0, %struct.ip_vs_conn* %1, %struct.ip_vs_protocol* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ip_vs_conn*, align 8
  %7 = alloca %struct.ip_vs_protocol*, align 8
  %8 = alloca %struct.rtable*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.iphdr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.ip_vs_conn* %1, %struct.ip_vs_conn** %6, align 8
  store %struct.ip_vs_protocol* %2, %struct.ip_vs_protocol** %7, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %13)
  store %struct.iphdr* %14, %struct.iphdr** %10, align 8
  %15 = call i32 @EnterFunction(i32 10)
  %16 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %6, align 8
  %17 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @IP_VS_CONN_F_NO_CPORT, align 4
  %20 = and i32 %18, %19
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %42

23:                                               ; preds = %3
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %26 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %27, 4
  %29 = call i32* @skb_header_pointer(%struct.sk_buff* %24, i32 %28, i32 4, i32* %11)
  store i32* %29, i32** %12, align 8
  %30 = load i32*, i32** %12, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  br label %151

33:                                               ; preds = %23
  %34 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %6, align 8
  %35 = load i32*, i32** %12, align 8
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ip_vs_conn_fill_cport(%struct.ip_vs_conn* %34, i32 %36)
  %38 = load i32*, i32** %12, align 8
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ntohs(i32 %39)
  %41 = call i32 @IP_VS_DBG(i32 10, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %33, %3
  %43 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %44 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %6, align 8
  %45 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %46 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @RT_TOS(i32 %47)
  %49 = call %struct.rtable* @__ip_vs_get_out_rt(%struct.sk_buff* %43, %struct.ip_vs_conn* %44, i32 %48)
  store %struct.rtable* %49, %struct.rtable** %8, align 8
  %50 = icmp ne %struct.rtable* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %42
  br label %148

52:                                               ; preds = %42
  %53 = load %struct.rtable*, %struct.rtable** %8, align 8
  %54 = getelementptr inbounds %struct.rtable, %struct.rtable* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = call i32 @dst_mtu(%struct.TYPE_9__* %55)
  store i32 %56, i32* %9, align 4
  %57 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp sgt i32 %59, %60
  br i1 %61, label %62, label %86

62:                                               ; preds = %52
  %63 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %64 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @IP_DF, align 4
  %67 = call i32 @htons(i32 %66)
  %68 = and i32 %65, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %86

70:                                               ; preds = %62
  %71 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %72 = call i32 @skb_is_gso(%struct.sk_buff* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %86, label %74

74:                                               ; preds = %70
  %75 = load %struct.rtable*, %struct.rtable** %8, align 8
  %76 = call i32 @ip_rt_put(%struct.rtable* %75)
  %77 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %78 = load i32, i32* @ICMP_DEST_UNREACH, align 4
  %79 = load i32, i32* @ICMP_FRAG_NEEDED, align 4
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @htonl(i32 %80)
  %82 = call i32 @icmp_send(%struct.sk_buff* %77, i32 %78, i32 %79, i32 %81)
  %83 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %7, align 8
  %84 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %85 = call i32 @IP_VS_DBG_RL_PKT(i32 0, %struct.ip_vs_protocol* %83, %struct.sk_buff* %84, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %151

86:                                               ; preds = %70, %62, %52
  %87 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %88 = call i32 @skb_make_writable(%struct.sk_buff* %87, i32 16)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %86
  br label %156

91:                                               ; preds = %86
  %92 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %93 = load %struct.rtable*, %struct.rtable** %8, align 8
  %94 = getelementptr inbounds %struct.rtable, %struct.rtable* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @skb_cow(%struct.sk_buff* %92, i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %91
  br label %156

103:                                              ; preds = %91
  %104 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %105 = call i32 @skb_dst_drop(%struct.sk_buff* %104)
  %106 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %107 = load %struct.rtable*, %struct.rtable** %8, align 8
  %108 = getelementptr inbounds %struct.rtable, %struct.rtable* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = call i32 @skb_dst_set(%struct.sk_buff* %106, %struct.TYPE_9__* %109)
  %111 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %7, align 8
  %112 = getelementptr inbounds %struct.ip_vs_protocol, %struct.ip_vs_protocol* %111, i32 0, i32 0
  %113 = load i32 (%struct.sk_buff*, %struct.ip_vs_protocol*, %struct.ip_vs_conn.0*)*, i32 (%struct.sk_buff*, %struct.ip_vs_protocol*, %struct.ip_vs_conn.0*)** %112, align 8
  %114 = icmp ne i32 (%struct.sk_buff*, %struct.ip_vs_protocol*, %struct.ip_vs_conn.0*)* %113, null
  br i1 %114, label %115, label %126

115:                                              ; preds = %103
  %116 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %7, align 8
  %117 = getelementptr inbounds %struct.ip_vs_protocol, %struct.ip_vs_protocol* %116, i32 0, i32 0
  %118 = load i32 (%struct.sk_buff*, %struct.ip_vs_protocol*, %struct.ip_vs_conn.0*)*, i32 (%struct.sk_buff*, %struct.ip_vs_protocol*, %struct.ip_vs_conn.0*)** %117, align 8
  %119 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %120 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %7, align 8
  %121 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %6, align 8
  %122 = bitcast %struct.ip_vs_conn* %121 to %struct.ip_vs_conn.0*
  %123 = call i32 %118(%struct.sk_buff* %119, %struct.ip_vs_protocol* %120, %struct.ip_vs_conn.0* %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %115
  br label %151

126:                                              ; preds = %115, %103
  %127 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %6, align 8
  %128 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %132 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %131)
  %133 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %132, i32 0, i32 2
  store i32 %130, i32* %133, align 4
  %134 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %135 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %134)
  %136 = call i32 @ip_send_check(%struct.iphdr* %135)
  %137 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %7, align 8
  %138 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %139 = call i32 @IP_VS_DBG_PKT(i32 10, %struct.ip_vs_protocol* %137, %struct.sk_buff* %138, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %140 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %141 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %140, i32 0, i32 1
  store i32 1, i32* %141, align 4
  %142 = load i32, i32* @PF_INET, align 4
  %143 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %144 = load %struct.rtable*, %struct.rtable** %8, align 8
  %145 = call i32 @IP_VS_XMIT(i32 %142, %struct.sk_buff* %143, %struct.rtable* %144)
  %146 = call i32 @LeaveFunction(i32 10)
  %147 = load i32, i32* @NF_STOLEN, align 4
  store i32 %147, i32* %4, align 4
  br label %159

148:                                              ; preds = %51
  %149 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %150 = call i32 @dst_link_failure(%struct.sk_buff* %149)
  br label %151

151:                                              ; preds = %156, %148, %125, %74, %32
  %152 = call i32 @LeaveFunction(i32 10)
  %153 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %154 = call i32 @kfree_skb(%struct.sk_buff* %153)
  %155 = load i32, i32* @NF_STOLEN, align 4
  store i32 %155, i32* %4, align 4
  br label %159

156:                                              ; preds = %102, %90
  %157 = load %struct.rtable*, %struct.rtable** %8, align 8
  %158 = call i32 @ip_rt_put(%struct.rtable* %157)
  br label %151

159:                                              ; preds = %151, %126
  %160 = load i32, i32* %4, align 4
  ret i32 %160
}

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @EnterFunction(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32* @skb_header_pointer(%struct.sk_buff*, i32, i32, i32*) #1

declare dso_local i32 @ip_vs_conn_fill_cport(%struct.ip_vs_conn*, i32) #1

declare dso_local i32 @IP_VS_DBG(i32, i8*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local %struct.rtable* @__ip_vs_get_out_rt(%struct.sk_buff*, %struct.ip_vs_conn*, i32) #1

declare dso_local i32 @RT_TOS(i32) #1

declare dso_local i32 @dst_mtu(%struct.TYPE_9__*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local i32 @ip_rt_put(%struct.rtable*) #1

declare dso_local i32 @icmp_send(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @IP_VS_DBG_RL_PKT(i32, %struct.ip_vs_protocol*, %struct.sk_buff*, i32, i8*) #1

declare dso_local i32 @skb_make_writable(%struct.sk_buff*, i32) #1

declare dso_local i64 @skb_cow(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_dst_drop(%struct.sk_buff*) #1

declare dso_local i32 @skb_dst_set(%struct.sk_buff*, %struct.TYPE_9__*) #1

declare dso_local i32 @ip_send_check(%struct.iphdr*) #1

declare dso_local i32 @IP_VS_DBG_PKT(i32, %struct.ip_vs_protocol*, %struct.sk_buff*, i32, i8*) #1

declare dso_local i32 @IP_VS_XMIT(i32, %struct.sk_buff*, %struct.rtable*) #1

declare dso_local i32 @LeaveFunction(i32) #1

declare dso_local i32 @dst_link_failure(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
