; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_make_chunk.c_sctp_unpack_cookie.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_make_chunk.c_sctp_unpack_cookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_endpoint = type { i64, i64, %struct.TYPE_20__, i64*, i32* }
%struct.TYPE_20__ = type { i32 }
%struct.sctp_association = type { %struct.TYPE_15__, %struct.TYPE_21__, i64, i64, i64, i64, %struct.TYPE_23__ }
%struct.TYPE_15__ = type { i32, i32, i64 }
%struct.TYPE_21__ = type { i32, i32, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.sctp_chunk = type { i32, %struct.TYPE_22__*, %struct.TYPE_19__*, %struct.TYPE_16__, %struct.sk_buff* }
%struct.TYPE_22__ = type { i64, i64, i32 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_16__ = type { %struct.sctp_signed_cookie* }
%struct.sctp_signed_cookie = type { i32, %struct.sctp_cookie }
%struct.sctp_cookie = type { i64, i32, %struct.TYPE_24__, %struct.TYPE_18__ }
%struct.TYPE_24__ = type { i64, i64 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64 }
%struct.sk_buff = type { i32 }
%struct.scatterlist = type { i32 }
%struct.timeval = type { i64, i64 }
%struct.hash_desc = type { i64, i64 }
%struct.TYPE_13__ = type { i64 }

@SCTP_COOKIE_MULTIPLE = common dso_local global i32 0, align 4
@SCTP_SECRET_SIZE = common dso_local global i32 0, align 4
@SCTP_SIGNATURE_SIZE = common dso_local global i32 0, align 4
@SCTP_IERROR_NOMEM = common dso_local global i32 0, align 4
@SCTP_IERROR_BAD_SIG = common dso_local global i32 0, align 4
@SCTP_IERROR_BAD_TAG = common dso_local global i32 0, align 4
@SCTP_IERROR_BAD_PORTS = common dso_local global i32 0, align 4
@SOCK_TIMESTAMP = common dso_local global i32 0, align 4
@SCTP_ERROR_STALE_COOKIE = common dso_local global i32 0, align 4
@SCTP_IERROR_STALE_COOKIE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@SCTP_ADDR_SRC = common dso_local global i32 0, align 4
@SCTP_IERROR_MALFORMED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sctp_association* @sctp_unpack_cookie(%struct.sctp_endpoint* %0, %struct.sctp_association* %1, %struct.sctp_chunk* %2, i32 %3, i32* %4, %struct.sctp_chunk** %5) #0 {
  %7 = alloca %struct.sctp_association*, align 8
  %8 = alloca %struct.sctp_endpoint*, align 8
  %9 = alloca %struct.sctp_association*, align 8
  %10 = alloca %struct.sctp_chunk*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.sctp_chunk**, align 8
  %14 = alloca %struct.sctp_association*, align 8
  %15 = alloca %struct.sctp_signed_cookie*, align 8
  %16 = alloca %struct.sctp_cookie*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca %struct.scatterlist, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca %struct.sk_buff*, align 8
  %27 = alloca %struct.timeval, align 8
  %28 = alloca %struct.hash_desc, align 8
  %29 = alloca i64, align 8
  %30 = alloca i32, align 4
  store %struct.sctp_endpoint* %0, %struct.sctp_endpoint** %8, align 8
  store %struct.sctp_association* %1, %struct.sctp_association** %9, align 8
  store %struct.sctp_chunk* %2, %struct.sctp_chunk** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store %struct.sctp_chunk** %5, %struct.sctp_chunk*** %13, align 8
  store %struct.sctp_association* null, %struct.sctp_association** %14, align 8
  %31 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %8, align 8
  %32 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %31, i32 0, i32 4
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %20, align 8
  %34 = load %struct.sctp_chunk*, %struct.sctp_chunk** %10, align 8
  %35 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %34, i32 0, i32 4
  %36 = load %struct.sk_buff*, %struct.sk_buff** %35, align 8
  store %struct.sk_buff* %36, %struct.sk_buff** %26, align 8
  store i32 12, i32* %17, align 4
  %37 = load %struct.sctp_chunk*, %struct.sctp_chunk** %10, align 8
  %38 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %37, i32 0, i32 2
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @ntohs(i64 %41)
  %43 = load i32, i32* %17, align 4
  %44 = sub nsw i32 %42, %43
  store i32 %44, i32* %18, align 4
  %45 = load i32, i32* %17, align 4
  %46 = sext i32 %45 to i64
  %47 = add i64 %46, 40
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %19, align 4
  %49 = load %struct.sctp_chunk*, %struct.sctp_chunk** %10, align 8
  %50 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %49, i32 0, i32 2
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @ntohs(i64 %53)
  store i32 %54, i32* %23, align 4
  %55 = load i32, i32* %23, align 4
  %56 = zext i32 %55 to i64
  %57 = load i32, i32* %19, align 4
  %58 = sext i32 %57 to i64
  %59 = add i64 %58, 4
  %60 = icmp ult i64 %56, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %6
  br label %400

62:                                               ; preds = %6
  %63 = load i32, i32* %18, align 4
  %64 = load i32, i32* @SCTP_COOKIE_MULTIPLE, align 4
  %65 = srem i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %400

68:                                               ; preds = %62
  %69 = load %struct.sctp_chunk*, %struct.sctp_chunk** %10, align 8
  %70 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 0
  %72 = load %struct.sctp_signed_cookie*, %struct.sctp_signed_cookie** %71, align 8
  store %struct.sctp_signed_cookie* %72, %struct.sctp_signed_cookie** %15, align 8
  %73 = load %struct.sctp_signed_cookie*, %struct.sctp_signed_cookie** %15, align 8
  %74 = getelementptr inbounds %struct.sctp_signed_cookie, %struct.sctp_signed_cookie* %73, i32 0, i32 1
  store %struct.sctp_cookie* %74, %struct.sctp_cookie** %16, align 8
  %75 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %8, align 8
  %76 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call %struct.TYPE_13__* @sctp_sk(i32 %78)
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %68
  br label %175

84:                                               ; preds = %68
  %85 = load i32, i32* @SCTP_SECRET_SIZE, align 4
  store i32 %85, i32* %22, align 4
  %86 = load %struct.sctp_cookie*, %struct.sctp_cookie** %16, align 8
  %87 = load i32, i32* %18, align 4
  %88 = call i32 @sg_init_one(%struct.scatterlist* %21, %struct.sctp_cookie* %86, i32 %87)
  %89 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %8, align 8
  %90 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %89, i32 0, i32 3
  %91 = load i64*, i64** %90, align 8
  %92 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %8, align 8
  %93 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds i64, i64* %91, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = inttoptr i64 %96 to i8*
  store i8* %97, i8** %24, align 8
  %98 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %8, align 8
  %99 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call %struct.TYPE_13__* @sctp_sk(i32 %101)
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds %struct.hash_desc, %struct.hash_desc* %28, i32 0, i32 0
  store i64 %104, i64* %105, align 8
  %106 = getelementptr inbounds %struct.hash_desc, %struct.hash_desc* %28, i32 0, i32 1
  store i64 0, i64* %106, align 8
  %107 = load i32*, i32** %20, align 8
  %108 = load i32, i32* @SCTP_SIGNATURE_SIZE, align 4
  %109 = call i32 @memset(i32* %107, i32 0, i32 %108)
  %110 = getelementptr inbounds %struct.hash_desc, %struct.hash_desc* %28, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i8*, i8** %24, align 8
  %113 = load i32, i32* %22, align 4
  %114 = call i64 @crypto_hash_setkey(i64 %111, i8* %112, i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %121, label %116

116:                                              ; preds = %84
  %117 = load i32, i32* %18, align 4
  %118 = load i32*, i32** %20, align 8
  %119 = call i64 @crypto_hash_digest(%struct.hash_desc* %28, %struct.scatterlist* %21, i32 %117, i32* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %116, %84
  %122 = load i32, i32* @SCTP_IERROR_NOMEM, align 4
  %123 = sub nsw i32 0, %122
  %124 = load i32*, i32** %12, align 8
  store i32 %123, i32* %124, align 4
  br label %393

125:                                              ; preds = %116
  %126 = load i32*, i32** %20, align 8
  %127 = load %struct.sctp_signed_cookie*, %struct.sctp_signed_cookie** %15, align 8
  %128 = getelementptr inbounds %struct.sctp_signed_cookie, %struct.sctp_signed_cookie* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @SCTP_SIGNATURE_SIZE, align 4
  %131 = call i64 @memcmp(i32* %126, i32 %129, i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %174

133:                                              ; preds = %125
  %134 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %8, align 8
  %135 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %134, i32 0, i32 3
  %136 = load i64*, i64** %135, align 8
  %137 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %8, align 8
  %138 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = getelementptr inbounds i64, i64* %136, i64 %139
  %141 = load i64, i64* %140, align 8
  %142 = inttoptr i64 %141 to i8*
  store i8* %142, i8** %24, align 8
  %143 = load i32*, i32** %20, align 8
  %144 = load i32, i32* @SCTP_SIGNATURE_SIZE, align 4
  %145 = call i32 @memset(i32* %143, i32 0, i32 %144)
  %146 = getelementptr inbounds %struct.hash_desc, %struct.hash_desc* %28, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i8*, i8** %24, align 8
  %149 = load i32, i32* %22, align 4
  %150 = call i64 @crypto_hash_setkey(i64 %147, i8* %148, i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %157, label %152

152:                                              ; preds = %133
  %153 = load i32, i32* %18, align 4
  %154 = load i32*, i32** %20, align 8
  %155 = call i64 @crypto_hash_digest(%struct.hash_desc* %28, %struct.scatterlist* %21, i32 %153, i32* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %152, %133
  %158 = load i32, i32* @SCTP_IERROR_NOMEM, align 4
  %159 = sub nsw i32 0, %158
  %160 = load i32*, i32** %12, align 8
  store i32 %159, i32* %160, align 4
  br label %393

161:                                              ; preds = %152
  %162 = load i32*, i32** %20, align 8
  %163 = load %struct.sctp_signed_cookie*, %struct.sctp_signed_cookie** %15, align 8
  %164 = getelementptr inbounds %struct.sctp_signed_cookie, %struct.sctp_signed_cookie* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @SCTP_SIGNATURE_SIZE, align 4
  %167 = call i64 @memcmp(i32* %162, i32 %165, i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %161
  %170 = load i32, i32* @SCTP_IERROR_BAD_SIG, align 4
  %171 = sub nsw i32 0, %170
  %172 = load i32*, i32** %12, align 8
  store i32 %171, i32* %172, align 4
  br label %393

173:                                              ; preds = %161
  br label %174

174:                                              ; preds = %173, %125
  br label %175

175:                                              ; preds = %174, %83
  %176 = load %struct.sctp_chunk*, %struct.sctp_chunk** %10, align 8
  %177 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %176, i32 0, i32 1
  %178 = load %struct.TYPE_22__*, %struct.TYPE_22__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = call i64 @ntohl(i32 %180)
  %182 = load %struct.sctp_cookie*, %struct.sctp_cookie** %16, align 8
  %183 = getelementptr inbounds %struct.sctp_cookie, %struct.sctp_cookie* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %181, %184
  br i1 %185, label %186, label %190

186:                                              ; preds = %175
  %187 = load i32, i32* @SCTP_IERROR_BAD_TAG, align 4
  %188 = sub nsw i32 0, %187
  %189 = load i32*, i32** %12, align 8
  store i32 %188, i32* %189, align 4
  br label %393

190:                                              ; preds = %175
  %191 = load %struct.sctp_chunk*, %struct.sctp_chunk** %10, align 8
  %192 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %191, i32 0, i32 1
  %193 = load %struct.TYPE_22__*, %struct.TYPE_22__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.sctp_cookie*, %struct.sctp_cookie** %16, align 8
  %197 = getelementptr inbounds %struct.sctp_cookie, %struct.sctp_cookie* %196, i32 0, i32 3
  %198 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %195, %200
  br i1 %201, label %213, label %202

202:                                              ; preds = %190
  %203 = load %struct.sctp_chunk*, %struct.sctp_chunk** %10, align 8
  %204 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %203, i32 0, i32 1
  %205 = load %struct.TYPE_22__*, %struct.TYPE_22__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = call i32 @ntohs(i64 %207)
  %209 = load %struct.sctp_cookie*, %struct.sctp_cookie** %16, align 8
  %210 = getelementptr inbounds %struct.sctp_cookie, %struct.sctp_cookie* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 8
  %212 = icmp ne i32 %208, %211
  br i1 %212, label %213, label %217

213:                                              ; preds = %202, %190
  %214 = load i32, i32* @SCTP_IERROR_BAD_PORTS, align 4
  %215 = sub nsw i32 0, %214
  %216 = load i32*, i32** %12, align 8
  store i32 %215, i32* %216, align 4
  br label %393

217:                                              ; preds = %202
  %218 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %8, align 8
  %219 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %218, i32 0, i32 2
  %220 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* @SOCK_TIMESTAMP, align 4
  %223 = call i64 @sock_flag(i32 %221, i32 %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %228

225:                                              ; preds = %217
  %226 = load %struct.sk_buff*, %struct.sk_buff** %26, align 8
  %227 = call i32 @skb_get_timestamp(%struct.sk_buff* %226, %struct.timeval* %27)
  br label %230

228:                                              ; preds = %217
  %229 = call i32 @do_gettimeofday(%struct.timeval* %27)
  br label %230

230:                                              ; preds = %228, %225
  %231 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %232 = icmp ne %struct.sctp_association* %231, null
  br i1 %232, label %297, label %233

233:                                              ; preds = %230
  %234 = load %struct.sctp_cookie*, %struct.sctp_cookie** %16, align 8
  %235 = getelementptr inbounds %struct.sctp_cookie, %struct.sctp_cookie* %234, i32 0, i32 2
  %236 = bitcast %struct.TYPE_24__* %235 to { i64, i64 }*
  %237 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %236, i32 0, i32 1
  %240 = load i64, i64* %239, align 8
  %241 = bitcast %struct.timeval* %27 to { i64, i64 }*
  %242 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %241, i32 0, i32 1
  %245 = load i64, i64* %244, align 8
  %246 = call i64 @tv_lt(i64 %238, i64 %240, i64 %243, i64 %245)
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %297

248:                                              ; preds = %233
  %249 = load %struct.sctp_chunk*, %struct.sctp_chunk** %10, align 8
  %250 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %249, i32 0, i32 2
  %251 = load %struct.TYPE_19__*, %struct.TYPE_19__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = call i32 @ntohs(i64 %253)
  store i32 %254, i32* %23, align 4
  %255 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %256 = load %struct.sctp_chunk*, %struct.sctp_chunk** %10, align 8
  %257 = load i32, i32* %23, align 4
  %258 = call %struct.sctp_chunk* @sctp_make_op_error_space(%struct.sctp_association* %255, %struct.sctp_chunk* %256, i32 %257)
  %259 = load %struct.sctp_chunk**, %struct.sctp_chunk*** %13, align 8
  store %struct.sctp_chunk* %258, %struct.sctp_chunk** %259, align 8
  %260 = load %struct.sctp_chunk**, %struct.sctp_chunk*** %13, align 8
  %261 = load %struct.sctp_chunk*, %struct.sctp_chunk** %260, align 8
  %262 = icmp ne %struct.sctp_chunk* %261, null
  br i1 %262, label %263, label %292

263:                                              ; preds = %248
  %264 = getelementptr inbounds %struct.timeval, %struct.timeval* %27, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = load %struct.sctp_cookie*, %struct.sctp_cookie** %16, align 8
  %267 = getelementptr inbounds %struct.sctp_cookie, %struct.sctp_cookie* %266, i32 0, i32 2
  %268 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = sub nsw i64 %265, %269
  %271 = mul nsw i64 %270, 1000000
  %272 = getelementptr inbounds %struct.timeval, %struct.timeval* %27, i32 0, i32 1
  %273 = load i64, i64* %272, align 8
  %274 = add nsw i64 %271, %273
  %275 = load %struct.sctp_cookie*, %struct.sctp_cookie** %16, align 8
  %276 = getelementptr inbounds %struct.sctp_cookie, %struct.sctp_cookie* %275, i32 0, i32 2
  %277 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %276, i32 0, i32 1
  %278 = load i64, i64* %277, align 8
  %279 = sub nsw i64 %274, %278
  store i64 %279, i64* %29, align 8
  %280 = load i64, i64* %29, align 8
  %281 = call i32 @htonl(i64 %280)
  store i32 %281, i32* %30, align 4
  %282 = load %struct.sctp_chunk**, %struct.sctp_chunk*** %13, align 8
  %283 = load %struct.sctp_chunk*, %struct.sctp_chunk** %282, align 8
  %284 = load i32, i32* @SCTP_ERROR_STALE_COOKIE, align 4
  %285 = call i32 @sctp_init_cause(%struct.sctp_chunk* %283, i32 %284, i32 4)
  %286 = load %struct.sctp_chunk**, %struct.sctp_chunk*** %13, align 8
  %287 = load %struct.sctp_chunk*, %struct.sctp_chunk** %286, align 8
  %288 = call i32 @sctp_addto_chunk(%struct.sctp_chunk* %287, i32 4, i32* %30)
  %289 = load i32, i32* @SCTP_IERROR_STALE_COOKIE, align 4
  %290 = sub nsw i32 0, %289
  %291 = load i32*, i32** %12, align 8
  store i32 %290, i32* %291, align 4
  br label %296

292:                                              ; preds = %248
  %293 = load i32, i32* @SCTP_IERROR_NOMEM, align 4
  %294 = sub nsw i32 0, %293
  %295 = load i32*, i32** %12, align 8
  store i32 %294, i32* %295, align 4
  br label %296

296:                                              ; preds = %292, %263
  br label %393

297:                                              ; preds = %233, %230
  %298 = load %struct.sctp_chunk*, %struct.sctp_chunk** %10, align 8
  %299 = call i32 @sctp_source(%struct.sctp_chunk* %298)
  %300 = call i32 @sctp_scope(i32 %299)
  store i32 %300, i32* %25, align 4
  %301 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %8, align 8
  %302 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %8, align 8
  %303 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %302, i32 0, i32 2
  %304 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = load i32, i32* %25, align 4
  %307 = load i32, i32* %11, align 4
  %308 = call %struct.sctp_association* @sctp_association_new(%struct.sctp_endpoint* %301, i32 %305, i32 %306, i32 %307)
  store %struct.sctp_association* %308, %struct.sctp_association** %14, align 8
  %309 = load %struct.sctp_association*, %struct.sctp_association** %14, align 8
  %310 = icmp ne %struct.sctp_association* %309, null
  br i1 %310, label %315, label %311

311:                                              ; preds = %297
  %312 = load i32, i32* @SCTP_IERROR_NOMEM, align 4
  %313 = sub nsw i32 0, %312
  %314 = load i32*, i32** %12, align 8
  store i32 %313, i32* %314, align 4
  br label %393

315:                                              ; preds = %297
  %316 = load %struct.sctp_chunk*, %struct.sctp_chunk** %10, align 8
  %317 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %316, i32 0, i32 1
  %318 = load %struct.TYPE_22__*, %struct.TYPE_22__** %317, align 8
  %319 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %318, i32 0, i32 0
  %320 = load i64, i64* %319, align 8
  %321 = call i32 @ntohs(i64 %320)
  %322 = load %struct.sctp_association*, %struct.sctp_association** %14, align 8
  %323 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %322, i32 0, i32 1
  %324 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %323, i32 0, i32 0
  store i32 %321, i32* %324, align 8
  %325 = load %struct.sctp_association*, %struct.sctp_association** %14, align 8
  %326 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %325, i32 0, i32 0
  %327 = load %struct.sctp_cookie*, %struct.sctp_cookie** %16, align 8
  %328 = call i32 @memcpy(%struct.TYPE_15__* %326, %struct.sctp_cookie* %327, i32 40)
  %329 = load %struct.sctp_association*, %struct.sctp_association** %14, align 8
  %330 = load %struct.sctp_cookie*, %struct.sctp_cookie** %16, align 8
  %331 = load i32, i32* @GFP_ATOMIC, align 4
  %332 = call i64 @sctp_assoc_set_bind_addr_from_cookie(%struct.sctp_association* %329, %struct.sctp_cookie* %330, i32 %331)
  %333 = icmp slt i64 %332, 0
  br i1 %333, label %334, label %338

334:                                              ; preds = %315
  %335 = load i32, i32* @SCTP_IERROR_NOMEM, align 4
  %336 = sub nsw i32 0, %335
  %337 = load i32*, i32** %12, align 8
  store i32 %336, i32* %337, align 4
  br label %393

338:                                              ; preds = %315
  %339 = load %struct.sctp_association*, %struct.sctp_association** %14, align 8
  %340 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %339, i32 0, i32 6
  %341 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %340, i32 0, i32 0
  %342 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %341, i32 0, i32 0
  %343 = call i64 @list_empty(i32* %342)
  %344 = icmp ne i64 %343, 0
  br i1 %344, label %345, label %354

345:                                              ; preds = %338
  %346 = load %struct.sctp_association*, %struct.sctp_association** %14, align 8
  %347 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %346, i32 0, i32 6
  %348 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %347, i32 0, i32 0
  %349 = load %struct.sctp_chunk*, %struct.sctp_chunk** %10, align 8
  %350 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %349, i32 0, i32 0
  %351 = load i32, i32* @SCTP_ADDR_SRC, align 4
  %352 = load i32, i32* @GFP_ATOMIC, align 4
  %353 = call i32 @sctp_add_bind_addr(%struct.TYPE_14__* %348, i32* %350, i32 %351, i32 %352)
  br label %354

354:                                              ; preds = %345, %338
  %355 = load %struct.sctp_association*, %struct.sctp_association** %14, align 8
  %356 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %355, i32 0, i32 0
  %357 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %356, i32 0, i32 2
  %358 = load i64, i64* %357, align 8
  %359 = load %struct.sctp_association*, %struct.sctp_association** %14, align 8
  %360 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %359, i32 0, i32 5
  store i64 %358, i64* %360, align 8
  %361 = load %struct.sctp_association*, %struct.sctp_association** %14, align 8
  %362 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %361, i32 0, i32 5
  %363 = load i64, i64* %362, align 8
  %364 = sub nsw i64 %363, 1
  %365 = load %struct.sctp_association*, %struct.sctp_association** %14, align 8
  %366 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %365, i32 0, i32 2
  store i64 %364, i64* %366, align 8
  %367 = load %struct.sctp_association*, %struct.sctp_association** %14, align 8
  %368 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %367, i32 0, i32 0
  %369 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %368, i32 0, i32 2
  %370 = load i64, i64* %369, align 8
  %371 = load %struct.sctp_association*, %struct.sctp_association** %14, align 8
  %372 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %371, i32 0, i32 4
  store i64 %370, i64* %372, align 8
  %373 = load %struct.sctp_association*, %struct.sctp_association** %14, align 8
  %374 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %373, i32 0, i32 2
  %375 = load i64, i64* %374, align 8
  %376 = load %struct.sctp_association*, %struct.sctp_association** %14, align 8
  %377 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %376, i32 0, i32 3
  store i64 %375, i64* %377, align 8
  %378 = load %struct.sctp_association*, %struct.sctp_association** %14, align 8
  %379 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %378, i32 0, i32 0
  %380 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %379, i32 0, i32 1
  %381 = load i32, i32* %380, align 4
  %382 = load %struct.sctp_association*, %struct.sctp_association** %14, align 8
  %383 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %382, i32 0, i32 1
  %384 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %383, i32 0, i32 2
  store i32 %381, i32* %384, align 8
  %385 = load %struct.sctp_association*, %struct.sctp_association** %14, align 8
  %386 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %385, i32 0, i32 0
  %387 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %386, i32 0, i32 0
  %388 = load i32, i32* %387, align 8
  %389 = load %struct.sctp_association*, %struct.sctp_association** %14, align 8
  %390 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %389, i32 0, i32 1
  %391 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %390, i32 0, i32 1
  store i32 %388, i32* %391, align 4
  %392 = load %struct.sctp_association*, %struct.sctp_association** %14, align 8
  store %struct.sctp_association* %392, %struct.sctp_association** %7, align 8
  br label %404

393:                                              ; preds = %400, %334, %311, %296, %213, %186, %169, %157, %121
  %394 = load %struct.sctp_association*, %struct.sctp_association** %14, align 8
  %395 = icmp ne %struct.sctp_association* %394, null
  br i1 %395, label %396, label %399

396:                                              ; preds = %393
  %397 = load %struct.sctp_association*, %struct.sctp_association** %14, align 8
  %398 = call i32 @sctp_association_free(%struct.sctp_association* %397)
  br label %399

399:                                              ; preds = %396, %393
  store %struct.sctp_association* null, %struct.sctp_association** %7, align 8
  br label %404

400:                                              ; preds = %67, %61
  %401 = load i32, i32* @SCTP_IERROR_MALFORMED, align 4
  %402 = sub nsw i32 0, %401
  %403 = load i32*, i32** %12, align 8
  store i32 %402, i32* %403, align 4
  br label %393

404:                                              ; preds = %399, %354
  %405 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  ret %struct.sctp_association* %405
}

declare dso_local i32 @ntohs(i64) #1

declare dso_local %struct.TYPE_13__* @sctp_sk(i32) #1

declare dso_local i32 @sg_init_one(%struct.scatterlist*, %struct.sctp_cookie*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @crypto_hash_setkey(i64, i8*, i32) #1

declare dso_local i64 @crypto_hash_digest(%struct.hash_desc*, %struct.scatterlist*, i32, i32*) #1

declare dso_local i64 @memcmp(i32*, i32, i32) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i64 @sock_flag(i32, i32) #1

declare dso_local i32 @skb_get_timestamp(%struct.sk_buff*, %struct.timeval*) #1

declare dso_local i32 @do_gettimeofday(%struct.timeval*) #1

declare dso_local i64 @tv_lt(i64, i64, i64, i64) #1

declare dso_local %struct.sctp_chunk* @sctp_make_op_error_space(%struct.sctp_association*, %struct.sctp_chunk*, i32) #1

declare dso_local i32 @htonl(i64) #1

declare dso_local i32 @sctp_init_cause(%struct.sctp_chunk*, i32, i32) #1

declare dso_local i32 @sctp_addto_chunk(%struct.sctp_chunk*, i32, i32*) #1

declare dso_local i32 @sctp_scope(i32) #1

declare dso_local i32 @sctp_source(%struct.sctp_chunk*) #1

declare dso_local %struct.sctp_association* @sctp_association_new(%struct.sctp_endpoint*, i32, i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_15__*, %struct.sctp_cookie*, i32) #1

declare dso_local i64 @sctp_assoc_set_bind_addr_from_cookie(%struct.sctp_association*, %struct.sctp_cookie*, i32) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @sctp_add_bind_addr(%struct.TYPE_14__*, i32*, i32, i32) #1

declare dso_local i32 @sctp_association_free(%struct.sctp_association*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
