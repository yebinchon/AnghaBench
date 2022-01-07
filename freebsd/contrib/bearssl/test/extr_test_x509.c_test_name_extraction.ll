; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_x509.c_test_name_extraction.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_x509.c_test_name_extraction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32, i64, i32* }
%struct.TYPE_18__ = type { i32*, i32*, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 (%struct.TYPE_20__**)*, i32 (%struct.TYPE_20__**)*, i32 (%struct.TYPE_20__**, i8*, i64)*, i32 (%struct.TYPE_20__**, i64)*, i32 (%struct.TYPE_20__**, i32*)* }
%struct.TYPE_19__ = type { i8*, i64*, i32, i64 }

@.str = private unnamed_addr constant [18 x i8] c"Name extraction: \00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"names.crt\00", align 1
@br_sha256_vtable = common dso_local global i32 0, align 4
@hash_impls = common dso_local global %struct.TYPE_22__* null, align 8
@DEFAULT_TIME = common dso_local global i32 0, align 4
@names_ref = common dso_local global %struct.TYPE_21__* null, align 8
@BR_ERR_X509_NOT_TRUSTED = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"wrong status: %u\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@max_dp_usage = common dso_local global i64 0, align 8
@max_rp_usage = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [46 x i8] c"ERR: name %u (id=%d): status=%d, expected=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"  obtained:\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c" %02X\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"ERR: name %u not zero-terminated\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"ERR: name %u (id=%d): wrong value\0A\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"  expected:\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"OK\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_name_extraction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_name_extraction() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_18__, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @stdout, align 4
  %18 = call i32 @fflush(i32 %17)
  %19 = call i8* @read_file(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64* %2)
  store i8* %19, i8** %1, align 8
  %20 = call i32 @br_x509_minimal_init(%struct.TYPE_18__* %3, i32* @br_sha256_vtable, i32* null, i32 0)
  store i64 0, i64* %6, align 8
  br label %21

21:                                               ; preds = %41, %0
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** @hash_impls, align 8
  %23 = load i64, i64* %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %21
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** @hash_impls, align 8
  %30 = load i64, i64* %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** @hash_impls, align 8
  %36 = load i64, i64* %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @br_x509_minimal_set_hash(%struct.TYPE_18__* %3, i32 %34, i32 %39)
  br label %41

41:                                               ; preds = %28
  %42 = load i64, i64* %6, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %6, align 8
  br label %21

44:                                               ; preds = %21
  %45 = call i32 (...) @br_rsa_pkcs1_vrfy_get_default()
  %46 = call i32 @br_x509_minimal_set_rsa(%struct.TYPE_18__* %3, i32 %45)
  %47 = call i32 (...) @br_ec_get_default()
  %48 = call i32 (...) @br_ecdsa_vrfy_asn1_get_default()
  %49 = call i32 @br_x509_minimal_set_ecdsa(%struct.TYPE_18__* %3, i32 %47, i32 %48)
  %50 = load i32, i32* @DEFAULT_TIME, align 4
  %51 = call i32 @string_to_time(i32 %50, i32* %4, i32* %5)
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @br_x509_minimal_set_time(%struct.TYPE_18__* %3, i32 %52, i32 %53)
  store i64 0, i64* %9, align 8
  %55 = load i64, i64* %9, align 8
  %56 = mul i64 %55, 32
  %57 = trunc i64 %56 to i32
  %58 = call i8* @xmalloc(i32 %57)
  %59 = bitcast i8* %58 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %59, %struct.TYPE_19__** %8, align 8
  store i64 0, i64* %6, align 8
  br label %60

60:                                               ; preds = %143, %44
  %61 = load i64, i64* %6, align 8
  %62 = load i64, i64* %9, align 8
  %63 = icmp ult i64 %61, %62
  br i1 %63, label %64, label %146

64:                                               ; preds = %60
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** @names_ref, align 8
  %66 = load i64, i64* %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %86

