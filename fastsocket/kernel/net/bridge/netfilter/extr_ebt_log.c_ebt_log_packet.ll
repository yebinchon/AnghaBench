; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/netfilter/extr_ebt_log.c_ebt_log_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/netfilter/extr_ebt_log.c_ebt_log_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i8* }
%struct.nf_loginfo = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.iphdr = type { i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.arphdr = type { i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.arppayload = type { i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i64, i32, i32 }
%struct.ipv6hdr = type { i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ebt_log_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"<%c>%s IN=%s OUT=%s MAC source = %pM MAC dest = %pM proto = 0x%04x\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@NF_LOG_TYPE_LOG = common dso_local global i64 0, align 8
@NF_LOG_MASK = common dso_local global i32 0, align 4
@EBT_LOG_IP = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c" INCOMPLETE IP header\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c" IP SRC=%pI4 IP DST=%pI4, IP tos=0x%02X, IP proto=%d\00", align 1
@EBT_LOG_ARP = common dso_local global i32 0, align 4
@ETH_P_ARP = common dso_local global i32 0, align 4
@ETH_P_RARP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c" INCOMPLETE ARP header\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c" ARP HTYPE=%d, PTYPE=0x%04x, OPCODE=%d\00", align 1
@ETH_ALEN = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [24 x i8] c" INCOMPLETE ARP payload\00", align 1
@.str.7 = private unnamed_addr constant [65 x i8] c" ARP MAC SRC=%pM ARP IP SRC=%pI4 ARP MAC DST=%pM ARP IP DST=%pI4\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@EBT_LOG_IP6 = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.sk_buff*, %struct.net_device*, %struct.net_device*, %struct.nf_loginfo*, i8*)* @ebt_log_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ebt_log_packet(i32 %0, i32 %1, %struct.sk_buff* %2, %struct.net_device* %3, %struct.net_device* %4, %struct.nf_loginfo* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca %struct.net_device*, align 8
  %13 = alloca %struct.nf_loginfo*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.iphdr*, align 8
  %17 = alloca %struct.iphdr, align 8
  %18 = alloca %struct.arphdr*, align 8
  %19 = alloca %struct.arphdr, align 8
  %20 = alloca %struct.arppayload*, align 8
  %21 = alloca %struct.arppayload, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %10, align 8
  store %struct.net_device* %3, %struct.net_device** %11, align 8
  store %struct.net_device* %4, %struct.net_device** %12, align 8
  store %struct.nf_loginfo* %5, %struct.nf_loginfo** %13, align 8
  store i8* %6, i8** %14, align 8
  %22 = call i32 @spin_lock_bh(i32* @ebt_log_lock)
  %23 = load %struct.nf_loginfo*, %struct.nf_loginfo** %13, align 8
  %24 = getelementptr inbounds %struct.nf_loginfo, %struct.nf_loginfo* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 48, %27
  %29 = load i8*, i8** %14, align 8
  %30 = load %struct.net_device*, %struct.net_device** %11, align 8
  %31 = icmp ne %struct.net_device* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %7
  %33 = load %struct.net_device*, %struct.net_device** %11, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  br label %37

36:                                               ; preds = %7
  br label %37

37:                                               ; preds = %36, %32
  %38 = phi i8* [ %35, %32 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %36 ]
  %39 = load %struct.net_device*, %struct.net_device** %12, align 8
  %40 = icmp ne %struct.net_device* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load %struct.net_device*, %struct.net_device** %12, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  br label %46

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %45, %41
  %47 = phi i8* [ %44, %41 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %45 ]
  %48 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %49 = call %struct.TYPE_6__* @eth_hdr(%struct.sk_buff* %48)
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %53 = call %struct.TYPE_6__* @eth_hdr(%struct.sk_buff* %52)
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %57 = call %struct.TYPE_6__* @eth_hdr(%struct.sk_buff* %56)
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @ntohs(i64 %59)
  %61 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i64 %28, i8* %29, i8* %38, i8* %47, i32 %51, i32 %55, i32 %60)
  %62 = load %struct.nf_loginfo*, %struct.nf_loginfo** %13, align 8
  %63 = getelementptr inbounds %struct.nf_loginfo, %struct.nf_loginfo* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @NF_LOG_TYPE_LOG, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %46
  %68 = load %struct.nf_loginfo*, %struct.nf_loginfo** %13, align 8
  %69 = getelementptr inbounds %struct.nf_loginfo, %struct.nf_loginfo* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  store i32 %72, i32* %15, align 4
  br label %75

73:                                               ; preds = %46
  %74 = load i32, i32* @NF_LOG_MASK, align 4
  store i32 %74, i32* %15, align 4
  br label %75

75:                                               ; preds = %73, %67
  %76 = load i32, i32* %15, align 4
  %77 = load i32, i32* @EBT_LOG_IP, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %118

80:                                               ; preds = %75
  %81 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %82 = call %struct.TYPE_6__* @eth_hdr(%struct.sk_buff* %81)
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i32, i32* @ETH_P_IP, align 4
  %86 = call i64 @htons(i32 %85)
  %87 = icmp eq i64 %84, %86
  br i1 %87, label %88, label %118

88:                                               ; preds = %80
  %89 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %90 = bitcast %struct.iphdr* %17 to %struct.ipv6hdr*
  %91 = call %struct.ipv6hdr* @skb_header_pointer(%struct.sk_buff* %89, i32 0, i32 88, %struct.ipv6hdr* %90)
  %92 = bitcast %struct.ipv6hdr* %91 to %struct.iphdr*
  store %struct.iphdr* %92, %struct.iphdr** %16, align 8
  %93 = load %struct.iphdr*, %struct.iphdr** %16, align 8
  %94 = icmp eq %struct.iphdr* %93, null
  br i1 %94, label %95, label %97

95:                                               ; preds = %88
  %96 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %204

97:                                               ; preds = %88
  %98 = load %struct.iphdr*, %struct.iphdr** %16, align 8
  %99 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %98, i32 0, i32 13
  %100 = load %struct.iphdr*, %struct.iphdr** %16, align 8
  %101 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %100, i32 0, i32 12
  %102 = load %struct.iphdr*, %struct.iphdr** %16, align 8
  %103 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %102, i32 0, i32 15
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.iphdr*, %struct.iphdr** %16, align 8
  %106 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %105, i32 0, i32 14
  %107 = load i32, i32* %106, align 4
  %108 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32* %99, i32* %101, i32 %104, i32 %107)
  %109 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %110 = load %struct.iphdr*, %struct.iphdr** %16, align 8
  %111 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %110, i32 0, i32 14
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.iphdr*, %struct.iphdr** %16, align 8
  %114 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = mul nsw i32 %115, 4
  %117 = call i32 @print_ports(%struct.sk_buff* %109, i32 %112, i32 %116)
  br label %204

118:                                              ; preds = %80, %75
  %119 = load i32, i32* %15, align 4
  %120 = load i32, i32* @EBT_LOG_ARP, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %203

123:                                              ; preds = %118
  %124 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %125 = call %struct.TYPE_6__* @eth_hdr(%struct.sk_buff* %124)
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i32, i32* @ETH_P_ARP, align 4
  %129 = call i64 @htons(i32 %128)
  %130 = icmp eq i64 %127, %129
  br i1 %130, label %139, label %131

131:                                              ; preds = %123
  %132 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %133 = call %struct.TYPE_6__* @eth_hdr(%struct.sk_buff* %132)
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i32, i32* @ETH_P_RARP, align 4
  %137 = call i64 @htons(i32 %136)
  %138 = icmp eq i64 %135, %137
  br i1 %138, label %139, label %203

139:                                              ; preds = %131, %123
  %140 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %141 = bitcast %struct.arphdr* %19 to %struct.ipv6hdr*
  %142 = call %struct.ipv6hdr* @skb_header_pointer(%struct.sk_buff* %140, i32 0, i32 88, %struct.ipv6hdr* %141)
  %143 = bitcast %struct.ipv6hdr* %142 to %struct.arphdr*
  store %struct.arphdr* %143, %struct.arphdr** %18, align 8
  %144 = load %struct.arphdr*, %struct.arphdr** %18, align 8
  %145 = icmp eq %struct.arphdr* %144, null
  br i1 %145, label %146, label %148

146:                                              ; preds = %139
  %147 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %204

148:                                              ; preds = %139
  %149 = load %struct.arphdr*, %struct.arphdr** %18, align 8
  %150 = getelementptr inbounds %struct.arphdr, %struct.arphdr* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = call i32 @ntohs(i64 %151)
  %153 = load %struct.arphdr*, %struct.arphdr** %18, align 8
  %154 = getelementptr inbounds %struct.arphdr, %struct.arphdr* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = call i32 @ntohs(i64 %155)
  %157 = load %struct.arphdr*, %struct.arphdr** %18, align 8
  %158 = getelementptr inbounds %struct.arphdr, %struct.arphdr* %157, i32 0, i32 3
  %159 = load i64, i64* %158, align 8
  %160 = call i32 @ntohs(i64 %159)
  %161 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %152, i32 %156, i32 %160)
  %162 = load %struct.arphdr*, %struct.arphdr** %18, align 8
  %163 = getelementptr inbounds %struct.arphdr, %struct.arphdr* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = call i64 @htons(i32 1)
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %202

