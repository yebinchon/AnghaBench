; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_input.c_br_handle_frame_finish.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_input.c_br_handle_frame_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.net_bridge_port = type { i64, %struct.net_bridge* }
%struct.net_bridge = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.net_bridge_fdb_entry = type { i32, i64 }
%struct.net_bridge_mdb_entry = type { i64 }
%struct.TYPE_9__ = type { i8*, i32 }
%struct.TYPE_10__ = type { i64, %struct.TYPE_8__* }

@BR_STATE_DISABLED = common dso_local global i64 0, align 8
@BR_STATE_LEARNING = common dso_local global i64 0, align 8
@IFF_PROMISC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @br_handle_frame_finish(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.net_bridge_port*, align 8
  %6 = alloca %struct.net_bridge*, align 8
  %7 = alloca %struct.net_bridge_fdb_entry*, align 8
  %8 = alloca %struct.net_bridge_mdb_entry*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %11 = call %struct.TYPE_9__* @eth_hdr(%struct.sk_buff* %10)
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %4, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.net_bridge_port* @rcu_dereference(i32 %18)
  store %struct.net_bridge_port* %19, %struct.net_bridge_port** %5, align 8
  %20 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %21 = icmp ne %struct.net_bridge_port* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %1
  %23 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %24 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @BR_STATE_DISABLED, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22, %1
  br label %174

29:                                               ; preds = %22
  %30 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %31 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %30, i32 0, i32 1
  %32 = load %struct.net_bridge*, %struct.net_bridge** %31, align 8
  store %struct.net_bridge* %32, %struct.net_bridge** %6, align 8
  %33 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %34 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %36 = call %struct.TYPE_9__* @eth_hdr(%struct.sk_buff* %35)
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @br_fdb_update(%struct.net_bridge* %33, %struct.net_bridge_port* %34, i32 %38)
  %40 = load i8*, i8** %4, align 8
  %41 = call i64 @is_broadcast_ether_addr(i8* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %54, label %43

43:                                               ; preds = %29
  %44 = load i8*, i8** %4, align 8
  %45 = call i64 @is_multicast_ether_addr(i8* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %49 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %51 = call i64 @br_multicast_rcv(%struct.net_bridge* %48, %struct.net_bridge_port* %49, %struct.sk_buff* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %174

54:                                               ; preds = %47, %43, %29
  %55 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %56 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @BR_STATE_LEARNING, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %174

61:                                               ; preds = %54
  %62 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %63 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %62, i32 0, i32 0
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %66 = call %struct.TYPE_10__* @BR_INPUT_SKB_CB(%struct.sk_buff* %65)
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  store %struct.TYPE_8__* %64, %struct.TYPE_8__** %67, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %9, align 8
  %68 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %69 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %68, i32 0, i32 0
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @IFF_PROMISC, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %61
  %77 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  store %struct.sk_buff* %77, %struct.sk_buff** %9, align 8
  br label %78

78:                                               ; preds = %76, %61
  store %struct.net_bridge_fdb_entry* null, %struct.net_bridge_fdb_entry** %7, align 8
  %79 = load i8*, i8** %4, align 8
  %80 = call i64 @is_broadcast_ether_addr(i8* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  store %struct.sk_buff* %83, %struct.sk_buff** %9, align 8
  br label %147

84:                                               ; preds = %78
  %85 = load i8*, i8** %4, align 8
  %86 = call i64 @is_multicast_ether_addr(i8* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %133

88:                                               ; preds = %84
  %89 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %90 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %91 = call %struct.net_bridge_mdb_entry* @br_mdb_get(%struct.net_bridge* %89, %struct.sk_buff* %90)
  store %struct.net_bridge_mdb_entry* %91, %struct.net_bridge_mdb_entry** %8, align 8
  %92 = load %struct.net_bridge_mdb_entry*, %struct.net_bridge_mdb_entry** %8, align 8
  %93 = icmp ne %struct.net_bridge_mdb_entry* %92, null
  br i1 %93, label %100, label %94

94:                                               ; preds = %88
  %95 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %96 = call %struct.TYPE_10__* @BR_INPUT_SKB_CB(%struct.sk_buff* %95)
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %123

100:                                              ; preds = %94, %88
  %101 = load %struct.net_bridge_mdb_entry*, %struct.net_bridge_mdb_entry** %8, align 8
  %102 = icmp ne %struct.net_bridge_mdb_entry* %101, null
  br i1 %102, label %103, label %108

103:                                              ; preds = %100
  %104 = load %struct.net_bridge_mdb_entry*, %struct.net_bridge_mdb_entry** %8, align 8
  %105 = getelementptr inbounds %struct.net_bridge_mdb_entry, %struct.net_bridge_mdb_entry* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %103, %100
  %109 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %110 = call i64 @br_multicast_is_router(%struct.net_bridge* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %108, %103
  %113 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  store %struct.sk_buff* %113, %struct.sk_buff** %9, align 8
  br label %114

114:                                              ; preds = %112, %108
  %115 = load %struct.net_bridge_mdb_entry*, %struct.net_bridge_mdb_entry** %8, align 8
  %116 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %117 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %118 = call i32 @br_multicast_forward(%struct.net_bridge_mdb_entry* %115, %struct.sk_buff* %116, %struct.sk_buff* %117)
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  %119 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %120 = icmp ne %struct.sk_buff* %119, null
  br i1 %120, label %122, label %121

121:                                              ; preds = %114
  br label %173

122:                                              ; preds = %114
  br label %125

123:                                              ; preds = %94
  %124 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  store %struct.sk_buff* %124, %struct.sk_buff** %9, align 8
  br label %125

125:                                              ; preds = %123, %122
  %126 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %127 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %126, i32 0, i32 0
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %130, align 4
  br label %146

133:                                              ; preds = %84
  %134 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %135 = load i8*, i8** %4, align 8
  %136 = call %struct.net_bridge_fdb_entry* @__br_fdb_get(%struct.net_bridge* %134, i8* %135)
  store %struct.net_bridge_fdb_entry* %136, %struct.net_bridge_fdb_entry** %7, align 8
  %137 = icmp ne %struct.net_bridge_fdb_entry* %136, null
  br i1 %137, label %138, label %145

138:                                              ; preds = %133
  %139 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %7, align 8
  %140 = getelementptr inbounds %struct.net_bridge_fdb_entry, %struct.net_bridge_fdb_entry* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %138
  %144 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  store %struct.sk_buff* %144, %struct.sk_buff** %9, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %145

145:                                              ; preds = %143, %138, %133
  br label %146

146:                                              ; preds = %145, %125
  br label %147

147:                                              ; preds = %146, %82
  %148 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %149 = icmp ne %struct.sk_buff* %148, null
  br i1 %149, label %150, label %166

150:                                              ; preds = %147
  %151 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %7, align 8
  %152 = icmp ne %struct.net_bridge_fdb_entry* %151, null
  br i1 %152, label %153, label %160

153:                                              ; preds = %150
  %154 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %7, align 8
  %155 = getelementptr inbounds %struct.net_bridge_fdb_entry, %struct.net_bridge_fdb_entry* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %158 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %159 = call i32 @br_forward(i32 %156, %struct.sk_buff* %157, %struct.sk_buff* %158)
  br label %165

160:                                              ; preds = %150
  %161 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %162 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %163 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %164 = call i32 @br_flood_forward(%struct.net_bridge* %161, %struct.sk_buff* %162, %struct.sk_buff* %163)
  br label %165

165:                                              ; preds = %160, %153
  br label %166

166:                                              ; preds = %165, %147
  %167 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %168 = icmp ne %struct.sk_buff* %167, null
  br i1 %168, label %169, label %172

169:                                              ; preds = %166
  %170 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %171 = call i32 @br_pass_frame_up(%struct.sk_buff* %170)
  store i32 %171, i32* %2, align 4
  br label %177

172:                                              ; preds = %166
  br label %173

173:                                              ; preds = %174, %172, %121
  store i32 0, i32* %2, align 4
  br label %177

174:                                              ; preds = %60, %53, %28
  %175 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %176 = call i32 @kfree_skb(%struct.sk_buff* %175)
  br label %173

177:                                              ; preds = %173, %169
  %178 = load i32, i32* %2, align 4
  ret i32 %178
}

declare dso_local %struct.TYPE_9__* @eth_hdr(%struct.sk_buff*) #1

declare dso_local %struct.net_bridge_port* @rcu_dereference(i32) #1

declare dso_local i32 @br_fdb_update(%struct.net_bridge*, %struct.net_bridge_port*, i32) #1

declare dso_local i64 @is_broadcast_ether_addr(i8*) #1

declare dso_local i64 @is_multicast_ether_addr(i8*) #1

declare dso_local i64 @br_multicast_rcv(%struct.net_bridge*, %struct.net_bridge_port*, %struct.sk_buff*) #1

declare dso_local %struct.TYPE_10__* @BR_INPUT_SKB_CB(%struct.sk_buff*) #1

declare dso_local %struct.net_bridge_mdb_entry* @br_mdb_get(%struct.net_bridge*, %struct.sk_buff*) #1

declare dso_local i64 @br_multicast_is_router(%struct.net_bridge*) #1

declare dso_local i32 @br_multicast_forward(%struct.net_bridge_mdb_entry*, %struct.sk_buff*, %struct.sk_buff*) #1

declare dso_local %struct.net_bridge_fdb_entry* @__br_fdb_get(%struct.net_bridge*, i8*) #1

declare dso_local i32 @br_forward(i32, %struct.sk_buff*, %struct.sk_buff*) #1

declare dso_local i32 @br_flood_forward(%struct.net_bridge*, %struct.sk_buff*, %struct.sk_buff*) #1

declare dso_local i32 @br_pass_frame_up(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
