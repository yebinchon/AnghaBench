; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_recent.c_recent_mt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_recent.c_recent_mt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32* }
%struct.xt_match_param = type { i32*, %struct.TYPE_2__*, i32*, %struct.xt_recent_mtinfo* }
%struct.TYPE_2__ = type { i32 }
%struct.xt_recent_mtinfo = type { i32, i64, i32, i64, i32, i32 }
%struct.recent_table = type { i32 }
%struct.recent_entry = type { i32, i64, i32* }
%union.nf_inet_addr = type { i32 }
%struct.iphdr = type { i64, i32, i32 }
%struct.ipv6hdr = type { i64, i32, i32 }

@NFPROTO_IPV4 = common dso_local global i32 0, align 4
@XT_RECENT_DEST = common dso_local global i64 0, align 8
@recent_lock = common dso_local global i32 0, align 4
@XT_RECENT_TTL = common dso_local global i32 0, align 4
@XT_RECENT_SET = common dso_local global i32 0, align 4
@XT_RECENT_REMOVE = common dso_local global i32 0, align 4
@XT_RECENT_CHECK = common dso_local global i32 0, align 4
@XT_RECENT_UPDATE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_match_param*)* @recent_mt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recent_mt(%struct.sk_buff* %0, %struct.xt_match_param* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.xt_match_param*, align 8
  %5 = alloca %struct.xt_recent_mtinfo*, align 8
  %6 = alloca %struct.recent_table*, align 8
  %7 = alloca %struct.recent_entry*, align 8
  %8 = alloca %union.nf_inet_addr, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.iphdr*, align 8
  %12 = alloca %struct.ipv6hdr*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.xt_match_param* %1, %struct.xt_match_param** %4, align 8
  %16 = load %struct.xt_match_param*, %struct.xt_match_param** %4, align 8
  %17 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %16, i32 0, i32 3
  %18 = load %struct.xt_recent_mtinfo*, %struct.xt_recent_mtinfo** %17, align 8
  store %struct.xt_recent_mtinfo* %18, %struct.xt_recent_mtinfo** %5, align 8
  %19 = bitcast %union.nf_inet_addr* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %19, i8 0, i64 4, i1 false)
  %20 = load %struct.xt_recent_mtinfo*, %struct.xt_recent_mtinfo** %5, align 8
  %21 = getelementptr inbounds %struct.xt_recent_mtinfo, %struct.xt_recent_mtinfo* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %10, align 4
  %23 = load %struct.xt_match_param*, %struct.xt_match_param** %4, align 8
  %24 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @NFPROTO_IPV4, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %52

30:                                               ; preds = %2
  %31 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %32 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %31)
  store %struct.iphdr* %32, %struct.iphdr** %11, align 8
  %33 = load %struct.xt_recent_mtinfo*, %struct.xt_recent_mtinfo** %5, align 8
  %34 = getelementptr inbounds %struct.xt_recent_mtinfo, %struct.xt_recent_mtinfo* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @XT_RECENT_DEST, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %30
  %39 = load %struct.iphdr*, %struct.iphdr** %11, align 8
  %40 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = bitcast %union.nf_inet_addr* %8 to i32*
  store i32 %41, i32* %42, align 4
  br label %48

43:                                               ; preds = %30
  %44 = load %struct.iphdr*, %struct.iphdr** %11, align 8
  %45 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = bitcast %union.nf_inet_addr* %8 to i32*
  store i32 %46, i32* %47, align 4
  br label %48

48:                                               ; preds = %43, %38
  %49 = load %struct.iphdr*, %struct.iphdr** %11, align 8
  %50 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %9, align 8
  br label %74

52:                                               ; preds = %2
  %53 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %54 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %53)
  store %struct.ipv6hdr* %54, %struct.ipv6hdr** %12, align 8
  %55 = load %struct.xt_recent_mtinfo*, %struct.xt_recent_mtinfo** %5, align 8
  %56 = getelementptr inbounds %struct.xt_recent_mtinfo, %struct.xt_recent_mtinfo* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @XT_RECENT_DEST, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %52
  %61 = bitcast %union.nf_inet_addr* %8 to i32*
  %62 = load %struct.ipv6hdr*, %struct.ipv6hdr** %12, align 8
  %63 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %62, i32 0, i32 2
  %64 = call i32 @memcpy(i32* %61, i32* %63, i32 4)
  br label %70