167:                                              ; preds = %148
  %168 = load %struct.arphdr*, %struct.arphdr** %18, align 8
  %169 = getelementptr inbounds %struct.arphdr, %struct.arphdr* %168, i32 0, i32 4
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @ETH_ALEN, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %202

173:                                              ; preds = %167
  %174 = load %struct.arphdr*, %struct.arphdr** %18, align 8
  %175 = getelementptr inbounds %struct.arphdr, %struct.arphdr* %174, i32 0, i32 5
  %176 = load i32, i32* %175, align 8
  %177 = sext i32 %176 to i64
  %178 = icmp eq i64 %177, 4
  br i1 %178, label %179, label %202

179:                                              ; preds = %173
  %180 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %181 = bitcast %struct.arppayload* %21 to %struct.ipv6hdr*
  %182 = call %struct.ipv6hdr* @skb_header_pointer(%struct.sk_buff* %180, i32 88, i32 88, %struct.ipv6hdr* %181)
  %183 = bitcast %struct.ipv6hdr* %182 to %struct.arppayload*
  store %struct.arppayload* %183, %struct.arppayload** %20, align 8
  %184 = load %struct.arppayload*, %struct.arppayload** %20, align 8
  %185 = icmp eq %struct.arppayload* %184, null
  br i1 %185, label %186, label %188

