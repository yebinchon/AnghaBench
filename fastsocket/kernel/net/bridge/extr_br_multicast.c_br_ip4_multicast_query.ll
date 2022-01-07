; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_multicast.c_br_ip4_multicast_query.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_multicast.c_br_ip4_multicast_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge = type { i64, i64, i32, i32, i32 }
%struct.net_bridge_port = type { i64 }
%struct.sk_buff = type { i32 }
%struct.iphdr = type { i32 }
%struct.igmphdr = type { i32, i64 }
%struct.net_bridge_mdb_entry = type { i32, %struct.net_bridge_port_group*, %struct.TYPE_4__, i64 }
%struct.net_bridge_port_group = type { %struct.TYPE_4__, %struct.net_bridge_port_group* }
%struct.TYPE_4__ = type { i32 }
%struct.igmpv3_query = type { i64, i64 }

@jiffies = common dso_local global i64 0, align 8
@BR_STATE_DISABLED = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@IGMP_TIMER_SCALE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_bridge*, %struct.net_bridge_port*, %struct.sk_buff*)* @br_ip4_multicast_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @br_ip4_multicast_query(%struct.net_bridge* %0, %struct.net_bridge_port* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.net_bridge*, align 8
  %5 = alloca %struct.net_bridge_port*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.iphdr*, align 8
  %8 = alloca %struct.igmphdr*, align 8
  %9 = alloca %struct.net_bridge_mdb_entry*, align 8
  %10 = alloca %struct.igmpv3_query*, align 8
  %11 = alloca %struct.net_bridge_port_group*, align 8
  %12 = alloca %struct.net_bridge_port_group**, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.net_bridge* %0, %struct.net_bridge** %4, align 8
  store %struct.net_bridge_port* %1, %struct.net_bridge_port** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %17)
  store %struct.iphdr* %18, %struct.iphdr** %7, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = call %struct.igmphdr* @igmp_hdr(%struct.sk_buff* %19)
  store %struct.igmphdr* %20, %struct.igmphdr** %8, align 8
  %21 = load i64, i64* @jiffies, align 8
  store i64 %21, i64* %14, align 8
  store i32 0, i32* %16, align 4
  %22 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %23 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %22, i32 0, i32 2
  %24 = call i32 @spin_lock(i32* %23)
  %25 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %26 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @netif_running(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %3
  %31 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %32 = icmp ne %struct.net_bridge_port* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %35 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @BR_STATE_DISABLED, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33, %3
  br label %207

40:                                               ; preds = %33, %30
  %41 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %42 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %43 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %44 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = call i32 @br_multicast_query_received(%struct.net_bridge* %41, %struct.net_bridge_port* %42, i32 %49)
  %51 = load %struct.igmphdr*, %struct.igmphdr** %8, align 8
  %52 = getelementptr inbounds %struct.igmphdr, %struct.igmphdr* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %15, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = icmp eq i64 %57, 16
  br i1 %58, label %59, label %75

59:                                               ; preds = %40
  %60 = load %struct.igmphdr*, %struct.igmphdr** %8, align 8
  %61 = getelementptr inbounds %struct.igmphdr, %struct.igmphdr* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @HZ, align 4
  %64 = load i32, i32* @IGMP_TIMER_SCALE, align 4
  %65 = sdiv i32 %63, %64
  %66 = mul nsw i32 %62, %65
  %67 = sext i32 %66 to i64
  store i64 %67, i64* %13, align 8
  %68 = load i64, i64* %13, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %59
  %71 = load i32, i32* @HZ, align 4
  %72 = mul nsw i32 10, %71
  %73 = sext i32 %72 to i64
  store i64 %73, i64* %13, align 8
  store i64 0, i64* %15, align 8
  br label %74

74:                                               ; preds = %70, %59
  br label %108

75:                                               ; preds = %40
  %76 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %77 = call i32 @pskb_may_pull(%struct.sk_buff* %76, i32 16)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %75
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %16, align 4
  br label %207

82:                                               ; preds = %75
  %83 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %84 = call %struct.igmpv3_query* @igmpv3_query_hdr(%struct.sk_buff* %83)
  store %struct.igmpv3_query* %84, %struct.igmpv3_query** %10, align 8
  %85 = load %struct.igmpv3_query*, %struct.igmpv3_query** %10, align 8
  %86 = getelementptr inbounds %struct.igmpv3_query, %struct.igmpv3_query* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  br label %207

90:                                               ; preds = %82
  %91 = load %struct.igmpv3_query*, %struct.igmpv3_query** %10, align 8
  %92 = getelementptr inbounds %struct.igmpv3_query, %struct.igmpv3_query* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  br label %105

96:                                               ; preds = %90
  %97 = load %struct.igmpv3_query*, %struct.igmpv3_query** %10, align 8
  %98 = getelementptr inbounds %struct.igmpv3_query, %struct.igmpv3_query* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @IGMPV3_MRC(i64 %99)
  %101 = load i32, i32* @HZ, align 4
  %102 = load i32, i32* @IGMP_TIMER_SCALE, align 4
  %103 = sdiv i32 %101, %102
  %104 = mul nsw i32 %100, %103
  br label %105

105:                                              ; preds = %96, %95
  %106 = phi i32 [ 1, %95 ], [ %104, %96 ]
  %107 = sext i32 %106 to i64
  store i64 %107, i64* %13, align 8
  br label %108

108:                                              ; preds = %105, %74
  %109 = load i64, i64* %15, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %108
  br label %207

112:                                              ; preds = %108
  %113 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %114 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = load i64, i64* %15, align 8
  %117 = call %struct.net_bridge_mdb_entry* @br_mdb_ip4_get(i32 %115, i64 %116)
  store %struct.net_bridge_mdb_entry* %117, %struct.net_bridge_mdb_entry** %9, align 8
  %118 = load %struct.net_bridge_mdb_entry*, %struct.net_bridge_mdb_entry** %9, align 8
  %119 = icmp ne %struct.net_bridge_mdb_entry* %118, null
  br i1 %119, label %121, label %120

120:                                              ; preds = %112
  br label %207

121:                                              ; preds = %112
  %122 = load %struct.net_bridge_mdb_entry*, %struct.net_bridge_mdb_entry** %9, align 8
  %123 = getelementptr inbounds %struct.net_bridge_mdb_entry, %struct.net_bridge_mdb_entry* %122, i32 0, i32 2
  %124 = load i64, i64* %14, align 8
  %125 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %126 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = add i64 %124, %127
  %129 = call i32 @mod_timer(%struct.TYPE_4__* %123, i64 %128)
  %130 = load %struct.net_bridge_mdb_entry*, %struct.net_bridge_mdb_entry** %9, align 8
  %131 = getelementptr inbounds %struct.net_bridge_mdb_entry, %struct.net_bridge_mdb_entry* %130, i32 0, i32 0
  store i32 1, i32* %131, align 8
  %132 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %133 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* %13, align 8
  %136 = mul i64 %135, %134
  store i64 %136, i64* %13, align 8
  %137 = load %struct.net_bridge_mdb_entry*, %struct.net_bridge_mdb_entry** %9, align 8
  %138 = getelementptr inbounds %struct.net_bridge_mdb_entry, %struct.net_bridge_mdb_entry* %137, i32 0, i32 3
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %168

141:                                              ; preds = %121
  %142 = load %struct.net_bridge_mdb_entry*, %struct.net_bridge_mdb_entry** %9, align 8
  %143 = getelementptr inbounds %struct.net_bridge_mdb_entry, %struct.net_bridge_mdb_entry* %142, i32 0, i32 2
  %144 = call i64 @timer_pending(%struct.TYPE_4__* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %156

146:                                              ; preds = %141
  %147 = load %struct.net_bridge_mdb_entry*, %struct.net_bridge_mdb_entry** %9, align 8
  %148 = getelementptr inbounds %struct.net_bridge_mdb_entry, %struct.net_bridge_mdb_entry* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i64, i64* %14, align 8
  %152 = load i64, i64* %13, align 8
  %153 = add i64 %151, %152
  %154 = call i32 @time_after(i32 %150, i64 %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %161, label %168

156:                                              ; preds = %141
  %157 = load %struct.net_bridge_mdb_entry*, %struct.net_bridge_mdb_entry** %9, align 8
  %158 = getelementptr inbounds %struct.net_bridge_mdb_entry, %struct.net_bridge_mdb_entry* %157, i32 0, i32 2
  %159 = call i64 @try_to_del_timer_sync(%struct.TYPE_4__* %158)
  %160 = icmp sge i64 %159, 0
  br i1 %160, label %161, label %168

161:                                              ; preds = %156, %146
  %162 = load %struct.net_bridge_mdb_entry*, %struct.net_bridge_mdb_entry** %9, align 8
  %163 = getelementptr inbounds %struct.net_bridge_mdb_entry, %struct.net_bridge_mdb_entry* %162, i32 0, i32 2
  %164 = load i64, i64* %14, align 8
  %165 = load i64, i64* %13, align 8
  %166 = add i64 %164, %165
  %167 = call i32 @mod_timer(%struct.TYPE_4__* %163, i64 %166)
  br label %168

168:                                              ; preds = %161, %156, %146, %121
  %169 = load %struct.net_bridge_mdb_entry*, %struct.net_bridge_mdb_entry** %9, align 8
  %170 = getelementptr inbounds %struct.net_bridge_mdb_entry, %struct.net_bridge_mdb_entry* %169, i32 0, i32 1
  store %struct.net_bridge_port_group** %170, %struct.net_bridge_port_group*** %12, align 8
  br label %171

171:                                              ; preds = %203, %168
  %172 = load %struct.net_bridge_port_group**, %struct.net_bridge_port_group*** %12, align 8
  %173 = load %struct.net_bridge_port_group*, %struct.net_bridge_port_group** %172, align 8
  store %struct.net_bridge_port_group* %173, %struct.net_bridge_port_group** %11, align 8
  %174 = icmp ne %struct.net_bridge_port_group* %173, null
  br i1 %174, label %175, label %206

175:                                              ; preds = %171
  %176 = load %struct.net_bridge_port_group*, %struct.net_bridge_port_group** %11, align 8
  %177 = getelementptr inbounds %struct.net_bridge_port_group, %struct.net_bridge_port_group* %176, i32 0, i32 0
  %178 = call i64 @timer_pending(%struct.TYPE_4__* %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %190

180:                                              ; preds = %175
  %181 = load %struct.net_bridge_port_group*, %struct.net_bridge_port_group** %11, align 8
  %182 = getelementptr inbounds %struct.net_bridge_port_group, %struct.net_bridge_port_group* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load i64, i64* %14, align 8
  %186 = load i64, i64* %13, align 8
  %187 = add i64 %185, %186
  %188 = call i32 @time_after(i32 %184, i64 %187)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %195, label %202

190:                                              ; preds = %175
  %191 = load %struct.net_bridge_port_group*, %struct.net_bridge_port_group** %11, align 8
  %192 = getelementptr inbounds %struct.net_bridge_port_group, %struct.net_bridge_port_group* %191, i32 0, i32 0
  %193 = call i64 @try_to_del_timer_sync(%struct.TYPE_4__* %192)
  %194 = icmp sge i64 %193, 0
  br i1 %194, label %195, label %202

195:                                              ; preds = %190, %180
  %196 = load %struct.net_bridge_port_group*, %struct.net_bridge_port_group** %11, align 8
  %197 = getelementptr inbounds %struct.net_bridge_port_group, %struct.net_bridge_port_group* %196, i32 0, i32 0
  %198 = load i64, i64* %14, align 8
  %199 = load i64, i64* %13, align 8
  %200 = add i64 %198, %199
  %201 = call i32 @mod_timer(%struct.TYPE_4__* %197, i64 %200)
  br label %202

202:                                              ; preds = %195, %190, %180
  br label %203

203:                                              ; preds = %202
  %204 = load %struct.net_bridge_port_group*, %struct.net_bridge_port_group** %11, align 8
  %205 = getelementptr inbounds %struct.net_bridge_port_group, %struct.net_bridge_port_group* %204, i32 0, i32 1
  store %struct.net_bridge_port_group** %205, %struct.net_bridge_port_group*** %12, align 8
  br label %171

206:                                              ; preds = %171
  br label %207

207:                                              ; preds = %206, %120, %111, %89, %79, %39
  %208 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %209 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %208, i32 0, i32 2
  %210 = call i32 @spin_unlock(i32* %209)
  %211 = load i32, i32* %16, align 4
  ret i32 %211
}

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local %struct.igmphdr* @igmp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @netif_running(i32) #1

declare dso_local i32 @br_multicast_query_received(%struct.net_bridge*, %struct.net_bridge_port*, i32) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.igmpv3_query* @igmpv3_query_hdr(%struct.sk_buff*) #1

declare dso_local i32 @IGMPV3_MRC(i64) #1

declare dso_local %struct.net_bridge_mdb_entry* @br_mdb_ip4_get(i32, i64) #1

declare dso_local i32 @mod_timer(%struct.TYPE_4__*, i64) #1

declare dso_local i64 @timer_pending(%struct.TYPE_4__*) #1

declare dso_local i32 @time_after(i32, i64) #1

declare dso_local i64 @try_to_del_timer_sync(%struct.TYPE_4__*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