65:                                               ; preds = %52
  %66 = bitcast %union.nf_inet_addr* %8 to i32*
  %67 = load %struct.ipv6hdr*, %struct.ipv6hdr** %12, align 8
  %68 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %67, i32 0, i32 1
  %69 = call i32 @memcpy(i32* %66, i32* %68, i32 4)
  br label %70

70:                                               ; preds = %65, %60
  %71 = load %struct.ipv6hdr*, %struct.ipv6hdr** %12, align 8
  %72 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %9, align 8
  br label %74

74:                                               ; preds = %70, %48
  %75 = load %struct.xt_match_param*, %struct.xt_match_param** %4, align 8
  %76 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %87

79:                                               ; preds = %74
  %80 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %81 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = icmp eq i32* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load i64, i64* %9, align 8
  %86 = add nsw i64 %85, 1
  store i64 %86, i64* %9, align 8
  br label %87

87:                                               ; preds = %84, %79, %74
  %88 = call i32 @spin_lock_bh(i32* @recent_lock)
  %89 = load %struct.xt_recent_mtinfo*, %struct.xt_recent_mtinfo** %5, align 8
  %90 = getelementptr inbounds %struct.xt_recent_mtinfo, %struct.xt_recent_mtinfo* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 4
  %92 = call %struct.recent_table* @recent_table_lookup(i32 %91)
  store %struct.recent_table* %92, %struct.recent_table** %6, align 8
  %93 = load %struct.recent_table*, %struct.recent_table** %6, align 8
  %94 = load %struct.xt_match_param*, %struct.xt_match_param** %4, align 8
  %95 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %94, i32 0, i32 1
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.xt_recent_mtinfo*, %struct.xt_recent_mtinfo** %5, align 8
  %100 = getelementptr inbounds %struct.xt_recent_mtinfo, %struct.xt_recent_mtinfo* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @XT_RECENT_TTL, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %87
  %106 = load i64, i64* %9, align 8
  br label %108

107:                                              ; preds = %87
  br label %108

108:                                              ; preds = %107, %105
  %109 = phi i64 [ %106, %105 ], [ 0, %107 ]
  %110 = call %struct.recent_entry* @recent_entry_lookup(%struct.recent_table* %93, %union.nf_inet_addr* %8, i32 %98, i64 %109)
  store %struct.recent_entry* %110, %struct.recent_entry** %7, align 8
  %111 = load %struct.recent_entry*, %struct.recent_entry** %7, align 8
  %112 = icmp eq %struct.recent_entry* %111, null
  br i1 %112, label %113, label %141

113:                                              ; preds = %108
  %114 = load %struct.xt_recent_mtinfo*, %struct.xt_recent_mtinfo** %5, align 8
  %115 = getelementptr inbounds %struct.xt_recent_mtinfo, %struct.xt_recent_mtinfo* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @XT_RECENT_SET, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %113
  br label %257

121:                                              ; preds = %113
  %122 = load %struct.recent_table*, %struct.recent_table** %6, align 8
  %123 = load %struct.xt_match_param*, %struct.xt_match_param** %4, align 8
  %124 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %123, i32 0, i32 1
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i64, i64* %9, align 8
  %129 = call %struct.recent_entry* @recent_entry_init(%struct.recent_table* %122, %union.nf_inet_addr* %8, i32 %127, i64 %128)
  store %struct.recent_entry* %129, %struct.recent_entry** %7, align 8
  %130 = load %struct.recent_entry*, %struct.recent_entry** %7, align 8
  %131 = icmp eq %struct.recent_entry* %130, null
  br i1 %131, label %132, label %136