72:                                               ; preds = %64
  %73 = call i8* @xmalloc(i32 5)
  store i8* %73, i8** %13, align 8
  %74 = load i8*, i8** %13, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 0
  store i8 4, i8* %75, align 1
  %76 = load i8*, i8** %13, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 1
  store i8 41, i8* %77, align 1
  %78 = load i8*, i8** %13, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 2
  store i8 1, i8* %79, align 1
  %80 = load i8*, i8** %13, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 3
  store i8 1, i8* %81, align 1
  %82 = load i32, i32* %12, align 4
  %83 = trunc i32 %82 to i8
  %84 = load i8*, i8** %13, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 4
  store i8 %83, i8* %85, align 1
  br label %127

86:                                               ; preds = %64
  %87 = load i32, i32* %12, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %117

89:                                               ; preds = %86
  %90 = call i8* @xmalloc(i32 13)
  store i8* %90, i8** %13, align 8
  %91 = load i8*, i8** %13, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 0
  store i8 0, i8* %92, align 1
  %93 = load i8*, i8** %13, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 1
  store i8 0, i8* %94, align 1
  %95 = load i8*, i8** %13, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 2
  store i8 10, i8* %96, align 1
  %97 = load i8*, i8** %13, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 3
  store i8 43, i8* %98, align 1
  %99 = load i8*, i8** %13, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 4
  store i8 6, i8* %100, align 1
  %101 = load i8*, i8** %13, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 5
  store i8 1, i8* %102, align 1
  %103 = load i8*, i8** %13, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 6
  store i8 4, i8* %104, align 1
  %105 = load i8*, i8** %13, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 7
  store i8 1, i8* %106, align 1
  %107 = load i8*, i8** %13, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 8
  store i8 -126, i8* %108, align 1
  %109 = load i8*, i8** %13, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 9
  store i8 55, i8* %110, align 1
  %111 = load i8*, i8** %13, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 10
  store i8 20, i8* %112, align 1
  %113 = load i8*, i8** %13, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 11
  store i8 2, i8* %114, align 1
  %115 = load i8*, i8** %13, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 12
  store i8 3, i8* %116, align 1
  br label %126

117:                                              ; preds = %86
  %118 = call i8* @xmalloc(i32 2)
  store i8* %118, i8** %13, align 8
  %119 = load i8*, i8** %13, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 0
  store i8 0, i8* %120, align 1
  %121 = load i32, i32* %12, align 4
  %122 = sub nsw i32 0, %121
  %123 = trunc i32 %122 to i8
  %124 = load i8*, i8** %13, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 1
  store i8 %123, i8* %125, align 1
  br label %126

126:                                              ; preds = %117, %89
  br label %127

127:                                              ; preds = %126, %72
  %128 = load i8*, i8** %13, align 8
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %130 = load i64, i64* %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %129, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %131, i32 0, i32 0
  store i8* %128, i8** %132, align 8
  %133 = call i8* @xmalloc(i32 256)
  %134 = bitcast i8* %133 to i64*
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %136 = load i64, i64* %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %137, i32 0, i32 1
  store i64* %134, i64** %138, align 8
  %139 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %140 = load i64, i64* %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %139, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %141, i32 0, i32 2
  store i32 256, i32* %142, align 8
  br label %143

143:                                              ; preds = %127
  %144 = load i64, i64* %6, align 8
  %145 = add i64 %144, 1
  store i64 %145, i64* %6, align 8
  br label %60

146:                                              ; preds = %60
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %148 = load i64, i64* %9, align 8
  %149 = call i32 @br_x509_minimal_set_name_elements(%struct.TYPE_18__* %3, %struct.TYPE_19__* %147, i64 %148)
  store i64 0, i64* %6, align 8
  br label %150

150:                                              ; preds = %158, %146
  %151 = load i64, i64* %6, align 8
  %152 = icmp ult i64 %151, 2
  br i1 %152, label %153, label %161

