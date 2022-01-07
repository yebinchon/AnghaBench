; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_h323.c_nat_rtp_rtcp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_h323.c_nat_rtp_rtcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_conn = type { %struct.TYPE_29__* }
%struct.TYPE_29__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i32 }
%struct.nf_conntrack_expect = type { i32, %struct.TYPE_22__, i8*, %struct.TYPE_26__ }
%struct.TYPE_22__ = type { %struct.TYPE_21__, %struct.TYPE_17__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__, %struct.TYPE_18__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_32__, %struct.TYPE_30__ }
%struct.TYPE_32__ = type { %struct.TYPE_31__ }
%struct.TYPE_31__ = type { i64 }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_26__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i64 }
%struct.nf_ct_h323_master = type { i64** }
%struct.TYPE_23__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { %struct.nf_ct_h323_master }

@nf_nat_follow_master = common dso_local global i8* null, align 8
@H323_RTP_CHANNEL_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"nf_nat_h323: out of expectations\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"nf_nat_h323: out of RTP ports\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"nf_nat_h323: expect RTP %pI4:%hu->%pI4:%hu\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"nf_nat_h323: expect RTCP %pI4:%hu->%pI4:%hu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nf_conn*, i32, i8**, i32, i32*, i64, i64, %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect*)* @nat_rtp_rtcp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nat_rtp_rtcp(%struct.sk_buff* %0, %struct.nf_conn* %1, i32 %2, i8** %3, i32 %4, i32* %5, i64 %6, i64 %7, %struct.nf_conntrack_expect* %8, %struct.nf_conntrack_expect* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.nf_conn*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.nf_conntrack_expect*, align 8
  %21 = alloca %struct.nf_conntrack_expect*, align 8
  %22 = alloca %struct.nf_ct_h323_master*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %12, align 8
  store %struct.nf_conn* %1, %struct.nf_conn** %13, align 8
  store i32 %2, i32* %14, align 4
  store i8** %3, i8*** %15, align 8
  store i32 %4, i32* %16, align 4
  store i32* %5, i32** %17, align 8
  store i64 %6, i64* %18, align 8
  store i64 %7, i64* %19, align 8
  store %struct.nf_conntrack_expect* %8, %struct.nf_conntrack_expect** %20, align 8
  store %struct.nf_conntrack_expect* %9, %struct.nf_conntrack_expect** %21, align 8
  %26 = load %struct.nf_conn*, %struct.nf_conn** %13, align 8
  %27 = call %struct.TYPE_23__* @nfct_help(%struct.nf_conn* %26)
  %28 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %28, i32 0, i32 0
  store %struct.nf_ct_h323_master* %29, %struct.nf_ct_h323_master** %22, align 8
  %30 = load i32, i32* %14, align 4
  %31 = call i32 @CTINFO2DIR(i32 %30)
  store i32 %31, i32* %23, align 4
  %32 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %20, align 8
  %33 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %20, align 8
  %40 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %41, i32 0, i32 0
  store i64 %38, i64* %42, align 8
  %43 = load i8*, i8** @nf_nat_follow_master, align 8
  %44 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %20, align 8
  %45 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %44, i32 0, i32 2
  store i8* %43, i8** %45, align 8
  %46 = load i32, i32* %23, align 4
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %20, align 8
  %51 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %21, align 8
  %53 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %21, align 8
  %60 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %61, i32 0, i32 0
  store i64 %58, i64* %62, align 8
  %63 = load i8*, i8** @nf_nat_follow_master, align 8
  %64 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %21, align 8
  %65 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %64, i32 0, i32 2
  store i8* %63, i8** %65, align 8
  %66 = load i32, i32* %23, align 4
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %21, align 8
  %71 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  store i32 0, i32* %24, align 4
  br label %72

72:                                               ; preds = %144, %10
  %73 = load i32, i32* %24, align 4
  %74 = load i32, i32* @H323_RTP_CHANNEL_MAX, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %147

76:                                               ; preds = %72
  %77 = load %struct.nf_ct_h323_master*, %struct.nf_ct_h323_master** %22, align 8
  %78 = getelementptr inbounds %struct.nf_ct_h323_master, %struct.nf_ct_h323_master* %77, i32 0, i32 0
  %79 = load i64**, i64*** %78, align 8
  %80 = load i32, i32* %24, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64*, i64** %79, i64 %81
  %83 = load i64*, i64** %82, align 8
  %84 = load i32, i32* %23, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %83, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %19, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %128

90:                                               ; preds = %76
  %91 = load %struct.nf_ct_h323_master*, %struct.nf_ct_h323_master** %22, align 8
  %92 = getelementptr inbounds %struct.nf_ct_h323_master, %struct.nf_ct_h323_master* %91, i32 0, i32 0
  %93 = load i64**, i64*** %92, align 8
  %94 = load i32, i32* %24, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64*, i64** %93, i64 %95
  %97 = load i64*, i64** %96, align 8
  %98 = load i32, i32* %23, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i64, i64* %97, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %20, align 8
  %103 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 0
  store i64 %101, i64* %107, align 8
  %108 = load %struct.nf_ct_h323_master*, %struct.nf_ct_h323_master** %22, align 8
  %109 = getelementptr inbounds %struct.nf_ct_h323_master, %struct.nf_ct_h323_master* %108, i32 0, i32 0
  %110 = load i64**, i64*** %109, align 8
  %111 = load i32, i32* %24, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i64*, i64** %110, i64 %112
  %114 = load i64*, i64** %113, align 8
  %115 = load i32, i32* %23, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i64, i64* %114, i64 %116
  %118 = load i64, i64* %117, align 8
  %119 = call i32 @ntohs(i64 %118)
  %120 = add nsw i32 %119, 1
  %121 = call i64 @htons(i32 %120)
  %122 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %21, align 8
  %123 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i32 0, i32 0
  store i64 %121, i64* %127, align 8
  br label %147

128:                                              ; preds = %76
  %129 = load %struct.nf_ct_h323_master*, %struct.nf_ct_h323_master** %22, align 8
  %130 = getelementptr inbounds %struct.nf_ct_h323_master, %struct.nf_ct_h323_master* %129, i32 0, i32 0
  %131 = load i64**, i64*** %130, align 8
  %132 = load i32, i32* %24, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i64*, i64** %131, i64 %133
  %135 = load i64*, i64** %134, align 8
  %136 = load i32, i32* %23, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i64, i64* %135, i64 %137
  %139 = load i64, i64* %138, align 8
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %128
  br label %147

142:                                              ; preds = %128
  br label %143

143:                                              ; preds = %142
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %24, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %24, align 4
  br label %72

147:                                              ; preds = %141, %90, %72
  %148 = load i32, i32* %24, align 4
  %149 = load i32, i32* @H323_RTP_CHANNEL_MAX, align 4
  %150 = icmp sge i32 %148, %149
  br i1 %150, label %151, label %157

151:                                              ; preds = %147
  %152 = call i64 (...) @net_ratelimit()
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %151
  %155 = call i32 @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %156

156:                                              ; preds = %154, %151
  store i32 0, i32* %11, align 4
  br label %329

157:                                              ; preds = %147
  %158 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %20, align 8
  %159 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = call i32 @ntohs(i64 %164)
  store i32 %165, i32* %25, align 4
  br label %166

166:                                              ; preds = %199, %157
  %167 = load i32, i32* %25, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %202

169:                                              ; preds = %166
  %170 = load i32, i32* %25, align 4
  %171 = call i64 @htons(i32 %170)
  %172 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %20, align 8
  %173 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %176, i32 0, i32 0
  store i64 %171, i64* %177, align 8
  %178 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %20, align 8
  %179 = call i64 @nf_ct_expect_related(%struct.nf_conntrack_expect* %178)
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %181, label %198

181:                                              ; preds = %169
  %182 = load i32, i32* %25, align 4
  %183 = add nsw i32 %182, 1
  %184 = call i64 @htons(i32 %183)
  %185 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %21, align 8
  %186 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %189, i32 0, i32 0
  store i64 %184, i64* %190, align 8
  %191 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %21, align 8
  %192 = call i64 @nf_ct_expect_related(%struct.nf_conntrack_expect* %191)
  %193 = icmp eq i64 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %181
  br label %202

195:                                              ; preds = %181
  %196 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %20, align 8
  %197 = call i32 @nf_ct_unexpect_related(%struct.nf_conntrack_expect* %196)
  br label %198

198:                                              ; preds = %195, %169
  br label %199

199:                                              ; preds = %198
  %200 = load i32, i32* %25, align 4
  %201 = add nsw i32 %200, 2
  store i32 %201, i32* %25, align 4
  br label %166

202:                                              ; preds = %194, %166
  %203 = load i32, i32* %25, align 4
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %211

205:                                              ; preds = %202
  %206 = call i64 (...) @net_ratelimit()
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %210

208:                                              ; preds = %205
  %209 = call i32 @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %210

210:                                              ; preds = %208, %205
  store i32 0, i32* %11, align 4
  br label %329

211:                                              ; preds = %202
  %212 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %213 = load i8**, i8*** %15, align 8
  %214 = load i32, i32* %16, align 4
  %215 = load i32*, i32** %17, align 8
  %216 = load %struct.nf_conn*, %struct.nf_conn** %13, align 8
  %217 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %216, i32 0, i32 0
  %218 = load %struct.TYPE_29__*, %struct.TYPE_29__** %217, align 8
  %219 = load i32, i32* %23, align 4
  %220 = icmp ne i32 %219, 0
  %221 = xor i1 %220, true
  %222 = zext i1 %221 to i32
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %218, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %226, i32 0, i32 0
  %228 = load i64, i64* %18, align 8
  %229 = call i64 @htons(i32 1)
  %230 = and i64 %228, %229
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %235

232:                                              ; preds = %211
  %233 = load i32, i32* %25, align 4
  %234 = add nsw i32 %233, 1
  br label %237

235:                                              ; preds = %211
  %236 = load i32, i32* %25, align 4
  br label %237

237:                                              ; preds = %235, %232
  %238 = phi i32 [ %234, %232 ], [ %236, %235 ]
  %239 = call i64 @htons(i32 %238)
  %240 = call i64 @set_h245_addr(%struct.sk_buff* %212, i8** %213, i32 %214, i32* %215, i32* %227, i64 %239)
  %241 = icmp eq i64 %240, 0
  br i1 %241, label %242, label %269

242:                                              ; preds = %237
  %243 = load i64, i64* %19, align 8
  %244 = load %struct.nf_ct_h323_master*, %struct.nf_ct_h323_master** %22, align 8
  %245 = getelementptr inbounds %struct.nf_ct_h323_master, %struct.nf_ct_h323_master* %244, i32 0, i32 0
  %246 = load i64**, i64*** %245, align 8
  %247 = load i32, i32* %24, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i64*, i64** %246, i64 %248
  %250 = load i64*, i64** %249, align 8
  %251 = load i32, i32* %23, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i64, i64* %250, i64 %252
  store i64 %243, i64* %253, align 8
  %254 = load i32, i32* %25, align 4
  %255 = call i64 @htons(i32 %254)
  %256 = load %struct.nf_ct_h323_master*, %struct.nf_ct_h323_master** %22, align 8
  %257 = getelementptr inbounds %struct.nf_ct_h323_master, %struct.nf_ct_h323_master* %256, i32 0, i32 0
  %258 = load i64**, i64*** %257, align 8
  %259 = load i32, i32* %24, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i64*, i64** %258, i64 %260
  %262 = load i64*, i64** %261, align 8
  %263 = load i32, i32* %23, align 4
  %264 = icmp ne i32 %263, 0
  %265 = xor i1 %264, true
  %266 = zext i1 %265 to i32
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i64, i64* %262, i64 %267
  store i64 %255, i64* %268, align 8
  br label %274

269:                                              ; preds = %237
  %270 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %20, align 8
  %271 = call i32 @nf_ct_unexpect_related(%struct.nf_conntrack_expect* %270)
  %272 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %21, align 8
  %273 = call i32 @nf_ct_unexpect_related(%struct.nf_conntrack_expect* %272)
  store i32 -1, i32* %11, align 4
  br label %329

274:                                              ; preds = %242
  %275 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %20, align 8
  %276 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %275, i32 0, i32 1
  %277 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %276, i32 0, i32 1
  %278 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %277, i32 0, i32 1
  %279 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %278, i32 0, i32 0
  %280 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %20, align 8
  %281 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %280, i32 0, i32 1
  %282 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %281, i32 0, i32 1
  %283 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %282, i32 0, i32 0
  %284 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %284, i32 0, i32 0
  %286 = load i64, i64* %285, align 8
  %287 = call i32 @ntohs(i64 %286)
  %288 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %20, align 8
  %289 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %288, i32 0, i32 1
  %290 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %290, i32 0, i32 1
  %292 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %291, i32 0, i32 0
  %293 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %20, align 8
  %294 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %293, i32 0, i32 1
  %295 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %296, i32 0, i32 0
  %298 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %297, i32 0, i32 0
  %299 = load i64, i64* %298, align 8
  %300 = call i32 @ntohs(i64 %299)
  %301 = call i32 @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32* %279, i32 %287, i32* %292, i32 %300)
  %302 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %21, align 8
  %303 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %302, i32 0, i32 1
  %304 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %303, i32 0, i32 1
  %305 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %304, i32 0, i32 1
  %306 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %305, i32 0, i32 0
  %307 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %21, align 8
  %308 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %307, i32 0, i32 1
  %309 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %308, i32 0, i32 1
  %310 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %311, i32 0, i32 0
  %313 = load i64, i64* %312, align 8
  %314 = call i32 @ntohs(i64 %313)
  %315 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %21, align 8
  %316 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %315, i32 0, i32 1
  %317 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %316, i32 0, i32 0
  %318 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %317, i32 0, i32 1
  %319 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %318, i32 0, i32 0
  %320 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %21, align 8
  %321 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %320, i32 0, i32 1
  %322 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %321, i32 0, i32 0
  %323 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %322, i32 0, i32 0
  %324 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %323, i32 0, i32 0
  %325 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %324, i32 0, i32 0
  %326 = load i64, i64* %325, align 8
  %327 = call i32 @ntohs(i64 %326)
  %328 = call i32 @pr_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32* %306, i32 %314, i32* %319, i32 %327)
  store i32 0, i32* %11, align 4
  br label %329

329:                                              ; preds = %274, %269, %210, %156
  %330 = load i32, i32* %11, align 4
  ret i32 %330
}

declare dso_local %struct.TYPE_23__* @nfct_help(%struct.nf_conn*) #1

declare dso_local i32 @CTINFO2DIR(i32) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @ntohs(i64) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i64 @nf_ct_expect_related(%struct.nf_conntrack_expect*) #1

declare dso_local i32 @nf_ct_unexpect_related(%struct.nf_conntrack_expect*) #1

declare dso_local i64 @set_h245_addr(%struct.sk_buff*, i8**, i32, i32*, i32*, i64) #1

declare dso_local i32 @pr_debug(i8*, i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
