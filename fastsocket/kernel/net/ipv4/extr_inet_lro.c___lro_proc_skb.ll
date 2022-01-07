; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_lro.c___lro_proc_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_lro.c___lro_proc_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_lro_mgr = type { i32, i64, %struct.TYPE_4__*, i32, i32, i64 (%struct.sk_buff*, i8*, i8*, i32*, i8*)* }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i64, i64, i32 }
%struct.vlan_group = type { i32 }
%struct.net_lro_desc = type { i64, i64, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.iphdr = type { i32 }
%struct.tcphdr = type { i32 }

@LRO_IPV4 = common dso_local global i32 0, align 4
@LRO_TCP = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@LRO_F_EXTRACT_VLAN_ID = common dso_local global i32 0, align 4
@VLAN_HLEN = common dso_local global i32 0, align 4
@aggregated = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_lro_mgr*, %struct.sk_buff*, %struct.vlan_group*, i32, i8*)* @__lro_proc_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__lro_proc_skb(%struct.net_lro_mgr* %0, %struct.sk_buff* %1, %struct.vlan_group* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_lro_mgr*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.vlan_group*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.net_lro_desc*, align 8
  %13 = alloca %struct.iphdr*, align 8
  %14 = alloca %struct.tcphdr*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.net_lro_mgr* %0, %struct.net_lro_mgr** %7, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store %struct.vlan_group* %2, %struct.vlan_group** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32 0, i32* %16, align 4
  %17 = load %struct.net_lro_mgr*, %struct.net_lro_mgr** %7, align 8
  %18 = getelementptr inbounds %struct.net_lro_mgr, %struct.net_lro_mgr* %17, i32 0, i32 5
  %19 = load i64 (%struct.sk_buff*, i8*, i8*, i32*, i8*)*, i64 (%struct.sk_buff*, i8*, i8*, i32*, i8*)** %18, align 8
  %20 = icmp ne i64 (%struct.sk_buff*, i8*, i8*, i32*, i8*)* %19, null
  br i1 %20, label %21, label %31

21:                                               ; preds = %5
  %22 = load %struct.net_lro_mgr*, %struct.net_lro_mgr** %7, align 8
  %23 = getelementptr inbounds %struct.net_lro_mgr, %struct.net_lro_mgr* %22, i32 0, i32 5
  %24 = load i64 (%struct.sk_buff*, i8*, i8*, i32*, i8*)*, i64 (%struct.sk_buff*, i8*, i8*, i32*, i8*)** %23, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %26 = bitcast %struct.iphdr** %13 to i8*
  %27 = bitcast %struct.tcphdr** %14 to i8*
  %28 = load i8*, i8** %11, align 8
  %29 = call i64 %24(%struct.sk_buff* %25, i8* %26, i8* %27, i32* %15, i8* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %21, %5
  br label %161

32:                                               ; preds = %21
  %33 = load i32, i32* %15, align 4
  %34 = load i32, i32* @LRO_IPV4, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* @LRO_TCP, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %37, %32
  br label %161

43:                                               ; preds = %37
  %44 = load %struct.net_lro_mgr*, %struct.net_lro_mgr** %7, align 8
  %45 = load %struct.net_lro_mgr*, %struct.net_lro_mgr** %7, align 8
  %46 = getelementptr inbounds %struct.net_lro_mgr, %struct.net_lro_mgr* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %49 = load %struct.tcphdr*, %struct.tcphdr** %14, align 8
  %50 = call %struct.net_lro_desc* @lro_get_desc(%struct.net_lro_mgr* %44, i32 %47, %struct.iphdr* %48, %struct.tcphdr* %49)
  store %struct.net_lro_desc* %50, %struct.net_lro_desc** %12, align 8
  %51 = load %struct.net_lro_desc*, %struct.net_lro_desc** %12, align 8
  %52 = icmp ne %struct.net_lro_desc* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %43
  br label %161

54:                                               ; preds = %43
  %55 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %56 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* @ETH_P_8021Q, align 4
  %59 = call i64 @htons(i32 %58)
  %60 = icmp eq i64 %57, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %54
  %62 = load %struct.net_lro_mgr*, %struct.net_lro_mgr** %7, align 8
  %63 = getelementptr inbounds %struct.net_lro_mgr, %struct.net_lro_mgr* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @LRO_F_EXTRACT_VLAN_ID, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %61
  %69 = load i32, i32* @VLAN_HLEN, align 4
  store i32 %69, i32* %16, align 4
  br label %70

70:                                               ; preds = %68, %61, %54
  %71 = load %struct.net_lro_desc*, %struct.net_lro_desc** %12, align 8
  %72 = getelementptr inbounds %struct.net_lro_desc, %struct.net_lro_desc* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %103, label %75

75:                                               ; preds = %70
  %76 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %77 = load %struct.tcphdr*, %struct.tcphdr** %14, align 8
  %78 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %79 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* %16, align 4
  %82 = sext i32 %81 to i64
  %83 = sub nsw i64 %80, %82
  %84 = call i64 @lro_tcp_ip_check(%struct.iphdr* %76, %struct.tcphdr* %77, i64 %83, %struct.net_lro_desc* null)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %75
  br label %161

87:                                               ; preds = %75
  %88 = load %struct.net_lro_mgr*, %struct.net_lro_mgr** %7, align 8
  %89 = getelementptr inbounds %struct.net_lro_mgr, %struct.net_lro_mgr* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %92 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 8
  %93 = load %struct.net_lro_desc*, %struct.net_lro_desc** %12, align 8
  %94 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %95 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %96 = load %struct.tcphdr*, %struct.tcphdr** %14, align 8
  %97 = load i32, i32* %10, align 4
  %98 = load %struct.vlan_group*, %struct.vlan_group** %9, align 8
  %99 = call i32 @lro_init_desc(%struct.net_lro_desc* %93, %struct.sk_buff* %94, %struct.iphdr* %95, %struct.tcphdr* %96, i32 %97, %struct.vlan_group* %98)
  %100 = load %struct.net_lro_mgr*, %struct.net_lro_mgr** %7, align 8
  %101 = load i32, i32* @aggregated, align 4
  %102 = call i32 @LRO_INC_STATS(%struct.net_lro_mgr* %100, i32 %101)
  store i32 0, i32* %6, align 4
  br label %162

103:                                              ; preds = %70
  %104 = load %struct.net_lro_desc*, %struct.net_lro_desc** %12, align 8
  %105 = getelementptr inbounds %struct.net_lro_desc, %struct.net_lro_desc* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.tcphdr*, %struct.tcphdr** %14, align 8
  %108 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i64 @ntohl(i32 %109)
  %111 = icmp ne i64 %106, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %103
  br label %157

113:                                              ; preds = %103
  %114 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %115 = load %struct.tcphdr*, %struct.tcphdr** %14, align 8
  %116 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %117 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.net_lro_desc*, %struct.net_lro_desc** %12, align 8
  %120 = call i64 @lro_tcp_ip_check(%struct.iphdr* %114, %struct.tcphdr* %115, i64 %118, %struct.net_lro_desc* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %113
  br label %157

123:                                              ; preds = %113
  %124 = load %struct.net_lro_desc*, %struct.net_lro_desc** %12, align 8
  %125 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %126 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %127 = load %struct.tcphdr*, %struct.tcphdr** %14, align 8
  %128 = call i32 @lro_add_packet(%struct.net_lro_desc* %124, %struct.sk_buff* %125, %struct.iphdr* %126, %struct.tcphdr* %127)
  %129 = load %struct.net_lro_mgr*, %struct.net_lro_mgr** %7, align 8
  %130 = load i32, i32* @aggregated, align 4
  %131 = call i32 @LRO_INC_STATS(%struct.net_lro_mgr* %129, i32 %130)
  %132 = load %struct.net_lro_desc*, %struct.net_lro_desc** %12, align 8
  %133 = getelementptr inbounds %struct.net_lro_desc, %struct.net_lro_desc* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.net_lro_mgr*, %struct.net_lro_mgr** %7, align 8
  %136 = getelementptr inbounds %struct.net_lro_mgr, %struct.net_lro_mgr* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = icmp sge i64 %134, %137
  br i1 %138, label %152, label %139

139:                                              ; preds = %123
  %140 = load %struct.net_lro_desc*, %struct.net_lro_desc** %12, align 8
  %141 = getelementptr inbounds %struct.net_lro_desc, %struct.net_lro_desc* %140, i32 0, i32 2
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.net_lro_mgr*, %struct.net_lro_mgr** %7, align 8
  %146 = getelementptr inbounds %struct.net_lro_mgr, %struct.net_lro_mgr* %145, i32 0, i32 2
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = sub nsw i32 65535, %149
  %151 = icmp sgt i32 %144, %150
  br i1 %151, label %152, label %156

152:                                              ; preds = %139, %123
  %153 = load %struct.net_lro_mgr*, %struct.net_lro_mgr** %7, align 8
  %154 = load %struct.net_lro_desc*, %struct.net_lro_desc** %12, align 8
  %155 = call i32 @lro_flush(%struct.net_lro_mgr* %153, %struct.net_lro_desc* %154)
  br label %156

156:                                              ; preds = %152, %139
  store i32 0, i32* %6, align 4
  br label %162

157:                                              ; preds = %122, %112
  %158 = load %struct.net_lro_mgr*, %struct.net_lro_mgr** %7, align 8
  %159 = load %struct.net_lro_desc*, %struct.net_lro_desc** %12, align 8
  %160 = call i32 @lro_flush(%struct.net_lro_mgr* %158, %struct.net_lro_desc* %159)
  br label %161

161:                                              ; preds = %157, %86, %53, %42, %31
  store i32 1, i32* %6, align 4
  br label %162

162:                                              ; preds = %161, %156, %87
  %163 = load i32, i32* %6, align 4
  ret i32 %163
}

declare dso_local %struct.net_lro_desc* @lro_get_desc(%struct.net_lro_mgr*, i32, %struct.iphdr*, %struct.tcphdr*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i64 @lro_tcp_ip_check(%struct.iphdr*, %struct.tcphdr*, i64, %struct.net_lro_desc*) #1

declare dso_local i32 @lro_init_desc(%struct.net_lro_desc*, %struct.sk_buff*, %struct.iphdr*, %struct.tcphdr*, i32, %struct.vlan_group*) #1

declare dso_local i32 @LRO_INC_STATS(%struct.net_lro_mgr*, i32) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @lro_add_packet(%struct.net_lro_desc*, %struct.sk_buff*, %struct.iphdr*, %struct.tcphdr*) #1

declare dso_local i32 @lro_flush(%struct.net_lro_mgr*, %struct.net_lro_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