153:                                              ; preds = %150
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %3, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = load i64, i64* %6, align 8
  %157 = getelementptr inbounds i32, i32* %155, i64 %156
  store i32 -1480555522, i32* %157, align 4
  br label %158

158:                                              ; preds = %153
  %159 = load i64, i64* %6, align 8
  %160 = add i64 %159, 1
  store i64 %160, i64* %6, align 8
  br label %150

161:                                              ; preds = %150
  store i64 0, i64* %6, align 8
  br label %162

162:                                              ; preds = %170, %161
  %163 = load i64, i64* %6, align 8
  %164 = icmp ult i64 %163, 2
  br i1 %164, label %165, label %173

165:                                              ; preds = %162
  %166 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %3, i32 0, i32 1
  %167 = load i32*, i32** %166, align 8
  %168 = load i64, i64* %6, align 8
  %169 = getelementptr inbounds i32, i32* %167, i64 %168
  store i32 -1480555522, i32* %169, align 4
  br label %170

170:                                              ; preds = %165
  %171 = load i64, i64* %6, align 8
  %172 = add i64 %171, 1
  store i64 %172, i64* %6, align 8
  br label %162

173:                                              ; preds = %162
  %174 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %3, i32 0, i32 2
  %175 = load %struct.TYPE_20__*, %struct.TYPE_20__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %175, i32 0, i32 4
  %177 = load i32 (%struct.TYPE_20__**, i32*)*, i32 (%struct.TYPE_20__**, i32*)** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %3, i32 0, i32 2
  %179 = call i32 %177(%struct.TYPE_20__** %178, i32* null)
  %180 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %3, i32 0, i32 2
  %181 = load %struct.TYPE_20__*, %struct.TYPE_20__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %181, i32 0, i32 3
  %183 = load i32 (%struct.TYPE_20__**, i64)*, i32 (%struct.TYPE_20__**, i64)** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %3, i32 0, i32 2
  %185 = load i64, i64* %2, align 8
  %186 = call i32 %183(%struct.TYPE_20__** %184, i64 %185)
  %187 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %3, i32 0, i32 2
  %188 = load %struct.TYPE_20__*, %struct.TYPE_20__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %188, i32 0, i32 2
  %190 = load i32 (%struct.TYPE_20__**, i8*, i64)*, i32 (%struct.TYPE_20__**, i8*, i64)** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %3, i32 0, i32 2
  %192 = load i8*, i8** %1, align 8
  %193 = load i64, i64* %2, align 8
  %194 = call i32 %190(%struct.TYPE_20__** %191, i8* %192, i64 %193)
  %195 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %3, i32 0, i32 2
  %196 = load %struct.TYPE_20__*, %struct.TYPE_20__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %196, i32 0, i32 1
  %198 = load i32 (%struct.TYPE_20__**)*, i32 (%struct.TYPE_20__**)** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %3, i32 0, i32 2
  %200 = call i32 %198(%struct.TYPE_20__** %199)
  %201 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %3, i32 0, i32 2
  %202 = load %struct.TYPE_20__*, %struct.TYPE_20__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %202, i32 0, i32 0
  %204 = load i32 (%struct.TYPE_20__**)*, i32 (%struct.TYPE_20__**)** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %3, i32 0, i32 2
  %206 = call i32 %204(%struct.TYPE_20__** %205)
  store i32 %206, i32* %7, align 4
  %207 = load i32, i32* %7, align 4
  %208 = load i32, i32* @BR_ERR_X509_NOT_TRUSTED, align 4
  %209 = icmp ne i32 %207, %208
  br i1 %209, label %210, label %216

210:                                              ; preds = %173
  %211 = load i32, i32* @stderr, align 4
  %212 = load i32, i32* %7, align 4
  %213 = call i32 @fprintf(i32 %211, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %212)
  %214 = load i32, i32* @EXIT_FAILURE, align 4
  %215 = call i32 @exit(i32 %214) #3
  unreachable