132:                                              ; preds = %121
  %133 = load %struct.xt_match_param*, %struct.xt_match_param** %4, align 8
  %134 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  store i32 1, i32* %135, align 4
  br label %136

136:                                              ; preds = %132, %121
  %137 = load i32, i32* %10, align 4
  %138 = icmp ne i32 %137, 0
  %139 = xor i1 %138, true
  %140 = zext i1 %139 to i32
  store i32 %140, i32* %10, align 4
  br label %257

141:                                              ; preds = %108
  %142 = load %struct.xt_recent_mtinfo*, %struct.xt_recent_mtinfo** %5, align 8
  %143 = getelementptr inbounds %struct.xt_recent_mtinfo, %struct.xt_recent_mtinfo* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @XT_RECENT_SET, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %141
  %149 = load i32, i32* %10, align 4
  %150 = icmp ne i32 %149, 0
  %151 = xor i1 %150, true
  %152 = zext i1 %151 to i32
  store i32 %152, i32* %10, align 4
  br label %232

153:                                              ; preds = %141
  %154 = load %struct.xt_recent_mtinfo*, %struct.xt_recent_mtinfo** %5, align 8
  %155 = getelementptr inbounds %struct.xt_recent_mtinfo, %struct.xt_recent_mtinfo* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @XT_RECENT_REMOVE, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %168

160:                                              ; preds = %153
  %161 = load %struct.recent_table*, %struct.recent_table** %6, align 8
  %162 = load %struct.recent_entry*, %struct.recent_entry** %7, align 8
  %163 = call i32 @recent_entry_remove(%struct.recent_table* %161, %struct.recent_entry* %162)
  %164 = load i32, i32* %10, align 4
  %165 = icmp ne i32 %164, 0
  %166 = xor i1 %165, true
  %167 = zext i1 %166 to i32
  store i32 %167, i32* %10, align 4
  br label %231

168:                                              ; preds = %153
  %169 = load %struct.xt_recent_mtinfo*, %struct.xt_recent_mtinfo** %5, align 8
  %170 = getelementptr inbounds %struct.xt_recent_mtinfo, %struct.xt_recent_mtinfo* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @XT_RECENT_CHECK, align 4
  %173 = load i32, i32* @XT_RECENT_UPDATE, align 4
  %174 = or i32 %172, %173
  %175 = and i32 %171, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %230

177:                                              ; preds = %168
  %178 = load i64, i64* @jiffies, align 8
  %179 = load %struct.xt_recent_mtinfo*, %struct.xt_recent_mtinfo** %5, align 8
  %180 = getelementptr inbounds %struct.xt_recent_mtinfo, %struct.xt_recent_mtinfo* %179, i32 0, i32 3
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @HZ, align 8
  %183 = mul i64 %181, %182
  %184 = sub i64 %178, %183
  store i64 %184, i64* %13, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %185

185:                                              ; preds = %226, %177
  %186 = load i32, i32* %14, align 4
  %187 = load %struct.recent_entry*, %struct.recent_entry** %7, align 8
  %188 = getelementptr inbounds %struct.recent_entry, %struct.recent_entry* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = icmp ult i32 %186, %189
  br i1 %190, label %191, label %229

191:                                              ; preds = %185
  %192 = load %struct.xt_recent_mtinfo*, %struct.xt_recent_mtinfo** %5, align 8
  %193 = getelementptr inbounds %struct.xt_recent_mtinfo, %struct.xt_recent_mtinfo* %192, i32 0, i32 3
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %208

