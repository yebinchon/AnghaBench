; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_raw.c_raw_send_hdrinc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_raw.c_raw_send_hdrinc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32 }
%struct.rtable = type { %struct.TYPE_7__, i64, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.inet_sock = type { i32, i32 }
%struct.net = type { i32 }
%struct.iphdr = type { i32, i64, i64, i32, i32, i64 }
%struct.sk_buff = type { i32, i32, i32, i32, i32 }
%struct.icmphdr = type { i32 }

@EMSGSIZE = common dso_local global i32 0, align 4
@MSG_PROBE = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@CHECKSUM_NONE = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IPPROTO_ICMP = common dso_local global i64 0, align 8
@PF_INET = common dso_local global i32 0, align 4
@NF_INET_LOCAL_OUT = common dso_local global i32 0, align 4
@dst_output = common dso_local global i32 0, align 4
@IPSTATS_MIB_OUTDISCARDS = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, i8*, i64, %struct.rtable*, i32)* @raw_send_hdrinc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raw_send_hdrinc(%struct.sock* %0, i8* %1, i64 %2, %struct.rtable* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sock*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.rtable*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.inet_sock*, align 8
  %13 = alloca %struct.net*, align 8
  %14 = alloca %struct.iphdr*, align 8
  %15 = alloca %struct.sk_buff*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.rtable* %3, %struct.rtable** %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load %struct.sock*, %struct.sock** %7, align 8
  %19 = call %struct.inet_sock* @inet_sk(%struct.sock* %18)
  store %struct.inet_sock* %19, %struct.inet_sock** %12, align 8
  %20 = load %struct.sock*, %struct.sock** %7, align 8
  %21 = call %struct.net* @sock_net(%struct.sock* %20)
  store %struct.net* %21, %struct.net** %13, align 8
  %22 = load i64, i64* %9, align 8
  %23 = load %struct.rtable*, %struct.rtable** %10, align 8
  %24 = getelementptr inbounds %struct.rtable, %struct.rtable* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ugt i64 %22, %29
  br i1 %30, label %31, label %50

31:                                               ; preds = %5
  %32 = load %struct.sock*, %struct.sock** %7, align 8
  %33 = load i32, i32* @EMSGSIZE, align 4
  %34 = load %struct.rtable*, %struct.rtable** %10, align 8
  %35 = getelementptr inbounds %struct.rtable, %struct.rtable* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.inet_sock*, %struct.inet_sock** %12, align 8
  %38 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.rtable*, %struct.rtable** %10, align 8
  %41 = getelementptr inbounds %struct.rtable, %struct.rtable* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @ip_local_error(%struct.sock* %32, i32 %33, i32 %36, i32 %39, i64 %46)
  %48 = load i32, i32* @EMSGSIZE, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %6, align 4
  br label %231

50:                                               ; preds = %5
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @MSG_PROBE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %211

56:                                               ; preds = %50
  %57 = load %struct.sock*, %struct.sock** %7, align 8
  %58 = load i64, i64* %9, align 8
  %59 = load %struct.rtable*, %struct.rtable** %10, align 8
  %60 = getelementptr inbounds %struct.rtable, %struct.rtable* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %62, align 8
  %64 = call i64 @LL_ALLOCATED_SPACE(%struct.TYPE_9__* %63)
  %65 = add i64 %58, %64
  %66 = add i64 %65, 15
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* @MSG_DONTWAIT, align 4
  %69 = and i32 %67, %68
  %70 = call %struct.sk_buff* @sock_alloc_send_skb(%struct.sock* %57, i64 %66, i32 %69, i32* %17)
  store %struct.sk_buff* %70, %struct.sk_buff** %15, align 8
  %71 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %72 = icmp eq %struct.sk_buff* %71, null
  br i1 %72, label %73, label %74

73:                                               ; preds = %56
  br label %215

74:                                               ; preds = %56
  %75 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %76 = load %struct.rtable*, %struct.rtable** %10, align 8
  %77 = getelementptr inbounds %struct.rtable, %struct.rtable* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %79, align 8
  %81 = call i32 @LL_RESERVED_SPACE(%struct.TYPE_9__* %80)
  %82 = call i32 @skb_reserve(%struct.sk_buff* %75, i32 %81)
  %83 = load %struct.sock*, %struct.sock** %7, align 8
  %84 = getelementptr inbounds %struct.sock, %struct.sock* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %87 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %86, i32 0, i32 4
  store i32 %85, i32* %87, align 4
  %88 = load %struct.sock*, %struct.sock** %7, align 8
  %89 = getelementptr inbounds %struct.sock, %struct.sock* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %92 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 4
  %93 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %94 = load %struct.rtable*, %struct.rtable** %10, align 8
  %95 = getelementptr inbounds %struct.rtable, %struct.rtable* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = call i32 @dst_clone(%struct.TYPE_8__* %96)
  %98 = call i32 @skb_dst_set(%struct.sk_buff* %93, i32 %97)
  %99 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %100 = call i32 @skb_reset_network_header(%struct.sk_buff* %99)
  %101 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %102 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %101)
  store %struct.iphdr* %102, %struct.iphdr** %14, align 8
  %103 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %104 = load i64, i64* %9, align 8
  %105 = call i32 @skb_put(%struct.sk_buff* %103, i64 %104)
  %106 = load i32, i32* @CHECKSUM_NONE, align 4
  %107 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %108 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 4
  %109 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %110 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %113 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  %114 = load i32, i32* @EFAULT, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %17, align 4
  %116 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %117 = bitcast %struct.iphdr* %116 to i8*
  %118 = load i8*, i8** %8, align 8
  %119 = load i64, i64* %9, align 8
  %120 = call i64 @memcpy_fromiovecend(i8* %117, i8* %118, i32 0, i64 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %74
  br label %212

123:                                              ; preds = %74
  %124 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %125 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = mul nsw i32 %126, 4
  store i32 %127, i32* %16, align 4
  %128 = load i32, i32* @EINVAL, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %17, align 4
  %130 = load i32, i32* %16, align 4
  %131 = zext i32 %130 to i64
  %132 = load i64, i64* %9, align 8
  %133 = icmp ugt i64 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %123
  br label %212

135:                                              ; preds = %123
  %136 = load i32, i32* %16, align 4
  %137 = zext i32 %136 to i64
  %138 = icmp uge i64 %137, 40
  br i1 %138, label %139, label %176

139:                                              ; preds = %135
  %140 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %141 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %140, i32 0, i32 5
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %150, label %144

144:                                              ; preds = %139
  %145 = load %struct.rtable*, %struct.rtable** %10, align 8
  %146 = getelementptr inbounds %struct.rtable, %struct.rtable* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %149 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %148, i32 0, i32 5
  store i64 %147, i64* %149, align 8
  br label %150

150:                                              ; preds = %144, %139
  %151 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %152 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %151, i32 0, i32 2
  store i64 0, i64* %152, align 8
  %153 = load i64, i64* %9, align 8
  %154 = call i32 @htons(i64 %153)
  %155 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %156 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %155, i32 0, i32 4
  store i32 %154, i32* %156, align 4
  %157 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %158 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 8
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %167, label %161

161:                                              ; preds = %150
  %162 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %163 = load %struct.rtable*, %struct.rtable** %10, align 8
  %164 = getelementptr inbounds %struct.rtable, %struct.rtable* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 0
  %166 = call i32 @ip_select_ident(%struct.iphdr* %162, %struct.TYPE_8__* %165, i32* null)
  br label %167

167:                                              ; preds = %161, %150
  %168 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %169 = bitcast %struct.iphdr* %168 to i8*
  %170 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %171 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = call i64 @ip_fast_csum(i8* %169, i32 %172)
  %174 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %175 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %174, i32 0, i32 2
  store i64 %173, i64* %175, align 8
  br label %176

176:                                              ; preds = %167, %135
  %177 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %178 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @IPPROTO_ICMP, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %182, label %190

182:                                              ; preds = %176
  %183 = load %struct.net*, %struct.net** %13, align 8
  %184 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %185 = call i64 @skb_transport_header(%struct.sk_buff* %184)
  %186 = inttoptr i64 %185 to %struct.icmphdr*
  %187 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @icmp_out_count(%struct.net* %183, i32 %188)
  br label %190

190:                                              ; preds = %182, %176
  %191 = load i32, i32* @PF_INET, align 4
  %192 = load i32, i32* @NF_INET_LOCAL_OUT, align 4
  %193 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %194 = load %struct.rtable*, %struct.rtable** %10, align 8
  %195 = getelementptr inbounds %struct.rtable, %struct.rtable* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 0
  %198 = load %struct.TYPE_9__*, %struct.TYPE_9__** %197, align 8
  %199 = load i32, i32* @dst_output, align 4
  %200 = call i32 @NF_HOOK(i32 %191, i32 %192, %struct.sk_buff* %193, i32* null, %struct.TYPE_9__* %198, i32 %199)
  store i32 %200, i32* %17, align 4
  %201 = load i32, i32* %17, align 4
  %202 = icmp sgt i32 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %190
  %204 = load i32, i32* %17, align 4
  %205 = call i32 @net_xmit_errno(i32 %204)
  store i32 %205, i32* %17, align 4
  br label %206

206:                                              ; preds = %203, %190
  %207 = load i32, i32* %17, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %206
  br label %215

210:                                              ; preds = %206
  br label %211

211:                                              ; preds = %210, %55
  store i32 0, i32* %6, align 4
  br label %231

212:                                              ; preds = %134, %122
  %213 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %214 = call i32 @kfree_skb(%struct.sk_buff* %213)
  br label %215

215:                                              ; preds = %212, %209, %73
  %216 = load %struct.net*, %struct.net** %13, align 8
  %217 = load i32, i32* @IPSTATS_MIB_OUTDISCARDS, align 4
  %218 = call i32 @IP_INC_STATS(%struct.net* %216, i32 %217)
  %219 = load i32, i32* %17, align 4
  %220 = load i32, i32* @ENOBUFS, align 4
  %221 = sub nsw i32 0, %220
  %222 = icmp eq i32 %219, %221
  br i1 %222, label %223, label %229

223:                                              ; preds = %215
  %224 = load %struct.inet_sock*, %struct.inet_sock** %12, align 8
  %225 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %229, label %228

228:                                              ; preds = %223
  store i32 0, i32* %17, align 4
  br label %229

229:                                              ; preds = %228, %223, %215
  %230 = load i32, i32* %17, align 4
  store i32 %230, i32* %6, align 4
  br label %231

231:                                              ; preds = %229, %211, %31
  %232 = load i32, i32* %6, align 4
  ret i32 %232
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local i32 @ip_local_error(%struct.sock*, i32, i32, i32, i64) #1

declare dso_local %struct.sk_buff* @sock_alloc_send_skb(%struct.sock*, i64, i32, i32*) #1

declare dso_local i64 @LL_ALLOCATED_SPACE(%struct.TYPE_9__*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @LL_RESERVED_SPACE(%struct.TYPE_9__*) #1

declare dso_local i32 @skb_dst_set(%struct.sk_buff*, i32) #1

declare dso_local i32 @dst_clone(%struct.TYPE_8__*) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i64 @memcpy_fromiovecend(i8*, i8*, i32, i64) #1

declare dso_local i32 @htons(i64) #1

declare dso_local i32 @ip_select_ident(%struct.iphdr*, %struct.TYPE_8__*, i32*) #1

declare dso_local i64 @ip_fast_csum(i8*, i32) #1

declare dso_local i32 @icmp_out_count(%struct.net*, i32) #1

declare dso_local i64 @skb_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @NF_HOOK(i32, i32, %struct.sk_buff*, i32*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @net_xmit_errno(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @IP_INC_STATS(%struct.net*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