216:                                              ; preds = %173
  store i64 2, i64* %6, align 8
  br label %217

217:                                              ; preds = %236, %216
  %218 = load i64, i64* %6, align 8
  %219 = icmp ugt i64 %218, 0
  br i1 %219, label %220, label %239

220:                                              ; preds = %217
  %221 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %3, i32 0, i32 0
  %222 = load i32*, i32** %221, align 8
  %223 = load i64, i64* %6, align 8
  %224 = sub i64 %223, 1
  %225 = getelementptr inbounds i32, i32* %222, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = icmp ne i32 %226, -1480555522
  br i1 %227, label %228, label %235

228:                                              ; preds = %220
  %229 = load i64, i64* @max_dp_usage, align 8
  %230 = load i64, i64* %6, align 8
  %231 = icmp ult i64 %229, %230
  br i1 %231, label %232, label %234

232:                                              ; preds = %228
  %233 = load i64, i64* %6, align 8
  store i64 %233, i64* @max_dp_usage, align 8
  br label %234

234:                                              ; preds = %232, %228
  br label %239

235:                                              ; preds = %220
  br label %236

236:                                              ; preds = %235
  %237 = load i64, i64* %6, align 8
  %238 = add i64 %237, -1
  store i64 %238, i64* %6, align 8
  br label %217

239:                                              ; preds = %234, %217
  store i64 2, i64* %6, align 8
  br label %240

240:                                              ; preds = %259, %239
  %241 = load i64, i64* %6, align 8
  %242 = icmp ugt i64 %241, 0
  br i1 %242, label %243, label %262

243:                                              ; preds = %240
  %244 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %3, i32 0, i32 1
  %245 = load i32*, i32** %244, align 8
  %246 = load i64, i64* %6, align 8
  %247 = sub i64 %246, 1
  %248 = getelementptr inbounds i32, i32* %245, i64 %247
  %249 = load i32, i32* %248, align 4
  %250 = icmp ne i32 %249, -1480555522
  br i1 %250, label %251, label %258

251:                                              ; preds = %243
  %252 = load i64, i64* @max_rp_usage, align 8
  %253 = load i64, i64* %6, align 8
  %254 = icmp ult i64 %252, %253
  br i1 %254, label %255, label %257

255:                                              ; preds = %251
  %256 = load i64, i64* %6, align 8
  store i64 %256, i64* @max_rp_usage, align 8
  br label %257

257:                                              ; preds = %255, %251
  br label %262

258:                                              ; preds = %243
  br label %259

259:                                              ; preds = %258
  %260 = load i64, i64* %6, align 8
  %261 = add i64 %260, -1
  store i64 %261, i64* %6, align 8
  br label %240

262:                                              ; preds = %257, %240
  store i32 1, i32* %10, align 4
  store i64 0, i64* %6, align 8
  br label %263

263:                                              ; preds = %408, %262
  %264 = load i64, i64* %6, align 8
  %265 = load i64, i64* %9, align 8
  %266 = icmp ult i64 %264, %265
  br i1 %266, label %267, label %411

267:                                              ; preds = %263
  %268 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %269 = load i64, i64* %6, align 8
  %270 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %268, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %270, i32 0, i32 3
  %272 = load i64, i64* %271, align 8
  %273 = load %struct.TYPE_21__*, %struct.TYPE_21__** @names_ref, align 8
  %274 = load i64, i64* %6, align 8
  %275 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %273, i64 %274
  %276 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %275, i32 0, i32 1
  %277 = load i64, i64* %276, align 8
  %278 = icmp ne i64 %272, %277
  br i1 %278, label %279, label %325

