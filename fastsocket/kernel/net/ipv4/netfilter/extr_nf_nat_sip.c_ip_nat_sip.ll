; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_sip.c_ip_nat_sip.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_sip.c_ip_nat_sip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_conn = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__, %struct.TYPE_16__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__, %struct.TYPE_13__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_12__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_12__ = type { i64 }
%union.nf_inet_addr = type { i64 }

@.str = private unnamed_addr constant [8 x i8] c"SIP/2.0\00", align 1
@NF_DROP = common dso_local global i32 0, align 4
@SIP_HDR_VIA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"maddr=\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%pI4\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"received=\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"rport=\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@SIP_HDR_CONTACT = common dso_local global i32 0, align 4
@SIP_HDR_FROM = common dso_local global i32 0, align 4
@SIP_HDR_TO = common dso_local global i32 0, align 4
@NF_ACCEPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i8**, i32*)* @ip_nat_sip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_nat_sip(%struct.sk_buff* %0, i8** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nf_conn*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %union.nf_inet_addr, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca [22 x i8], align 16
  %24 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32* %2, i32** %7, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = call %struct.nf_conn* @nf_ct_get(%struct.sk_buff* %25, i32* %8)
  store %struct.nf_conn* %26, %struct.nf_conn** %9, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @CTINFO2DIR(i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i8**, i8*** %6, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %32 = call i64 @strnicmp(i8* %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %54

34:                                               ; preds = %3
  %35 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %36 = load i8**, i8*** %6, align 8
  %37 = load i8*, i8** %36, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @ct_sip_parse_request(%struct.nf_conn* %35, i8* %37, i32 %39, i32* %12, i32* %13, %union.nf_inet_addr* %14, i64* %15)
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %34
  %43 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %44 = load i8**, i8*** %6, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %13, align 4
  %48 = load i64, i64* %15, align 8
  %49 = call i32 @map_addr(%struct.sk_buff* %43, i8** %44, i32* %45, i32 %46, i32 %47, %union.nf_inet_addr* %14, i64 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %42
  %52 = load i32, i32* @NF_DROP, align 4
  store i32 %52, i32* %4, align 4
  br label %403

53:                                               ; preds = %42, %34
  store i32 1, i32* %16, align 4
  br label %55

54:                                               ; preds = %3
  store i32 0, i32* %16, align 4
  br label %55

55:                                               ; preds = %54, %53
  %56 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %57 = load i8**, i8*** %6, align 8
  %58 = load i8*, i8** %57, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @SIP_HDR_VIA, align 4
  %62 = call i64 @ct_sip_parse_header_uri(%struct.nf_conn* %56, i8* %58, i32* null, i32 %60, i32 %61, i32* null, i32* %12, i32* %13, %union.nf_inet_addr* %14, i64* %15)
  %63 = icmp sgt i64 %62, 0
  br i1 %63, label %64, label %362

64:                                               ; preds = %55
  %65 = load i32, i32* %16, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %99

67:                                               ; preds = %64
  %68 = bitcast %union.nf_inet_addr* %14 to i64*
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %71 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %70, i32 0, i32 0
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %71, align 8
  %73 = load i32, i32* %10, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %69, %80
  br i1 %81, label %97, label %82

82:                                               ; preds = %67
  %83 = load i64, i64* %15, align 8
  %84 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %85 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %84, i32 0, i32 0
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %85, align 8
  %87 = load i32, i32* %10, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %83, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %82, %67
  br label %363

98:                                               ; preds = %82
  br label %131

99:                                               ; preds = %64
  %100 = bitcast %union.nf_inet_addr* %14 to i64*
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %103 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %102, i32 0, i32 0
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %103, align 8
  %105 = load i32, i32* %10, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %101, %112
  br i1 %113, label %129, label %114

114:                                              ; preds = %99
  %115 = load i64, i64* %15, align 8
  %116 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %117 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %116, i32 0, i32 0
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %117, align 8
  %119 = load i32, i32* %10, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %115, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %114, %99
  br label %363

130:                                              ; preds = %114
  br label %131

131:                                              ; preds = %130, %98
  %132 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %133 = load i8**, i8*** %6, align 8
  %134 = load i32*, i32** %7, align 8
  %135 = load i32, i32* %12, align 4
  %136 = load i32, i32* %13, align 4
  %137 = load i64, i64* %15, align 8
  %138 = call i32 @map_addr(%struct.sk_buff* %132, i8** %133, i32* %134, i32 %135, i32 %136, %union.nf_inet_addr* %14, i64 %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %142, label %140

140:                                              ; preds = %131
  %141 = load i32, i32* @NF_DROP, align 4
  store i32 %141, i32* %4, align 4
  br label %403

142:                                              ; preds = %131
  %143 = load i32, i32* %12, align 4
  %144 = load i32, i32* %13, align 4
  %145 = add i32 %143, %144
  store i32 %145, i32* %18, align 4
  %146 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %147 = load i8**, i8*** %6, align 8
  %148 = load i8*, i8** %147, align 8
  %149 = load i32, i32* %18, align 4
  %150 = load i32*, i32** %7, align 8
  %151 = load i32, i32* %150, align 4
  %152 = call i64 @ct_sip_parse_address_param(%struct.nf_conn* %146, i8* %148, i32 %149, i32 %151, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* %19, i32* %20, %union.nf_inet_addr* %14)
  %153 = icmp sgt i64 %152, 0
  br i1 %153, label %154, label %215

154:                                              ; preds = %142
  %155 = bitcast %union.nf_inet_addr* %14 to i64*
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %158 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %157, i32 0, i32 0
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %158, align 8
  %160 = load i32, i32* %10, align 4
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = icmp eq i64 %156, %167
  br i1 %168, label %169, label %215

169:                                              ; preds = %154
  %170 = bitcast %union.nf_inet_addr* %14 to i64*
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %173 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %172, i32 0, i32 0
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %173, align 8
  %175 = load i32, i32* %10, align 4
  %176 = icmp ne i32 %175, 0
  %177 = xor i1 %176, true
  %178 = zext i1 %177 to i32
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %171, %185
  br i1 %186, label %187, label %215

187:                                              ; preds = %169
  %188 = getelementptr inbounds [22 x i8], [22 x i8]* %23, i64 0, i64 0
  %189 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %190 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %189, i32 0, i32 0
  %191 = load %struct.TYPE_11__*, %struct.TYPE_11__** %190, align 8
  %192 = load i32, i32* %10, align 4
  %193 = icmp ne i32 %192, 0
  %194 = xor i1 %193, true
  %195 = zext i1 %194 to i32
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i32 0, i32 0
  %202 = call i32 (i8*, i8*, ...) @sprintf(i8* %188, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64* %201)
  store i32 %202, i32* %21, align 4
  %203 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %204 = load i8**, i8*** %6, align 8
  %205 = load i32*, i32** %7, align 8
  %206 = load i32, i32* %19, align 4
  %207 = load i32, i32* %20, align 4
  %208 = getelementptr inbounds [22 x i8], [22 x i8]* %23, i64 0, i64 0
  %209 = load i32, i32* %21, align 4
  %210 = call i32 @mangle_packet(%struct.sk_buff* %203, i8** %204, i32* %205, i32 %206, i32 %207, i8* %208, i32 %209)
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %214, label %212

212:                                              ; preds = %187
  %213 = load i32, i32* @NF_DROP, align 4
  store i32 %213, i32* %4, align 4
  br label %403

214:                                              ; preds = %187
  br label %215

215:                                              ; preds = %214, %169, %154, %142
  %216 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %217 = load i8**, i8*** %6, align 8
  %218 = load i8*, i8** %217, align 8
  %219 = load i32, i32* %18, align 4
  %220 = load i32*, i32** %7, align 8
  %221 = load i32, i32* %220, align 4
  %222 = call i64 @ct_sip_parse_address_param(%struct.nf_conn* %216, i8* %218, i32 %219, i32 %221, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32* %19, i32* %20, %union.nf_inet_addr* %14)
  %223 = icmp sgt i64 %222, 0
  br i1 %223, label %224, label %285

224:                                              ; preds = %215
  %225 = bitcast %union.nf_inet_addr* %14 to i64*
  %226 = load i64, i64* %225, align 8
  %227 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %228 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %227, i32 0, i32 0
  %229 = load %struct.TYPE_11__*, %struct.TYPE_11__** %228, align 8
  %230 = load i32, i32* %10, align 4
  %231 = zext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %229, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %234, i32 0, i32 1
  %236 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = icmp eq i64 %226, %237
  br i1 %238, label %239, label %285

239:                                              ; preds = %224
  %240 = bitcast %union.nf_inet_addr* %14 to i64*
  %241 = load i64, i64* %240, align 8
  %242 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %243 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %242, i32 0, i32 0
  %244 = load %struct.TYPE_11__*, %struct.TYPE_11__** %243, align 8
  %245 = load i32, i32* %10, align 4
  %246 = icmp ne i32 %245, 0
  %247 = xor i1 %246, true
  %248 = zext i1 %247 to i32
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %244, i64 %249
  %251 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %252, i32 0, i32 1
  %254 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = icmp ne i64 %241, %255
  br i1 %256, label %257, label %285

257:                                              ; preds = %239
  %258 = getelementptr inbounds [22 x i8], [22 x i8]* %23, i64 0, i64 0
  %259 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %260 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %259, i32 0, i32 0
  %261 = load %struct.TYPE_11__*, %struct.TYPE_11__** %260, align 8
  %262 = load i32, i32* %10, align 4
  %263 = icmp ne i32 %262, 0
  %264 = xor i1 %263, true
  %265 = zext i1 %264 to i32
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %261, i64 %266
  %268 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %269, i32 0, i32 1
  %271 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %270, i32 0, i32 0
  %272 = call i32 (i8*, i8*, ...) @sprintf(i8* %258, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64* %271)
  store i32 %272, i32* %21, align 4
  %273 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %274 = load i8**, i8*** %6, align 8
  %275 = load i32*, i32** %7, align 8
  %276 = load i32, i32* %19, align 4
  %277 = load i32, i32* %20, align 4
  %278 = getelementptr inbounds [22 x i8], [22 x i8]* %23, i64 0, i64 0
  %279 = load i32, i32* %21, align 4
  %280 = call i32 @mangle_packet(%struct.sk_buff* %273, i8** %274, i32* %275, i32 %276, i32 %277, i8* %278, i32 %279)
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %284, label %282

282:                                              ; preds = %257
  %283 = load i32, i32* @NF_DROP, align 4
  store i32 %283, i32* %4, align 4
  br label %403

284:                                              ; preds = %257
  br label %285

285:                                              ; preds = %284, %239, %224, %215
  %286 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %287 = load i8**, i8*** %6, align 8
  %288 = load i8*, i8** %287, align 8
  %289 = load i32, i32* %18, align 4
  %290 = load i32*, i32** %7, align 8
  %291 = load i32, i32* %290, align 4
  %292 = call i64 @ct_sip_parse_numerical_param(%struct.nf_conn* %286, i8* %288, i32 %289, i32 %291, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32* %19, i32* %20, i32* %22)
  %293 = icmp sgt i64 %292, 0
  br i1 %293, label %294, label %361

294:                                              ; preds = %285
  %295 = load i32, i32* %22, align 4
  %296 = call i64 @htons(i32 %295)
  %297 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %298 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %297, i32 0, i32 0
  %299 = load %struct.TYPE_11__*, %struct.TYPE_11__** %298, align 8
  %300 = load i32, i32* %10, align 4
  %301 = zext i32 %300 to i64
  %302 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %299, i64 %301
  %303 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %303, i32 0, i32 1
  %305 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %304, i32 0, i32 0
  %306 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %305, i32 0, i32 0
  %307 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %306, i32 0, i32 0
  %308 = load i64, i64* %307, align 8
  %309 = icmp eq i64 %296, %308
  br i1 %309, label %310, label %361

310:                                              ; preds = %294
  %311 = load i32, i32* %22, align 4
  %312 = call i64 @htons(i32 %311)
  %313 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %314 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %313, i32 0, i32 0
  %315 = load %struct.TYPE_11__*, %struct.TYPE_11__** %314, align 8
  %316 = load i32, i32* %10, align 4
  %317 = icmp ne i32 %316, 0
  %318 = xor i1 %317, true
  %319 = zext i1 %318 to i32
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %315, i64 %320
  %322 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %321, i32 0, i32 0
  %323 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %322, i32 0, i32 0
  %324 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %323, i32 0, i32 0
  %325 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %324, i32 0, i32 0
  %326 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %325, i32 0, i32 0
  %327 = load i64, i64* %326, align 8
  %328 = icmp ne i64 %312, %327
  br i1 %328, label %329, label %361

329:                                              ; preds = %310
  %330 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %331 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %330, i32 0, i32 0
  %332 = load %struct.TYPE_11__*, %struct.TYPE_11__** %331, align 8
  %333 = load i32, i32* %10, align 4
  %334 = icmp ne i32 %333, 0
  %335 = xor i1 %334, true
  %336 = zext i1 %335 to i32
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %332, i64 %337
  %339 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %338, i32 0, i32 0
  %340 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %339, i32 0, i32 0
  %341 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %340, i32 0, i32 0
  %342 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %341, i32 0, i32 0
  %343 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %342, i32 0, i32 0
  %344 = load i64, i64* %343, align 8
  store i64 %344, i64* %24, align 8
  %345 = getelementptr inbounds [22 x i8], [22 x i8]* %23, i64 0, i64 0
  %346 = load i64, i64* %24, align 8
  %347 = call i32 @ntohs(i64 %346)
  %348 = call i32 (i8*, i8*, ...) @sprintf(i8* %345, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %347)
  store i32 %348, i32* %21, align 4
  %349 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %350 = load i8**, i8*** %6, align 8
  %351 = load i32*, i32** %7, align 8
  %352 = load i32, i32* %19, align 4
  %353 = load i32, i32* %20, align 4
  %354 = getelementptr inbounds [22 x i8], [22 x i8]* %23, i64 0, i64 0
  %355 = load i32, i32* %21, align 4
  %356 = call i32 @mangle_packet(%struct.sk_buff* %349, i8** %350, i32* %351, i32 %352, i32 %353, i8* %354, i32 %355)
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %360, label %358

358:                                              ; preds = %329
  %359 = load i32, i32* @NF_DROP, align 4
  store i32 %359, i32* %4, align 4
  br label %403

360:                                              ; preds = %329
  br label %361

361:                                              ; preds = %360, %310, %294, %285
  br label %362

362:                                              ; preds = %361, %55
  br label %363

363:                                              ; preds = %362, %129, %97
  store i32 0, i32* %11, align 4
  store i32 0, i32* %17, align 4
  br label %364

364:                                              ; preds = %384, %363
  %365 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %366 = load i8**, i8*** %6, align 8
  %367 = load i8*, i8** %366, align 8
  %368 = load i32*, i32** %7, align 8
  %369 = load i32, i32* %368, align 4
  %370 = load i32, i32* @SIP_HDR_CONTACT, align 4
  %371 = call i64 @ct_sip_parse_header_uri(%struct.nf_conn* %365, i8* %367, i32* %11, i32 %369, i32 %370, i32* %17, i32* %12, i32* %13, %union.nf_inet_addr* %14, i64* %15)
  %372 = icmp sgt i64 %371, 0
  br i1 %372, label %373, label %385

373:                                              ; preds = %364
  %374 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %375 = load i8**, i8*** %6, align 8
  %376 = load i32*, i32** %7, align 8
  %377 = load i32, i32* %12, align 4
  %378 = load i32, i32* %13, align 4
  %379 = load i64, i64* %15, align 8
  %380 = call i32 @map_addr(%struct.sk_buff* %374, i8** %375, i32* %376, i32 %377, i32 %378, %union.nf_inet_addr* %14, i64 %379)
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %384, label %382

382:                                              ; preds = %373
  %383 = load i32, i32* @NF_DROP, align 4
  store i32 %383, i32* %4, align 4
  br label %403

384:                                              ; preds = %373
  br label %364

385:                                              ; preds = %364
  %386 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %387 = load i8**, i8*** %6, align 8
  %388 = load i32*, i32** %7, align 8
  %389 = load i32, i32* @SIP_HDR_FROM, align 4
  %390 = call i32 @map_sip_addr(%struct.sk_buff* %386, i8** %387, i32* %388, i32 %389)
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %392, label %399

392:                                              ; preds = %385
  %393 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %394 = load i8**, i8*** %6, align 8
  %395 = load i32*, i32** %7, align 8
  %396 = load i32, i32* @SIP_HDR_TO, align 4
  %397 = call i32 @map_sip_addr(%struct.sk_buff* %393, i8** %394, i32* %395, i32 %396)
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %401, label %399

399:                                              ; preds = %392, %385
  %400 = load i32, i32* @NF_DROP, align 4
  store i32 %400, i32* %4, align 4
  br label %403

401:                                              ; preds = %392
  %402 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %402, i32* %4, align 4
  br label %403

403:                                              ; preds = %401, %399, %382, %358, %282, %212, %140, %51
  %404 = load i32, i32* %4, align 4
  ret i32 %404
}

declare dso_local %struct.nf_conn* @nf_ct_get(%struct.sk_buff*, i32*) #1

declare dso_local i32 @CTINFO2DIR(i32) #1

declare dso_local i64 @strnicmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @ct_sip_parse_request(%struct.nf_conn*, i8*, i32, i32*, i32*, %union.nf_inet_addr*, i64*) #1

declare dso_local i32 @map_addr(%struct.sk_buff*, i8**, i32*, i32, i32, %union.nf_inet_addr*, i64) #1

declare dso_local i64 @ct_sip_parse_header_uri(%struct.nf_conn*, i8*, i32*, i32, i32, i32*, i32*, i32*, %union.nf_inet_addr*, i64*) #1

declare dso_local i64 @ct_sip_parse_address_param(%struct.nf_conn*, i8*, i32, i32, i8*, i32*, i32*, %union.nf_inet_addr*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @mangle_packet(%struct.sk_buff*, i8**, i32*, i32, i32, i8*, i32) #1

declare dso_local i64 @ct_sip_parse_numerical_param(%struct.nf_conn*, i8*, i32, i32, i8*, i32*, i32*, i32*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @ntohs(i64) #1

declare dso_local i32 @map_sip_addr(%struct.sk_buff*, i8**, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
