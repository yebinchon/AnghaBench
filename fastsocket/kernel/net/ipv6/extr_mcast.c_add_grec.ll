; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_mcast.c_add_grec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_mcast.c_add_grec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ifmcaddr6 = type { i32, i64, %struct.ip6_sf_list*, %struct.ip6_sf_list*, %struct.TYPE_2__* }
%struct.ip6_sf_list = type { i64, %struct.ip6_sf_list*, %struct.in6_addr, i64 }
%struct.in6_addr = type { i32 }
%struct.TYPE_2__ = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.mld2_report = type { i64 }
%struct.mld2_grec = type { i8* }

@MAF_NOREPORT = common dso_local global i32 0, align 4
@MLD2_MODE_IS_INCLUDE = common dso_local global i32 0, align 4
@MLD2_MODE_IS_EXCLUDE = common dso_local global i32 0, align 4
@MLD2_CHANGE_TO_EXCLUDE = common dso_local global i32 0, align 4
@MLD2_ALLOW_NEW_SOURCES = common dso_local global i32 0, align 4
@MLD2_BLOCK_OLD_SOURCES = common dso_local global i32 0, align 4
@MAF_GSQUERY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.sk_buff*, %struct.ifmcaddr6*, i32, i32, i32)* @add_grec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @add_grec(%struct.sk_buff* %0, %struct.ifmcaddr6* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.ifmcaddr6*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.net_device*, align 8
  %13 = alloca %struct.mld2_report*, align 8
  %14 = alloca %struct.mld2_grec*, align 8
  %15 = alloca %struct.ip6_sf_list*, align 8
  %16 = alloca %struct.ip6_sf_list*, align 8
  %17 = alloca %struct.ip6_sf_list*, align 8
  %18 = alloca %struct.ip6_sf_list**, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.in6_addr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store %struct.ifmcaddr6* %1, %struct.ifmcaddr6** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %25 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %8, align 8
  %26 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %25, i32 0, i32 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.net_device*, %struct.net_device** %28, align 8
  store %struct.net_device* %29, %struct.net_device** %12, align 8
  store %struct.mld2_grec* null, %struct.mld2_grec** %14, align 8
  %30 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %8, align 8
  %31 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @MAF_NOREPORT, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %5
  %37 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %37, %struct.sk_buff** %6, align 8
  br label %309

38:                                               ; preds = %5
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @MLD2_MODE_IS_INCLUDE, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @MLD2_MODE_IS_EXCLUDE, align 4
  %45 = icmp eq i32 %43, %44
  br label %46

46:                                               ; preds = %42, %38
  %47 = phi i1 [ true, %38 ], [ %45, %42 ]
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %22, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @MLD2_MODE_IS_EXCLUDE, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %56, label %52

52:                                               ; preds = %46
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @MLD2_CHANGE_TO_EXCLUDE, align 4
  %55 = icmp eq i32 %53, %54
  br label %56

56:                                               ; preds = %52, %46
  %57 = phi i1 [ true, %46 ], [ %55, %52 ]
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %23, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %8, align 8
  %63 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %62, i32 0, i32 3
  br label %67

64:                                               ; preds = %56
  %65 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %8, align 8
  %66 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %65, i32 0, i32 2
  br label %67

67:                                               ; preds = %64, %61
  %68 = phi %struct.ip6_sf_list** [ %63, %61 ], [ %66, %64 ]
  store %struct.ip6_sf_list** %68, %struct.ip6_sf_list*** %18, align 8
  %69 = load %struct.ip6_sf_list**, %struct.ip6_sf_list*** %18, align 8
  %70 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %69, align 8
  %71 = icmp ne %struct.ip6_sf_list* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %67
  br label %251

73:                                               ; preds = %67
  %74 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %75 = icmp ne %struct.sk_buff* %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %78 = call i64 @skb_transport_header(%struct.sk_buff* %77)
  %79 = inttoptr i64 %78 to %struct.mld2_report*
  br label %81

80:                                               ; preds = %73
  br label %81

81:                                               ; preds = %80, %76
  %82 = phi %struct.mld2_report* [ %79, %76 ], [ null, %80 ]
  store %struct.mld2_report* %82, %struct.mld2_report** %13, align 8
  %83 = load i32, i32* %23, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %115

85:                                               ; preds = %81
  %86 = load %struct.mld2_report*, %struct.mld2_report** %13, align 8
  %87 = icmp ne %struct.mld2_report* %86, null
  br i1 %87, label %88, label %114

88:                                               ; preds = %85
  %89 = load %struct.mld2_report*, %struct.mld2_report** %13, align 8
  %90 = getelementptr inbounds %struct.mld2_report, %struct.mld2_report* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %114

93:                                               ; preds = %88
  %94 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %95 = call i32 @AVAILABLE(%struct.sk_buff* %94)
  %96 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %8, align 8
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* %11, align 4
  %100 = call i32 @grec_size(%struct.ifmcaddr6* %96, i32 %97, i32 %98, i32 %99)
  %101 = icmp slt i32 %95, %100
  br i1 %101, label %102, label %114

102:                                              ; preds = %93
  %103 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %104 = icmp ne %struct.sk_buff* %103, null
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %107 = call i32 @mld_sendpack(%struct.sk_buff* %106)
  br label %108

108:                                              ; preds = %105, %102
  %109 = load %struct.net_device*, %struct.net_device** %12, align 8
  %110 = load %struct.net_device*, %struct.net_device** %12, align 8
  %111 = getelementptr inbounds %struct.net_device, %struct.net_device* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call %struct.sk_buff* @mld_newpack(%struct.net_device* %109, i32 %112)
  store %struct.sk_buff* %113, %struct.sk_buff** %7, align 8
  br label %114

114:                                              ; preds = %108, %93, %88, %85
  br label %115

115:                                              ; preds = %114, %81
  store i32 1, i32* %21, align 4
  store %struct.ip6_sf_list* null, %struct.ip6_sf_list** %17, align 8
  %116 = load %struct.ip6_sf_list**, %struct.ip6_sf_list*** %18, align 8
  %117 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %116, align 8
  store %struct.ip6_sf_list* %117, %struct.ip6_sf_list** %15, align 8
  br label %118

118:                                              ; preds = %248, %115
  %119 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %15, align 8
  %120 = icmp ne %struct.ip6_sf_list* %119, null
  br i1 %120, label %121, label %250

121:                                              ; preds = %118
  %122 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %15, align 8
  %123 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %122, i32 0, i32 1
  %124 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %123, align 8
  store %struct.ip6_sf_list* %124, %struct.ip6_sf_list** %16, align 8
  %125 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %8, align 8
  %126 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %15, align 8
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* %10, align 4
  %129 = load i32, i32* %11, align 4
  %130 = call i32 @is_in(%struct.ifmcaddr6* %125, %struct.ip6_sf_list* %126, i32 %127, i32 %128, i32 %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %134, label %132

132:                                              ; preds = %121
  %133 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %15, align 8
  store %struct.ip6_sf_list* %133, %struct.ip6_sf_list** %17, align 8
  br label %248

134:                                              ; preds = %121
  %135 = load i32, i32* %22, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %15, align 8
  %139 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %138, i32 0, i32 3
  store i64 0, i64* %139, align 8
  br label %140

140:                                              ; preds = %137, %134
  %141 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %142 = call i32 @AVAILABLE(%struct.sk_buff* %141)
  %143 = sext i32 %142 to i64
  %144 = load i32, i32* %21, align 4
  %145 = sext i32 %144 to i64
  %146 = mul i64 %145, 8
  %147 = add i64 4, %146
  %148 = icmp ult i64 %143, %147
  br i1 %148, label %149, label %176

149:                                              ; preds = %140
  %150 = load i32, i32* %23, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %149
  %153 = load i32, i32* %21, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %156, label %155

155:                                              ; preds = %152
  br label %250

156:                                              ; preds = %152, %149
  %157 = load %struct.mld2_grec*, %struct.mld2_grec** %14, align 8
  %158 = icmp ne %struct.mld2_grec* %157, null
  br i1 %158, label %159, label %164

159:                                              ; preds = %156
  %160 = load i32, i32* %19, align 4
  %161 = call i8* @htons(i32 %160)
  %162 = load %struct.mld2_grec*, %struct.mld2_grec** %14, align 8
  %163 = getelementptr inbounds %struct.mld2_grec, %struct.mld2_grec* %162, i32 0, i32 0
  store i8* %161, i8** %163, align 8
  br label %164

164:                                              ; preds = %159, %156
  %165 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %166 = icmp ne %struct.sk_buff* %165, null
  br i1 %166, label %167, label %170

167:                                              ; preds = %164
  %168 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %169 = call i32 @mld_sendpack(%struct.sk_buff* %168)
  br label %170

170:                                              ; preds = %167, %164
  %171 = load %struct.net_device*, %struct.net_device** %12, align 8
  %172 = load %struct.net_device*, %struct.net_device** %12, align 8
  %173 = getelementptr inbounds %struct.net_device, %struct.net_device* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = call %struct.sk_buff* @mld_newpack(%struct.net_device* %171, i32 %174)
  store %struct.sk_buff* %175, %struct.sk_buff** %7, align 8
  store i32 1, i32* %21, align 4
  store i32 0, i32* %19, align 4
  br label %176

176:                                              ; preds = %170, %140
  %177 = load i32, i32* %21, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %184

179:                                              ; preds = %176
  %180 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %181 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %8, align 8
  %182 = load i32, i32* %9, align 4
  %183 = call %struct.sk_buff* @add_grhead(%struct.sk_buff* %180, %struct.ifmcaddr6* %181, i32 %182, %struct.mld2_grec** %14)
  store %struct.sk_buff* %183, %struct.sk_buff** %7, align 8
  store i32 0, i32* %21, align 4
  br label %184

184:                                              ; preds = %179, %176
  %185 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %186 = icmp ne %struct.sk_buff* %185, null
  br i1 %186, label %188, label %187

187:                                              ; preds = %184
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  br label %309

188:                                              ; preds = %184
  %189 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %190 = call i64 @skb_put(%struct.sk_buff* %189, i32 4)
  %191 = inttoptr i64 %190 to %struct.in6_addr*
  store %struct.in6_addr* %191, %struct.in6_addr** %24, align 8
  %192 = load %struct.in6_addr*, %struct.in6_addr** %24, align 8
  %193 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %15, align 8
  %194 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %193, i32 0, i32 2
  %195 = bitcast %struct.in6_addr* %192 to i8*
  %196 = bitcast %struct.in6_addr* %194 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %195, i8* align 8 %196, i64 4, i1 false)
  %197 = load i32, i32* %19, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %19, align 4
  %199 = load i32, i32* %20, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %20, align 4
  %201 = load i32, i32* %9, align 4
  %202 = load i32, i32* @MLD2_ALLOW_NEW_SOURCES, align 4
  %203 = icmp eq i32 %201, %202
  br i1 %203, label %208, label %204

204:                                              ; preds = %188
  %205 = load i32, i32* %9, align 4
  %206 = load i32, i32* @MLD2_BLOCK_OLD_SOURCES, align 4
  %207 = icmp eq i32 %205, %206
  br i1 %207, label %208, label %246

208:                                              ; preds = %204, %188
  %209 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %15, align 8
  %210 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %246

213:                                              ; preds = %208
  %214 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %15, align 8
  %215 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = add nsw i64 %216, -1
  store i64 %217, i64* %215, align 8
  %218 = load i32, i32* %11, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %223, label %220

220:                                              ; preds = %213
  %221 = load i32, i32* %10, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %245

223:                                              ; preds = %220, %213
  %224 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %15, align 8
  %225 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = icmp eq i64 %226, 0
  br i1 %227, label %228, label %245

228:                                              ; preds = %223
  %229 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %17, align 8
  %230 = icmp ne %struct.ip6_sf_list* %229, null
  br i1 %230, label %231, label %237

231:                                              ; preds = %228
  %232 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %15, align 8
  %233 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %232, i32 0, i32 1
  %234 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %233, align 8
  %235 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %17, align 8
  %236 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %235, i32 0, i32 1
  store %struct.ip6_sf_list* %234, %struct.ip6_sf_list** %236, align 8
  br label %242

237:                                              ; preds = %228
  %238 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %15, align 8
  %239 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %238, i32 0, i32 1
  %240 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %239, align 8
  %241 = load %struct.ip6_sf_list**, %struct.ip6_sf_list*** %18, align 8
  store %struct.ip6_sf_list* %240, %struct.ip6_sf_list** %241, align 8
  br label %242

242:                                              ; preds = %237, %231
  %243 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %15, align 8
  %244 = call i32 @kfree(%struct.ip6_sf_list* %243)
  br label %248

245:                                              ; preds = %223, %220
  br label %246

246:                                              ; preds = %245, %208, %204
  %247 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %15, align 8
  store %struct.ip6_sf_list* %247, %struct.ip6_sf_list** %17, align 8
  br label %248

248:                                              ; preds = %246, %242, %132
  %249 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %16, align 8
  store %struct.ip6_sf_list* %249, %struct.ip6_sf_list** %15, align 8
  br label %118

250:                                              ; preds = %155, %118
  br label %251

251:                                              ; preds = %250, %72
  %252 = load i32, i32* %20, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %289, label %254

254:                                              ; preds = %251
  %255 = load i32, i32* %9, align 4
  %256 = load i32, i32* @MLD2_ALLOW_NEW_SOURCES, align 4
  %257 = icmp eq i32 %255, %256
  br i1 %257, label %262, label %258

258:                                              ; preds = %254
  %259 = load i32, i32* %9, align 4
  %260 = load i32, i32* @MLD2_BLOCK_OLD_SOURCES, align 4
  %261 = icmp eq i32 %259, %260
  br i1 %261, label %262, label %264

262:                                              ; preds = %258, %254
  %263 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %263, %struct.sk_buff** %6, align 8
  br label %309

264:                                              ; preds = %258
  %265 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %8, align 8
  %266 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %265, i32 0, i32 1
  %267 = load i64, i64* %266, align 8
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %272, label %269

269:                                              ; preds = %264
  %270 = load i32, i32* %22, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %288

272:                                              ; preds = %269, %264
  %273 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %274 = icmp ne %struct.sk_buff* %273, null
  br i1 %274, label %275, label %283

275:                                              ; preds = %272
  %276 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %277 = call i32 @AVAILABLE(%struct.sk_buff* %276)
  %278 = sext i32 %277 to i64
  %279 = icmp ult i64 %278, 8
  br i1 %279, label %280, label %283

280:                                              ; preds = %275
  %281 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %282 = call i32 @mld_sendpack(%struct.sk_buff* %281)
  store %struct.sk_buff* null, %struct.sk_buff** %7, align 8
  br label %283

283:                                              ; preds = %280, %275, %272
  %284 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %285 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %8, align 8
  %286 = load i32, i32* %9, align 4
  %287 = call %struct.sk_buff* @add_grhead(%struct.sk_buff* %284, %struct.ifmcaddr6* %285, i32 %286, %struct.mld2_grec** %14)
  store %struct.sk_buff* %287, %struct.sk_buff** %7, align 8
  br label %288

288:                                              ; preds = %283, %269
  br label %289

289:                                              ; preds = %288, %251
  %290 = load %struct.mld2_grec*, %struct.mld2_grec** %14, align 8
  %291 = icmp ne %struct.mld2_grec* %290, null
  br i1 %291, label %292, label %297

292:                                              ; preds = %289
  %293 = load i32, i32* %19, align 4
  %294 = call i8* @htons(i32 %293)
  %295 = load %struct.mld2_grec*, %struct.mld2_grec** %14, align 8
  %296 = getelementptr inbounds %struct.mld2_grec, %struct.mld2_grec* %295, i32 0, i32 0
  store i8* %294, i8** %296, align 8
  br label %297

297:                                              ; preds = %292, %289
  %298 = load i32, i32* %22, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %307

300:                                              ; preds = %297
  %301 = load i32, i32* @MAF_GSQUERY, align 4
  %302 = xor i32 %301, -1
  %303 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %8, align 8
  %304 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = and i32 %305, %302
  store i32 %306, i32* %304, align 8
  br label %307

307:                                              ; preds = %300, %297
  %308 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %308, %struct.sk_buff** %6, align 8
  br label %309

309:                                              ; preds = %307, %262, %187, %36
  %310 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  ret %struct.sk_buff* %310
}

declare dso_local i64 @skb_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @AVAILABLE(%struct.sk_buff*) #1

declare dso_local i32 @grec_size(%struct.ifmcaddr6*, i32, i32, i32) #1

declare dso_local i32 @mld_sendpack(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @mld_newpack(%struct.net_device*, i32) #1

declare dso_local i32 @is_in(%struct.ifmcaddr6*, %struct.ip6_sf_list*, i32, i32, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local %struct.sk_buff* @add_grhead(%struct.sk_buff*, %struct.ifmcaddr6*, i32, %struct.mld2_grec**) #1

declare dso_local i64 @skb_put(%struct.sk_buff*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @kfree(%struct.ip6_sf_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