279:                                              ; preds = %267
  %280 = load i64, i64* %6, align 8
  %281 = trunc i64 %280 to i32
  %282 = load %struct.TYPE_21__*, %struct.TYPE_21__** @names_ref, align 8
  %283 = load i64, i64* %6, align 8
  %284 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %282, i64 %283
  %285 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %288 = load i64, i64* %6, align 8
  %289 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %287, i64 %288
  %290 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %289, i32 0, i32 3
  %291 = load i64, i64* %290, align 8
  %292 = load %struct.TYPE_21__*, %struct.TYPE_21__** @names_ref, align 8
  %293 = load i64, i64* %6, align 8
  %294 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %292, i64 %293
  %295 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %294, i32 0, i32 1
  %296 = load i64, i64* %295, align 8
  %297 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %281, i32 %286, i64 %291, i64 %296)
  %298 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %299 = load i64, i64* %6, align 8
  %300 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %298, i64 %299
  %301 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %300, i32 0, i32 3
  %302 = load i64, i64* %301, align 8
  %303 = icmp sgt i64 %302, 0
  br i1 %303, label %304, label %324

304:                                              ; preds = %279
  %305 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %306 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %307 = load i64, i64* %6, align 8
  %308 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %306, i64 %307
  %309 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %308, i32 0, i32 1
  %310 = load i64*, i64** %309, align 8
  %311 = bitcast i64* %310 to i8*
  store i8* %311, i8** %14, align 8
  br label %312

312:                                              ; preds = %316, %304
  %313 = load i8*, i8** %14, align 8
  %314 = load i8, i8* %313, align 1
  %315 = icmp ne i8 %314, 0
  br i1 %315, label %316, label %322

316:                                              ; preds = %312
  %317 = load i8*, i8** %14, align 8
  %318 = getelementptr inbounds i8, i8* %317, i32 1
  store i8* %318, i8** %14, align 8
  %319 = load i8, i8* %317, align 1
  %320 = zext i8 %319 to i32
  %321 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %320)
  br label %312

322:                                              ; preds = %312
  %323 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %324

324:                                              ; preds = %322, %279
  store i32 0, i32* %10, align 4
  br label %408

325:                                              ; preds = %267
  %326 = load %struct.TYPE_21__*, %struct.TYPE_21__** @names_ref, align 8
  %327 = load i64, i64* %6, align 8
  %328 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %326, i64 %327
  %329 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %328, i32 0, i32 2
  %330 = load i32*, i32** %329, align 8
  %331 = icmp eq i32* %330, null
  br i1 %331, label %332, label %346

332:                                              ; preds = %325
  %333 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %334 = load i64, i64* %6, align 8
  %335 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %333, i64 %334
  %336 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %335, i32 0, i32 1
  %337 = load i64*, i64** %336, align 8
  %338 = getelementptr inbounds i64, i64* %337, i64 0
  %339 = load i64, i64* %338, align 8
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %341, label %345

341:                                              ; preds = %332
  %342 = load i64, i64* %6, align 8
  %343 = trunc i64 %342 to i32
  %344 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %343)
  store i32 0, i32* %10, align 4
  br label %408

345:                                              ; preds = %332
  br label %407

346:                                              ; preds = %325
  %347 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %348 = load i64, i64* %6, align 8
  %349 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %347, i64 %348
  %350 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %349, i32 0, i32 1
  %351 = load i64*, i64** %350, align 8
  %352 = load %struct.TYPE_21__*, %struct.TYPE_21__** @names_ref, align 8
  %353 = load i64, i64* %6, align 8
  %354 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %352, i64 %353
  %355 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %354, i32 0, i32 2
  %356 = load i32*, i32** %355, align 8
  %357 = call i64 @strcmp(i64* %351, i32* %356)
  %358 = icmp ne i64 %357, 0
  br i1 %358, label %359, label %406