196:                                              ; preds = %191
  %197 = load i64, i64* %13, align 8
  %198 = load %struct.recent_entry*, %struct.recent_entry** %7, align 8
  %199 = getelementptr inbounds %struct.recent_entry, %struct.recent_entry* %198, i32 0, i32 2
  %200 = load i32*, i32** %199, align 8
  %201 = load i32, i32* %14, align 4
  %202 = zext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = call i64 @time_after(i64 %197, i32 %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %196
  br label %226

208:                                              ; preds = %196, %191
  %209 = load %struct.xt_recent_mtinfo*, %struct.xt_recent_mtinfo** %5, align 8
  %210 = getelementptr inbounds %struct.xt_recent_mtinfo, %struct.xt_recent_mtinfo* %209, i32 0, i32 4
  %211 = load i32, i32* %210, align 8
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %220

213:                                              ; preds = %208
  %214 = load i32, i32* %15, align 4
  %215 = add i32 %214, 1
  store i32 %215, i32* %15, align 4
  %216 = load %struct.xt_recent_mtinfo*, %struct.xt_recent_mtinfo** %5, align 8
  %217 = getelementptr inbounds %struct.xt_recent_mtinfo, %struct.xt_recent_mtinfo* %216, i32 0, i32 4
  %218 = load i32, i32* %217, align 8
  %219 = icmp uge i32 %215, %218
  br i1 %219, label %220, label %225

220:                                              ; preds = %213, %208
  %221 = load i32, i32* %10, align 4
  %222 = icmp ne i32 %221, 0
  %223 = xor i1 %222, true
  %224 = zext i1 %223 to i32
  store i32 %224, i32* %10, align 4
  br label %229

225:                                              ; preds = %213
  br label %226

226:                                              ; preds = %225, %207
  %227 = load i32, i32* %14, align 4
  %228 = add i32 %227, 1
  store i32 %228, i32* %14, align 4
  br label %185

229:                                              ; preds = %220, %185
  br label %230

230:                                              ; preds = %229, %168
  br label %231

231:                                              ; preds = %230, %160
  br label %232

232:                                              ; preds = %231, %148
  %233 = load %struct.xt_recent_mtinfo*, %struct.xt_recent_mtinfo** %5, align 8
  %234 = getelementptr inbounds %struct.xt_recent_mtinfo, %struct.xt_recent_mtinfo* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* @XT_RECENT_SET, align 4
  %237 = and i32 %235, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %249, label %239

239:                                              ; preds = %232
  %240 = load %struct.xt_recent_mtinfo*, %struct.xt_recent_mtinfo** %5, align 8
  %241 = getelementptr inbounds %struct.xt_recent_mtinfo, %struct.xt_recent_mtinfo* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 8
  %243 = load i32, i32* @XT_RECENT_UPDATE, align 4
  %244 = and i32 %242, %243
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %256

246:                                              ; preds = %239
  %247 = load i32, i32* %10, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %256

249:                                              ; preds = %246, %232
  %250 = load %struct.recent_table*, %struct.recent_table** %6, align 8
  %251 = load %struct.recent_entry*, %struct.recent_entry** %7, align 8
  %252 = call i32 @recent_entry_update(%struct.recent_table* %250, %struct.recent_entry* %251)
  %253 = load i64, i64* %9, align 8
  %254 = load %struct.recent_entry*, %struct.recent_entry** %7, align 8
  %255 = getelementptr inbounds %struct.recent_entry, %struct.recent_entry* %254, i32 0, i32 1
  store i64 %253, i64* %255, align 8
  br label %256

256:                                              ; preds = %249, %246, %239
  br label %257

257:                                              ; preds = %256, %136, %120
  %258 = call i32 @spin_unlock_bh(i32* @recent_lock)
  %259 = load i32, i32* %10, align 4
  ret i32 %259
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #2

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @spin_lock_bh(i32*) #2

declare dso_local %struct.recent_table* @recent_table_lookup(i32) #2

declare dso_local %struct.recent_entry* @recent_entry_lookup(%struct.recent_table*, %union.nf_inet_addr*, i32, i64) #2

declare dso_local %struct.recent_entry* @recent_entry_init(%struct.recent_table*, %union.nf_inet_addr*, i32, i64) #2

declare dso_local i32 @recent_entry_remove(%struct.recent_table*, %struct.recent_entry*) #2

declare dso_local i64 @time_after(i64, i32) #2

declare dso_local i32 @recent_entry_update(%struct.recent_table*, %struct.recent_entry*) #2

declare dso_local i32 @spin_unlock_bh(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