186:                                              ; preds = %179
  %187 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  br label %204

188:                                              ; preds = %179
  %189 = load %struct.arppayload*, %struct.arppayload** %20, align 8
  %190 = getelementptr inbounds %struct.arppayload, %struct.arppayload* %189, i32 0, i32 9
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.arppayload*, %struct.arppayload** %20, align 8
  %193 = getelementptr inbounds %struct.arppayload, %struct.arppayload* %192, i32 0, i32 8
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.arppayload*, %struct.arppayload** %20, align 8
  %196 = getelementptr inbounds %struct.arppayload, %struct.arppayload* %195, i32 0, i32 7
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.arppayload*, %struct.arppayload** %20, align 8
  %199 = getelementptr inbounds %struct.arppayload, %struct.arppayload* %198, i32 0, i32 6
  %200 = load i32, i32* %199, align 4
  %201 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.7, i64 0, i64 0), i32 %191, i32 %194, i32 %197, i32 %200)
  br label %202

202:                                              ; preds = %188, %173, %167, %148
  br label %203

203:                                              ; preds = %202, %131, %118
  br label %204

204:                                              ; preds = %203, %186, %146, %97, %95
  %205 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %206 = call i32 @spin_unlock_bh(i32* @ebt_log_lock)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local %struct.TYPE_6__* @eth_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ntohs(i64) #1

declare dso_local i64 @htons(i32) #1

declare dso_local %struct.ipv6hdr* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.ipv6hdr*) #1

declare dso_local i32 @print_ports(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