359:                                              ; preds = %346
  %360 = load i64, i64* %6, align 8
  %361 = trunc i64 %360 to i32
  %362 = load %struct.TYPE_21__*, %struct.TYPE_21__** @names_ref, align 8
  %363 = load i64, i64* %6, align 8
  %364 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %362, i64 %363
  %365 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 8
  %367 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i32 %361, i32 %366)
  %368 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  %369 = load %struct.TYPE_21__*, %struct.TYPE_21__** @names_ref, align 8
  %370 = load i64, i64* %6, align 8
  %371 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %369, i64 %370
  %372 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %371, i32 0, i32 2
  %373 = load i32*, i32** %372, align 8
  %374 = bitcast i32* %373 to i8*
  store i8* %374, i8** %15, align 8
  br label %375

375:                                              ; preds = %379, %359
  %376 = load i8*, i8** %15, align 8
  %377 = load i8, i8* %376, align 1
  %378 = icmp ne i8 %377, 0
  br i1 %378, label %379, label %385

379:                                              ; preds = %375
  %380 = load i8*, i8** %15, align 8
  %381 = getelementptr inbounds i8, i8* %380, i32 1
  store i8* %381, i8** %15, align 8
  %382 = load i8, i8* %380, align 1
  %383 = zext i8 %382 to i32
  %384 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %383)
  br label %375

385:                                              ; preds = %375
  %386 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %387 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %388 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %389 = load i64, i64* %6, align 8
  %390 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %388, i64 %389
  %391 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %390, i32 0, i32 1
  %392 = load i64*, i64** %391, align 8
  %393 = bitcast i64* %392 to i8*
  store i8* %393, i8** %15, align 8
  br label %394

394:                                              ; preds = %398, %385
  %395 = load i8*, i8** %15, align 8
  %396 = load i8, i8* %395, align 1
  %397 = icmp ne i8 %396, 0
  br i1 %397, label %398, label %404

398:                                              ; preds = %394
  %399 = load i8*, i8** %15, align 8
  %400 = getelementptr inbounds i8, i8* %399, i32 1
  store i8* %400, i8** %15, align 8
  %401 = load i8, i8* %399, align 1
  %402 = zext i8 %401 to i32
  %403 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %402)
  br label %394

404:                                              ; preds = %394
  %405 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %408

406:                                              ; preds = %346
  br label %407

407:                                              ; preds = %406, %345
  br label %408

408:                                              ; preds = %407, %404, %341, %324
  %409 = load i64, i64* %6, align 8
  %410 = add i64 %409, 1
  store i64 %410, i64* %6, align 8
  br label %263

411:                                              ; preds = %263
  %412 = load i32, i32* %10, align 4
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %417, label %414

414:                                              ; preds = %411
  %415 = load i32, i32* @EXIT_FAILURE, align 4
  %416 = call i32 @exit(i32 %415) #3
  unreachable

417:                                              ; preds = %411
  %418 = load i8*, i8** %1, align 8
  %419 = call i32 @xfree(i8* %418)
  %420 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %421 = load i64, i64* %9, align 8
  %422 = call i32 @free_name_elements(%struct.TYPE_19__* %420, i64 %421)
  %423 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i8* @read_file(i8*, i64*) #1

declare dso_local i32 @br_x509_minimal_init(%struct.TYPE_18__*, i32*, i32*, i32) #1

declare dso_local i32 @br_x509_minimal_set_hash(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @br_x509_minimal_set_rsa(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @br_rsa_pkcs1_vrfy_get_default(...) #1

declare dso_local i32 @br_x509_minimal_set_ecdsa(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @br_ec_get_default(...) #1

declare dso_local i32 @br_ecdsa_vrfy_asn1_get_default(...) #1

declare dso_local i32 @string_to_time(i32, i32*, i32*) #1

declare dso_local i32 @br_x509_minimal_set_time(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i8* @xmalloc(i32) #1

declare dso_local i32 @br_x509_minimal_set_name_elements(%struct.TYPE_18__*, %struct.TYPE_19__*, i64) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @strcmp(i64*, i32*) #1

declare dso_local i32 @xfree(i8*) #1

declare dso_local i32 @free_name_elements(%struct.TYPE_19__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
