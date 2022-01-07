; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_af_inet.c_inet_gro_receive.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_af_inet.c_inet_gro_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.sk_buff* }
%struct.net_offload = type { %struct.sk_buff** (%struct.sk_buff**, %struct.sk_buff*)* }
%struct.net_protocol = type { %struct.sk_buff** (%struct.sk_buff**, %struct.sk_buff*)* }
%struct.iphdr = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i64, i64 }

@MAX_INET_PROTOS = common dso_local global i32 0, align 4
@inet_offloads = common dso_local global i32* null, align 8
@inet_protos = common dso_local global i32* null, align 8
@IP_DF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff** (%struct.sk_buff**, %struct.sk_buff*)* @inet_gro_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff** @inet_gro_receive(%struct.sk_buff** %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sk_buff**, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_offload*, align 8
  %6 = alloca %struct.net_protocol*, align 8
  %7 = alloca %struct.sk_buff**, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.iphdr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.iphdr*, align 8
  store %struct.sk_buff** %0, %struct.sk_buff*** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  store %struct.net_protocol* null, %struct.net_protocol** %6, align 8
  store %struct.sk_buff** null, %struct.sk_buff*** %7, align 8
  store i32 1, i32* %13, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = call i32 @skb_gro_offset(%struct.sk_buff* %16)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = zext i32 %18 to i64
  %20 = add i64 %19, 28
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %10, align 4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = load i32, i32* %11, align 4
  %24 = call %struct.iphdr* @skb_gro_header_fast(%struct.sk_buff* %22, i32 %23)
  store %struct.iphdr* %24, %struct.iphdr** %9, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = load i32, i32* %10, align 4
  %27 = call i64 @skb_gro_header_hard(%struct.sk_buff* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %2
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %11, align 4
  %33 = call %struct.iphdr* @skb_gro_header_slow(%struct.sk_buff* %30, i32 %31, i32 %32)
  store %struct.iphdr* %33, %struct.iphdr** %9, align 8
  %34 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %35 = icmp ne %struct.iphdr* %34, null
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  br label %234

41:                                               ; preds = %29
  br label %42

42:                                               ; preds = %41, %2
  %43 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %44 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @MAX_INET_PROTOS, align 4
  %47 = sub nsw i32 %46, 1
  %48 = and i32 %45, %47
  store i32 %48, i32* %14, align 4
  %49 = call i32 (...) @rcu_read_lock()
  %50 = load i32*, i32** @inet_offloads, align 8
  %51 = load i32, i32* %14, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i8* @rcu_dereference(i32 %54)
  %56 = bitcast i8* %55 to %struct.net_offload*
  store %struct.net_offload* %56, %struct.net_offload** %5, align 8
  %57 = load %struct.net_offload*, %struct.net_offload** %5, align 8
  %58 = icmp ne %struct.net_offload* %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %42
  %60 = load %struct.net_offload*, %struct.net_offload** %5, align 8
  %61 = getelementptr inbounds %struct.net_offload, %struct.net_offload* %60, i32 0, i32 0
  %62 = load %struct.sk_buff** (%struct.sk_buff**, %struct.sk_buff*)*, %struct.sk_buff** (%struct.sk_buff**, %struct.sk_buff*)** %61, align 8
  %63 = icmp ne %struct.sk_buff** (%struct.sk_buff**, %struct.sk_buff*)* %62, null
  br i1 %63, label %81, label %64

64:                                               ; preds = %59, %42
  %65 = load i32*, i32** @inet_protos, align 8
  %66 = load i32, i32* %14, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i8* @rcu_dereference(i32 %69)
  %71 = bitcast i8* %70 to %struct.net_protocol*
  store %struct.net_protocol* %71, %struct.net_protocol** %6, align 8
  %72 = load %struct.net_protocol*, %struct.net_protocol** %6, align 8
  %73 = icmp ne %struct.net_protocol* %72, null
  br i1 %73, label %74, label %79

74:                                               ; preds = %64
  %75 = load %struct.net_protocol*, %struct.net_protocol** %6, align 8
  %76 = getelementptr inbounds %struct.net_protocol, %struct.net_protocol* %75, i32 0, i32 0
  %77 = load %struct.sk_buff** (%struct.sk_buff**, %struct.sk_buff*)*, %struct.sk_buff** (%struct.sk_buff**, %struct.sk_buff*)** %76, align 8
  %78 = icmp ne %struct.sk_buff** (%struct.sk_buff**, %struct.sk_buff*)* %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %74, %64
  br label %232

80:                                               ; preds = %74
  store %struct.net_offload* null, %struct.net_offload** %5, align 8
  br label %81

81:                                               ; preds = %80, %59
  %82 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %83 = bitcast %struct.iphdr* %82 to i32*
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 69
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  br label %232

87:                                               ; preds = %81
  %88 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %89 = bitcast %struct.iphdr* %88 to i32*
  %90 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %91 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @ip_fast_csum(i32* %89, i32 %92)
  %94 = call i64 @unlikely(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %87
  br label %232

97:                                               ; preds = %87
  %98 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %99 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @ntohl(i32 %100)
  store i32 %101, i32* %12, align 4
  %102 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %103 = bitcast %struct.iphdr* %102 to i32*
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @ntohl(i32 %104)
  %106 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %107 = call i32 @skb_gro_len(%struct.sk_buff* %106)
  %108 = xor i32 %105, %107
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* @IP_DF, align 4
  %111 = xor i32 %109, %110
  %112 = or i32 %108, %111
  store i32 %112, i32* %13, align 4
  %113 = load i32, i32* %12, align 4
  %114 = lshr i32 %113, 16
  store i32 %114, i32* %12, align 4
  %115 = load %struct.sk_buff**, %struct.sk_buff*** %3, align 8
  %116 = load %struct.sk_buff*, %struct.sk_buff** %115, align 8
  store %struct.sk_buff* %116, %struct.sk_buff** %8, align 8
  br label %117

117:                                              ; preds = %198, %97
  %118 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %119 = icmp ne %struct.sk_buff* %118, null
  br i1 %119, label %120, label %202

120:                                              ; preds = %117
  %121 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %122 = call %struct.TYPE_2__* @NAPI_GRO_CB(%struct.sk_buff* %121)
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %120
  br label %198

127:                                              ; preds = %120
  %128 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %129 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %128)
  store %struct.iphdr* %129, %struct.iphdr** %15, align 8
  %130 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %131 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %134 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = xor i32 %132, %135
  %137 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %138 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %141 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = xor i32 %139, %142
  %144 = or i32 %136, %143
  %145 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %146 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %149 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = xor i32 %147, %150
  %152 = or i32 %144, %151
  %153 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %154 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %157 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = xor i32 %155, %158
  %160 = or i32 %152, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %127
  %163 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %164 = call %struct.TYPE_2__* @NAPI_GRO_CB(%struct.sk_buff* %163)
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 2
  store i64 0, i64* %165, align 8
  br label %198

166:                                              ; preds = %127
  %167 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %168 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %167, i32 0, i32 4
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %171 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %170, i32 0, i32 4
  %172 = load i32, i32* %171, align 4
  %173 = xor i32 %169, %172
  %174 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %175 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %174, i32 0, i32 5
  %176 = load i32, i32* %175, align 4
  %177 = call i64 @ntohs(i32 %176)
  %178 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %179 = call %struct.TYPE_2__* @NAPI_GRO_CB(%struct.sk_buff* %178)
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = add nsw i64 %177, %181
  %183 = trunc i64 %182 to i32
  %184 = load i32, i32* %12, align 4
  %185 = xor i32 %183, %184
  %186 = or i32 %173, %185
  %187 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %188 = call %struct.TYPE_2__* @NAPI_GRO_CB(%struct.sk_buff* %187)
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = or i32 %190, %186
  store i32 %191, i32* %189, align 8
  %192 = load i32, i32* %13, align 4
  %193 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %194 = call %struct.TYPE_2__* @NAPI_GRO_CB(%struct.sk_buff* %193)
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = or i32 %196, %192
  store i32 %197, i32* %195, align 8
  br label %198

198:                                              ; preds = %166, %162, %126
  %199 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %200 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %199, i32 0, i32 0
  %201 = load %struct.sk_buff*, %struct.sk_buff** %200, align 8
  store %struct.sk_buff* %201, %struct.sk_buff** %8, align 8
  br label %117

202:                                              ; preds = %117
  %203 = load i32, i32* %13, align 4
  %204 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %205 = call %struct.TYPE_2__* @NAPI_GRO_CB(%struct.sk_buff* %204)
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = or i32 %207, %203
  store i32 %208, i32* %206, align 8
  %209 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %210 = call i32 @skb_gro_pull(%struct.sk_buff* %209, i32 28)
  %211 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %212 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %213 = call i32 @skb_gro_offset(%struct.sk_buff* %212)
  %214 = call i32 @skb_set_transport_header(%struct.sk_buff* %211, i32 %213)
  %215 = load %struct.net_offload*, %struct.net_offload** %5, align 8
  %216 = icmp ne %struct.net_offload* %215, null
  br i1 %216, label %217, label %224

217:                                              ; preds = %202
  %218 = load %struct.net_offload*, %struct.net_offload** %5, align 8
  %219 = getelementptr inbounds %struct.net_offload, %struct.net_offload* %218, i32 0, i32 0
  %220 = load %struct.sk_buff** (%struct.sk_buff**, %struct.sk_buff*)*, %struct.sk_buff** (%struct.sk_buff**, %struct.sk_buff*)** %219, align 8
  %221 = load %struct.sk_buff**, %struct.sk_buff*** %3, align 8
  %222 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %223 = call %struct.sk_buff** %220(%struct.sk_buff** %221, %struct.sk_buff* %222)
  store %struct.sk_buff** %223, %struct.sk_buff*** %7, align 8
  br label %231

224:                                              ; preds = %202
  %225 = load %struct.net_protocol*, %struct.net_protocol** %6, align 8
  %226 = getelementptr inbounds %struct.net_protocol, %struct.net_protocol* %225, i32 0, i32 0
  %227 = load %struct.sk_buff** (%struct.sk_buff**, %struct.sk_buff*)*, %struct.sk_buff** (%struct.sk_buff**, %struct.sk_buff*)** %226, align 8
  %228 = load %struct.sk_buff**, %struct.sk_buff*** %3, align 8
  %229 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %230 = call %struct.sk_buff** %227(%struct.sk_buff** %228, %struct.sk_buff* %229)
  store %struct.sk_buff** %230, %struct.sk_buff*** %7, align 8
  br label %231

231:                                              ; preds = %224, %217
  br label %232

232:                                              ; preds = %231, %96, %86, %79
  %233 = call i32 (...) @rcu_read_unlock()
  br label %234

234:                                              ; preds = %232, %40
  %235 = load i32, i32* %13, align 4
  %236 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %237 = call %struct.TYPE_2__* @NAPI_GRO_CB(%struct.sk_buff* %236)
  %238 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = or i32 %239, %235
  store i32 %240, i32* %238, align 8
  %241 = load %struct.sk_buff**, %struct.sk_buff*** %7, align 8
  ret %struct.sk_buff** %241
}

declare dso_local i32 @skb_gro_offset(%struct.sk_buff*) #1

declare dso_local %struct.iphdr* @skb_gro_header_fast(%struct.sk_buff*, i32) #1

declare dso_local i64 @skb_gro_header_hard(%struct.sk_buff*, i32) #1

declare dso_local %struct.iphdr* @skb_gro_header_slow(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i8* @rcu_dereference(i32) #1

declare dso_local i32 @ip_fast_csum(i32*, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @skb_gro_len(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @NAPI_GRO_CB(%struct.sk_buff*) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @skb_gro_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_set_transport_header(%struct.sk_buff*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
