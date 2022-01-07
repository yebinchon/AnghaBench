; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_gss_krb5_wrap.c_gss_unwrap_kerberos_v1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_gss_krb5_wrap.c_gss_unwrap_kerberos_v1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.krb5_ctx = type { i64, i8*, i64, %struct.TYPE_3__*, %struct.crypto_blkcipher*, i64, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i64, i32 }
%struct.crypto_blkcipher = type { i32 }
%struct.xdr_buf = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8*, i32 }
%struct.xdr_netobj = type { i32, i8* }

@GSS_KRB5_MAX_CKSUM_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"RPC:       gss_unwrap_kerberos\0A\00", align 1
@GSS_S_DEFECTIVE_TOKEN = common dso_local global i32 0, align 4
@KG_TOK_WRAP_MSG = common dso_local global i32 0, align 4
@GSS_KRB5_TOK_HDR_LEN = common dso_local global i32 0, align 4
@GSS_S_BAD_SIG = common dso_local global i32 0, align 4
@ENCTYPE_ARCFOUR_HMAC = common dso_local global i64 0, align 8
@CRYPTO_ALG_ASYNC = common dso_local global i32 0, align 4
@GSS_S_FAILURE = common dso_local global i32 0, align 4
@KG_USAGE_SEAL = common dso_local global i32 0, align 4
@GSS_S_CONTEXT_EXPIRED = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.krb5_ctx*, i32, %struct.xdr_buf*)* @gss_unwrap_kerberos_v1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gss_unwrap_kerberos_v1(%struct.krb5_ctx* %0, i32 %1, %struct.xdr_buf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.krb5_ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.xdr_buf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.xdr_netobj, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca %struct.crypto_blkcipher*, align 8
  %27 = alloca i32, align 4
  store %struct.krb5_ctx* %0, %struct.krb5_ctx** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.xdr_buf* %2, %struct.xdr_buf** %7, align 8
  %28 = load i32, i32* @GSS_KRB5_MAX_CKSUM_LEN, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %10, align 8
  %31 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %11, align 8
  %32 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %12, i32 0, i32 0
  %33 = trunc i64 %29 to i32
  store i32 %33, i32* %32, align 8
  %34 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %12, i32 0, i32 1
  store i8* %31, i8** %34, align 8
  %35 = load %struct.krb5_ctx*, %struct.krb5_ctx** %5, align 8
  %36 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %35, i32 0, i32 3
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %22, align 4
  %40 = call i32 @dprintk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %42 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  store i8* %49, i8** %16, align 8
  %50 = load %struct.krb5_ctx*, %struct.krb5_ctx** %5, align 8
  %51 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %50, i32 0, i32 6
  %52 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %53 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = sub nsw i64 %54, %56
  %58 = call i64 @g_verify_token_header(i32* %51, i32* %17, i8** %16, i64 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %3
  %61 = load i32, i32* @GSS_S_DEFECTIVE_TOKEN, align 4
  store i32 %61, i32* %4, align 4
  store i32 1, i32* %25, align 4
  br label %360

62:                                               ; preds = %3
  %63 = load i8*, i8** %16, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 0
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = load i32, i32* @KG_TOK_WRAP_MSG, align 4
  %68 = ashr i32 %67, 8
  %69 = and i32 %68, 255
  %70 = icmp ne i32 %66, %69
  br i1 %70, label %79, label %71

71:                                               ; preds = %62
  %72 = load i8*, i8** %16, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 1
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = load i32, i32* @KG_TOK_WRAP_MSG, align 4
  %77 = and i32 %76, 255
  %78 = icmp ne i32 %75, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %71, %62
  %80 = load i32, i32* @GSS_S_DEFECTIVE_TOKEN, align 4
  store i32 %80, i32* %4, align 4
  store i32 1, i32* %25, align 4
  br label %360

81:                                               ; preds = %71
  %82 = load i8*, i8** %16, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 2
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = load i8*, i8** %16, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 3
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  %90 = shl i32 %89, 8
  %91 = add nsw i32 %85, %90
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = load %struct.krb5_ctx*, %struct.krb5_ctx** %5, align 8
  %94 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %93, i32 0, i32 3
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %92, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %81
  %100 = load i32, i32* @GSS_S_DEFECTIVE_TOKEN, align 4
  store i32 %100, i32* %4, align 4
  store i32 1, i32* %25, align 4
  br label %360

101:                                              ; preds = %81
  %102 = load i8*, i8** %16, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 4
  %104 = load i8, i8* %103, align 1
  %105 = zext i8 %104 to i32
  %106 = load i8*, i8** %16, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 5
  %108 = load i8, i8* %107, align 1
  %109 = zext i8 %108 to i32
  %110 = shl i32 %109, 8
  %111 = add nsw i32 %105, %110
  store i32 %111, i32* %9, align 4
  %112 = load i32, i32* %9, align 4
  %113 = load %struct.krb5_ctx*, %struct.krb5_ctx** %5, align 8
  %114 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %113, i32 0, i32 3
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = icmp ne i32 %112, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %101
  %120 = load i32, i32* @GSS_S_DEFECTIVE_TOKEN, align 4
  store i32 %120, i32* %4, align 4
  store i32 1, i32* %25, align 4
  br label %360

121:                                              ; preds = %101
  %122 = load i8*, i8** %16, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 6
  %124 = load i8, i8* %123, align 1
  %125 = zext i8 %124 to i32
  %126 = icmp ne i32 %125, 255
  br i1 %126, label %133, label %127

127:                                              ; preds = %121
  %128 = load i8*, i8** %16, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 7
  %130 = load i8, i8* %129, align 1
  %131 = zext i8 %130 to i32
  %132 = icmp ne i32 %131, 255
  br i1 %132, label %133, label %135

133:                                              ; preds = %127, %121
  %134 = load i32, i32* @GSS_S_DEFECTIVE_TOKEN, align 4
  store i32 %134, i32* %4, align 4
  store i32 1, i32* %25, align 4
  br label %360

135:                                              ; preds = %127
  %136 = load i8*, i8** %16, align 8
  %137 = load i32, i32* @GSS_KRB5_TOK_HDR_LEN, align 4
  %138 = load %struct.krb5_ctx*, %struct.krb5_ctx** %5, align 8
  %139 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %138, i32 0, i32 3
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %137, %142
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %136, i64 %144
  %146 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %147 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %146, i32 0, i32 1
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i64 0
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = load i8*, i8** %150, align 8
  %152 = ptrtoint i8* %145 to i64
  %153 = ptrtoint i8* %151 to i64
  %154 = sub i64 %152, %153
  %155 = trunc i64 %154 to i32
  store i32 %155, i32* %23, align 4
  %156 = load %struct.krb5_ctx*, %struct.krb5_ctx** %5, align 8
  %157 = load i8*, i8** %16, align 8
  %158 = load i32, i32* @GSS_KRB5_TOK_HDR_LEN, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8, i8* %157, i64 %159
  %161 = load i8*, i8** %16, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 8
  %163 = call i64 @krb5_get_seq_num(%struct.krb5_ctx* %156, i8* %160, i8* %162, i32* %14, i64* %15)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %135
  %166 = load i32, i32* @GSS_S_BAD_SIG, align 4
  store i32 %166, i32* %4, align 4
  store i32 1, i32* %25, align 4
  br label %360

167:                                              ; preds = %135
  %168 = load %struct.krb5_ctx*, %struct.krb5_ctx** %5, align 8
  %169 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %168, i32 0, i32 5
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %167
  %173 = load i32, i32* %14, align 4
  %174 = icmp ne i32 %173, 255
  br i1 %174, label %183, label %175

175:                                              ; preds = %172, %167
  %176 = load %struct.krb5_ctx*, %struct.krb5_ctx** %5, align 8
  %177 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %176, i32 0, i32 5
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %185, label %180

180:                                              ; preds = %175
  %181 = load i32, i32* %14, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %180, %172
  %184 = load i32, i32* @GSS_S_BAD_SIG, align 4
  store i32 %184, i32* %4, align 4
  store i32 1, i32* %25, align 4
  br label %360

185:                                              ; preds = %180, %175
  %186 = load %struct.krb5_ctx*, %struct.krb5_ctx** %5, align 8
  %187 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @ENCTYPE_ARCFOUR_HMAC, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %191, label %220

191:                                              ; preds = %185
  %192 = load %struct.krb5_ctx*, %struct.krb5_ctx** %5, align 8
  %193 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %192, i32 0, i32 3
  %194 = load %struct.TYPE_3__*, %struct.TYPE_3__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 5
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @CRYPTO_ALG_ASYNC, align 4
  %198 = call %struct.crypto_blkcipher* @crypto_alloc_blkcipher(i32 %196, i32 0, i32 %197)
  store %struct.crypto_blkcipher* %198, %struct.crypto_blkcipher** %26, align 8
  %199 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %26, align 8
  %200 = call i64 @IS_ERR(%struct.crypto_blkcipher* %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %191
  %203 = load i32, i32* @GSS_S_FAILURE, align 4
  store i32 %203, i32* %4, align 4
  store i32 1, i32* %25, align 4
  br label %360

204:                                              ; preds = %191
  %205 = load %struct.krb5_ctx*, %struct.krb5_ctx** %5, align 8
  %206 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %26, align 8
  %207 = load i64, i64* %15, align 8
  %208 = call i32 @krb5_rc4_setup_enc_key(%struct.krb5_ctx* %205, %struct.crypto_blkcipher* %206, i64 %207)
  %209 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %26, align 8
  %210 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %211 = load i32, i32* %23, align 4
  %212 = call i32 @gss_decrypt_xdr_buf(%struct.crypto_blkcipher* %209, %struct.xdr_buf* %210, i32 %211)
  store i32 %212, i32* %27, align 4
  %213 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %26, align 8
  %214 = call i32 @crypto_free_blkcipher(%struct.crypto_blkcipher* %213)
  %215 = load i32, i32* %27, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %204
  %218 = load i32, i32* @GSS_S_DEFECTIVE_TOKEN, align 4
  store i32 %218, i32* %4, align 4
  store i32 1, i32* %25, align 4
  br label %360

219:                                              ; preds = %204
  br label %231

220:                                              ; preds = %185
  %221 = load %struct.krb5_ctx*, %struct.krb5_ctx** %5, align 8
  %222 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %221, i32 0, i32 4
  %223 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %222, align 8
  %224 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %225 = load i32, i32* %23, align 4
  %226 = call i32 @gss_decrypt_xdr_buf(%struct.crypto_blkcipher* %223, %struct.xdr_buf* %224, i32 %225)
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %230

228:                                              ; preds = %220
  %229 = load i32, i32* @GSS_S_DEFECTIVE_TOKEN, align 4
  store i32 %229, i32* %4, align 4
  store i32 1, i32* %25, align 4
  br label %360

230:                                              ; preds = %220
  br label %231

231:                                              ; preds = %230, %219
  %232 = load %struct.krb5_ctx*, %struct.krb5_ctx** %5, align 8
  %233 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %232, i32 0, i32 3
  %234 = load %struct.TYPE_3__*, %struct.TYPE_3__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %234, i32 0, i32 4
  %236 = load i64, i64* %235, align 8
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %242

238:                                              ; preds = %231
  %239 = load %struct.krb5_ctx*, %struct.krb5_ctx** %5, align 8
  %240 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %239, i32 0, i32 1
  %241 = load i8*, i8** %240, align 8
  store i8* %241, i8** %24, align 8
  br label %243

242:                                              ; preds = %231
  store i8* null, i8** %24, align 8
  br label %243

243:                                              ; preds = %242, %238
  %244 = load %struct.krb5_ctx*, %struct.krb5_ctx** %5, align 8
  %245 = load i8*, i8** %16, align 8
  %246 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %247 = load i32, i32* %23, align 4
  %248 = load i8*, i8** %24, align 8
  %249 = load i32, i32* @KG_USAGE_SEAL, align 4
  %250 = call i64 @make_checksum(%struct.krb5_ctx* %244, i8* %245, i32 8, %struct.xdr_buf* %246, i32 %247, i8* %248, i32 %249, %struct.xdr_netobj* %12)
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %254

252:                                              ; preds = %243
  %253 = load i32, i32* @GSS_S_FAILURE, align 4
  store i32 %253, i32* %4, align 4
  store i32 1, i32* %25, align 4
  br label %360

254:                                              ; preds = %243
  %255 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %12, i32 0, i32 1
  %256 = load i8*, i8** %255, align 8
  %257 = load i8*, i8** %16, align 8
  %258 = load i32, i32* @GSS_KRB5_TOK_HDR_LEN, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i8, i8* %257, i64 %259
  %261 = load %struct.krb5_ctx*, %struct.krb5_ctx** %5, align 8
  %262 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %261, i32 0, i32 3
  %263 = load %struct.TYPE_3__*, %struct.TYPE_3__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %263, i32 0, i32 3
  %265 = load i32, i32* %264, align 4
  %266 = call i64 @memcmp(i8* %256, i8* %260, i32 %265)
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %270

268:                                              ; preds = %254
  %269 = load i32, i32* @GSS_S_BAD_SIG, align 4
  store i32 %269, i32* %4, align 4
  store i32 1, i32* %25, align 4
  br label %360

270:                                              ; preds = %254
  %271 = call i64 (...) @get_seconds()
  store i64 %271, i64* %13, align 8
  %272 = load i64, i64* %13, align 8
  %273 = load %struct.krb5_ctx*, %struct.krb5_ctx** %5, align 8
  %274 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %273, i32 0, i32 2
  %275 = load i64, i64* %274, align 8
  %276 = icmp sgt i64 %272, %275
  br i1 %276, label %277, label %279

277:                                              ; preds = %270
  %278 = load i32, i32* @GSS_S_CONTEXT_EXPIRED, align 4
  store i32 %278, i32* %4, align 4
  store i32 1, i32* %25, align 4
  br label %360

279:                                              ; preds = %270
  %280 = load %struct.krb5_ctx*, %struct.krb5_ctx** %5, align 8
  %281 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %280, i32 0, i32 4
  %282 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %281, align 8
  %283 = call i32 @crypto_blkcipher_blocksize(%struct.crypto_blkcipher* %282)
  store i32 %283, i32* %21, align 4
  %284 = load i8*, i8** %16, align 8
  %285 = load i32, i32* @GSS_KRB5_TOK_HDR_LEN, align 4
  %286 = load %struct.krb5_ctx*, %struct.krb5_ctx** %5, align 8
  %287 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %286, i32 0, i32 3
  %288 = load %struct.TYPE_3__*, %struct.TYPE_3__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %288, i32 0, i32 3
  %290 = load i32, i32* %289, align 4
  %291 = add nsw i32 %285, %290
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i8, i8* %284, i64 %292
  %294 = load i32, i32* %22, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i8, i8* %293, i64 %295
  store i8* %296, i8** %18, align 8
  %297 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %298 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %297, i32 0, i32 1
  %299 = load %struct.TYPE_4__*, %struct.TYPE_4__** %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %299, i64 0
  %301 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %300, i32 0, i32 0
  %302 = load i8*, i8** %301, align 8
  %303 = load i32, i32* %6, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr i8, i8* %302, i64 %304
  store i8* %305, i8** %19, align 8
  %306 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %307 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %306, i32 0, i32 1
  %308 = load %struct.TYPE_4__*, %struct.TYPE_4__** %307, align 8
  %309 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %308, i64 0
  %310 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %309, i32 0, i32 0
  %311 = load i8*, i8** %310, align 8
  %312 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %313 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %312, i32 0, i32 1
  %314 = load %struct.TYPE_4__*, %struct.TYPE_4__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %314, i64 0
  %316 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 8
  %318 = sext i32 %317 to i64
  %319 = getelementptr i8, i8* %311, i64 %318
  %320 = load i8*, i8** %18, align 8
  %321 = ptrtoint i8* %319 to i64
  %322 = ptrtoint i8* %320 to i64
  %323 = sub i64 %321, %322
  %324 = trunc i64 %323 to i32
  store i32 %324, i32* %20, align 4
  %325 = load i8*, i8** %19, align 8
  %326 = load i8*, i8** %18, align 8
  %327 = load i32, i32* %20, align 4
  %328 = call i32 @memmove(i8* %325, i8* %326, i32 %327)
  %329 = load i8*, i8** %18, align 8
  %330 = load i8*, i8** %19, align 8
  %331 = ptrtoint i8* %329 to i64
  %332 = ptrtoint i8* %330 to i64
  %333 = sub i64 %331, %332
  %334 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %335 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %334, i32 0, i32 1
  %336 = load %struct.TYPE_4__*, %struct.TYPE_4__** %335, align 8
  %337 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %336, i64 0
  %338 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %337, i32 0, i32 1
  %339 = load i32, i32* %338, align 8
  %340 = sext i32 %339 to i64
  %341 = sub nsw i64 %340, %333
  %342 = trunc i64 %341 to i32
  store i32 %342, i32* %338, align 8
  %343 = load i8*, i8** %18, align 8
  %344 = load i8*, i8** %19, align 8
  %345 = ptrtoint i8* %343 to i64
  %346 = ptrtoint i8* %344 to i64
  %347 = sub i64 %345, %346
  %348 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %349 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %348, i32 0, i32 0
  %350 = load i64, i64* %349, align 8
  %351 = sub nsw i64 %350, %347
  store i64 %351, i64* %349, align 8
  %352 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %353 = load i32, i32* %21, align 4
  %354 = call i64 @gss_krb5_remove_padding(%struct.xdr_buf* %352, i32 %353)
  %355 = icmp ne i64 %354, 0
  br i1 %355, label %356, label %358

356:                                              ; preds = %279
  %357 = load i32, i32* @GSS_S_DEFECTIVE_TOKEN, align 4
  store i32 %357, i32* %4, align 4
  store i32 1, i32* %25, align 4
  br label %360

358:                                              ; preds = %279
  %359 = load i32, i32* @GSS_S_COMPLETE, align 4
  store i32 %359, i32* %4, align 4
  store i32 1, i32* %25, align 4
  br label %360

360:                                              ; preds = %358, %356, %277, %268, %252, %228, %217, %202, %183, %165, %133, %119, %99, %79, %60
  %361 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %361)
  %362 = load i32, i32* %4, align 4
  ret i32 %362
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dprintk(i8*) #2

declare dso_local i64 @g_verify_token_header(i32*, i32*, i8**, i64) #2

declare dso_local i64 @krb5_get_seq_num(%struct.krb5_ctx*, i8*, i8*, i32*, i64*) #2

declare dso_local %struct.crypto_blkcipher* @crypto_alloc_blkcipher(i32, i32, i32) #2

declare dso_local i64 @IS_ERR(%struct.crypto_blkcipher*) #2

declare dso_local i32 @krb5_rc4_setup_enc_key(%struct.krb5_ctx*, %struct.crypto_blkcipher*, i64) #2

declare dso_local i32 @gss_decrypt_xdr_buf(%struct.crypto_blkcipher*, %struct.xdr_buf*, i32) #2

declare dso_local i32 @crypto_free_blkcipher(%struct.crypto_blkcipher*) #2

declare dso_local i64 @make_checksum(%struct.krb5_ctx*, i8*, i32, %struct.xdr_buf*, i32, i8*, i32, %struct.xdr_netobj*) #2

declare dso_local i64 @memcmp(i8*, i8*, i32) #2

declare dso_local i64 @get_seconds(...) #2

declare dso_local i32 @crypto_blkcipher_blocksize(%struct.crypto_blkcipher*) #2

declare dso_local i32 @memmove(i8*, i8*, i32) #2

declare dso_local i64 @gss_krb5_remove_padding(%struct.xdr_buf*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
