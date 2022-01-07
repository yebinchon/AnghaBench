; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_sip.c_ip_nat_sdp_media.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_sip.c_ip_nat_sdp_media.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_conntrack_expect = type { i64, i32, %struct.TYPE_17__, %struct.TYPE_15__, i8* }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_26__, %struct.TYPE_24__ }
%struct.TYPE_26__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i64 }
%struct.TYPE_24__ = type { i64 }
%union.nf_inet_addr = type { i64 }
%struct.nf_conn = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { %struct.TYPE_21__, %struct.TYPE_19__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64 }

@ip_nat_sip_expected = common dso_local global i8* null, align 8
@NF_ACCEPT = common dso_local global i32 0, align 4
@NF_DROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i8**, i32*, %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect*, i32, i32, %union.nf_inet_addr*)* @ip_nat_sdp_media to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_nat_sdp_media(%struct.sk_buff* %0, i8** %1, i32* %2, %struct.nf_conntrack_expect* %3, %struct.nf_conntrack_expect* %4, i32 %5, i32 %6, %union.nf_inet_addr* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.nf_conntrack_expect*, align 8
  %14 = alloca %struct.nf_conntrack_expect*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %union.nf_inet_addr*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.nf_conn*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %10, align 8
  store i8** %1, i8*** %11, align 8
  store i32* %2, i32** %12, align 8
  store %struct.nf_conntrack_expect* %3, %struct.nf_conntrack_expect** %13, align 8
  store %struct.nf_conntrack_expect* %4, %struct.nf_conntrack_expect** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store %union.nf_inet_addr* %7, %union.nf_inet_addr** %17, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %23 = call %struct.nf_conn* @nf_ct_get(%struct.sk_buff* %22, i32* %18)
  store %struct.nf_conn* %23, %struct.nf_conn** %19, align 8
  %24 = load i32, i32* %18, align 4
  %25 = call i32 @CTINFO2DIR(i32 %24)
  store i32 %25, i32* %20, align 4
  %26 = load %struct.nf_conn*, %struct.nf_conn** %19, align 8
  %27 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %26, i32 0, i32 0
  %28 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %29 = load i32, i32* %20, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.nf_conn*, %struct.nf_conn** %19, align 8
  %38 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %37, i32 0, i32 0
  %39 = load %struct.TYPE_23__*, %struct.TYPE_23__** %38, align 8
  %40 = load i32, i32* %20, align 4
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %39, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %36, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %8
  %53 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %13, align 8
  %54 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %union.nf_inet_addr*, %union.nf_inet_addr** %17, align 8
  %60 = bitcast %union.nf_inet_addr* %59 to i64*
  store i64 %58, i64* %60, align 8
  br label %78

61:                                               ; preds = %8
  %62 = load %struct.nf_conn*, %struct.nf_conn** %19, align 8
  %63 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %62, i32 0, i32 0
  %64 = load %struct.TYPE_23__*, %struct.TYPE_23__** %63, align 8
  %65 = load i32, i32* %20, align 4
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %64, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %union.nf_inet_addr*, %union.nf_inet_addr** %17, align 8
  %77 = bitcast %union.nf_inet_addr* %76 to i64*
  store i64 %75, i64* %77, align 8
  br label %78

78:                                               ; preds = %61, %52
  %79 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %13, align 8
  %80 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %13, align 8
  %86 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  %87 = load %union.nf_inet_addr*, %union.nf_inet_addr** %17, align 8
  %88 = bitcast %union.nf_inet_addr* %87 to i64*
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %13, align 8
  %91 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %93, i32 0, i32 0
  store i64 %89, i64* %94, align 8
  %95 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %13, align 8
  %96 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %13, align 8
  %103 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 0
  store i64 %101, i64* %105, align 8
  %106 = load i32, i32* %20, align 4
  %107 = icmp ne i32 %106, 0
  %108 = xor i1 %107, true
  %109 = zext i1 %108 to i32
  %110 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %13, align 8
  %111 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 8
  %112 = load i8*, i8** @ip_nat_sip_expected, align 8
  %113 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %13, align 8
  %114 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %113, i32 0, i32 4
  store i8* %112, i8** %114, align 8
  %115 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %14, align 8
  %116 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %14, align 8
  %122 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %121, i32 0, i32 0
  store i64 %120, i64* %122, align 8
  %123 = load %union.nf_inet_addr*, %union.nf_inet_addr** %17, align 8
  %124 = bitcast %union.nf_inet_addr* %123 to i64*
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %14, align 8
  %127 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %126, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %129, i32 0, i32 0
  store i64 %125, i64* %130, align 8
  %131 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %14, align 8
  %132 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %14, align 8
  %139 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 0
  store i64 %137, i64* %141, align 8
  %142 = load i32, i32* %20, align 4
  %143 = icmp ne i32 %142, 0
  %144 = xor i1 %143, true
  %145 = zext i1 %144 to i32
  %146 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %14, align 8
  %147 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %146, i32 0, i32 1
  store i32 %145, i32* %147, align 8
  %148 = load i8*, i8** @ip_nat_sip_expected, align 8
  %149 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %14, align 8
  %150 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %149, i32 0, i32 4
  store i8* %148, i8** %150, align 8
  %151 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %13, align 8
  %152 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %151, i32 0, i32 3
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = call i64 @ntohs(i64 %157)
  store i64 %158, i64* %21, align 8
  br label %159

159:                                              ; preds = %194, %78
  %160 = load i64, i64* %21, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %197

162:                                              ; preds = %159
  %163 = load i64, i64* %21, align 8
  %164 = call i8* @htons(i64 %163)
  %165 = ptrtoint i8* %164 to i64
  %166 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %13, align 8
  %167 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %166, i32 0, i32 3
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %170, i32 0, i32 0
  store i64 %165, i64* %171, align 8
  %172 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %13, align 8
  %173 = call i64 @nf_ct_expect_related(%struct.nf_conntrack_expect* %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %162
  br label %194

176:                                              ; preds = %162
  %177 = load i64, i64* %21, align 8
  %178 = add nsw i64 %177, 1
  %179 = call i8* @htons(i64 %178)
  %180 = ptrtoint i8* %179 to i64
  %181 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %14, align 8
  %182 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %181, i32 0, i32 3
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %185, i32 0, i32 0
  store i64 %180, i64* %186, align 8
  %187 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %14, align 8
  %188 = call i64 @nf_ct_expect_related(%struct.nf_conntrack_expect* %187)
  %189 = icmp eq i64 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %176
  br label %197

191:                                              ; preds = %176
  %192 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %13, align 8
  %193 = call i32 @nf_ct_unexpect_related(%struct.nf_conntrack_expect* %192)
  br label %194

194:                                              ; preds = %191, %175
  %195 = load i64, i64* %21, align 8
  %196 = add nsw i64 %195, 2
  store i64 %196, i64* %21, align 8
  br label %159

197:                                              ; preds = %190, %159
  %198 = load i64, i64* %21, align 8
  %199 = icmp eq i64 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %197
  br label %232

201:                                              ; preds = %197
  %202 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %13, align 8
  %203 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %202, i32 0, i32 3
  %204 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %13, align 8
  %210 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %209, i32 0, i32 2
  %211 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %208, %213
  br i1 %214, label %215, label %225

215:                                              ; preds = %201
  %216 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %217 = load i8**, i8*** %11, align 8
  %218 = load i32*, i32** %12, align 8
  %219 = load i32, i32* %15, align 4
  %220 = load i32, i32* %16, align 4
  %221 = load i64, i64* %21, align 8
  %222 = call i32 @ip_nat_sdp_port(%struct.sk_buff* %216, i8** %217, i32* %218, i32 %219, i32 %220, i64 %221)
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %225, label %224

224:                                              ; preds = %215
  br label %227

225:                                              ; preds = %215, %201
  %226 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %226, i32* %9, align 4
  br label %234

227:                                              ; preds = %224
  %228 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %13, align 8
  %229 = call i32 @nf_ct_unexpect_related(%struct.nf_conntrack_expect* %228)
  %230 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %14, align 8
  %231 = call i32 @nf_ct_unexpect_related(%struct.nf_conntrack_expect* %230)
  br label %232

232:                                              ; preds = %227, %200
  %233 = load i32, i32* @NF_DROP, align 4
  store i32 %233, i32* %9, align 4
  br label %234

234:                                              ; preds = %232, %225
  %235 = load i32, i32* %9, align 4
  ret i32 %235
}

declare dso_local %struct.nf_conn* @nf_ct_get(%struct.sk_buff*, i32*) #1

declare dso_local i32 @CTINFO2DIR(i32) #1

declare dso_local i64 @ntohs(i64) #1

declare dso_local i8* @htons(i64) #1

declare dso_local i64 @nf_ct_expect_related(%struct.nf_conntrack_expect*) #1

declare dso_local i32 @nf_ct_unexpect_related(%struct.nf_conntrack_expect*) #1

declare dso_local i32 @ip_nat_sdp_port(%struct.sk_buff*, i8**, i32*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
