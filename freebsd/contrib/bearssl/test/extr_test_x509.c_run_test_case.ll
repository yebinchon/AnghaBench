; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_x509.c_run_test_case.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_x509.c_run_test_case.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { i32, i32* }
%struct.TYPE_33__ = type { i8*, i32, i8**, i8*, i32, i32, i32, i32, i32, i64* }
%struct.TYPE_36__ = type { i32*, i32*, %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i32 (%struct.TYPE_29__**)*, %struct.TYPE_35__* (%struct.TYPE_29__**, i32*)*, i32 (%struct.TYPE_29__**)*, i32 (%struct.TYPE_29__**, %struct.TYPE_34__*, i64)*, i32 (%struct.TYPE_29__**, i64)*, i32 (%struct.TYPE_29__**, i32)* }
%struct.TYPE_35__ = type { i32 }
%struct.TYPE_34__ = type { i64, %struct.TYPE_34__*, %struct.TYPE_35__, i32, %struct.TYPE_30__ }
%struct.TYPE_30__ = type { i32, i32 }
%struct.TYPE_32__ = type { i8*, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@stdout = common dso_local global i32 0, align 4
@br_sha1_vtable = common dso_local global i32 0, align 4
@hash_impls = common dso_local global %struct.TYPE_31__* null, align 8
@trust_anchors = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"no such trust anchor: '%s'\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@keys = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"no such public key: '%s'\0A\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"wrong key type + usage (expected 0x%02X, got 0x%02X)\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"wrong status (got %d, expected %d)\0A\00", align 1
@BR_ERR_X509_NOT_TRUSTED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"wrong EE public key\0A\00", align 1
@max_dp_usage = common dso_local global i64 0, align 8
@max_rp_usage = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [4 x i8] c"OK\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_33__*)* @run_test_case to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_test_case(%struct.TYPE_33__* %0) #0 {
  %2 = alloca %struct.TYPE_33__*, align 8
  %3 = alloca %struct.TYPE_36__, align 8
  %4 = alloca %struct.TYPE_34__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_34__*, align 8
  %10 = alloca %struct.TYPE_35__*, align 8
  %11 = alloca %struct.TYPE_35__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_32__*, align 8
  %15 = alloca %struct.TYPE_35__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_33__* %0, %struct.TYPE_33__** %2, align 8
  %20 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %22)
  %24 = load i32, i32* @stdout, align 4
  %25 = call i32 @fflush(i32 %24)
  store i32* @br_sha1_vtable, i32** %7, align 8
  store i64 0, i64* %6, align 8
  br label %26

26:                                               ; preds = %52, %1
  %27 = load %struct.TYPE_31__*, %struct.TYPE_31__** @hash_impls, align 8
  %28 = load i64, i64* %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %55

33:                                               ; preds = %26
  %34 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.TYPE_31__*, %struct.TYPE_31__** @hash_impls, align 8
  %38 = load i64, i64* %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = shl i32 1, %41
  %43 = and i32 %36, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %33
  %46 = load %struct.TYPE_31__*, %struct.TYPE_31__** @hash_impls, align 8
  %47 = load i64, i64* %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  store i32* %50, i32** %7, align 8
  br label %51

51:                                               ; preds = %45, %33
  br label %52

52:                                               ; preds = %51
  %53 = load i64, i64* %6, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %6, align 8
  br label %26

55:                                               ; preds = %26
  store i64 0, i64* %5, align 8
  br label %56

56:                                               ; preds = %65, %55
  %57 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %57, i32 0, i32 2
  %59 = load i8**, i8*** %58, align 8
  %60 = load i64, i64* %5, align 8
  %61 = getelementptr inbounds i8*, i8** %59, i64 %60
  %62 = load i8*, i8** %61, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %56
  br label %65

65:                                               ; preds = %64
  %66 = load i64, i64* %5, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %5, align 8
  br label %56

68:                                               ; preds = %56
  %69 = load i64, i64* %5, align 8
  %70 = mul i64 %69, 32
  %71 = call %struct.TYPE_34__* @xmalloc(i64 %70)
  store %struct.TYPE_34__* %71, %struct.TYPE_34__** %4, align 8
  store i64 0, i64* %6, align 8
  br label %72

72:                                               ; preds = %151, %68
  %73 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %73, i32 0, i32 2
  %75 = load i8**, i8*** %74, align 8
  %76 = load i64, i64* %6, align 8
  %77 = getelementptr inbounds i8*, i8** %75, i64 %76
  %78 = load i8*, i8** %77, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %154

80:                                               ; preds = %72
  %81 = load i32, i32* @trust_anchors, align 4
  %82 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %82, i32 0, i32 2
  %84 = load i8**, i8*** %83, align 8
  %85 = load i64, i64* %6, align 8
  %86 = getelementptr inbounds i8*, i8** %84, i64 %85
  %87 = load i8*, i8** %86, align 8
  %88 = call i8* @HT_get(i32 %81, i8* %87)
  %89 = bitcast i8* %88 to %struct.TYPE_32__*
  store %struct.TYPE_32__* %89, %struct.TYPE_32__** %14, align 8
  %90 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %91 = icmp eq %struct.TYPE_32__* %90, null
  br i1 %91, label %92, label %103

92:                                               ; preds = %80
  %93 = load i32, i32* @stderr, align 4
  %94 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %94, i32 0, i32 2
  %96 = load i8**, i8*** %95, align 8
  %97 = load i64, i64* %6, align 8
  %98 = getelementptr inbounds i8*, i8** %96, i64 %97
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 (i32, i8*, ...) @fprintf(i32 %93, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %99)
  %101 = load i32, i32* @EXIT_FAILURE, align 4
  %102 = call i32 @exit(i32 %101) #4
  unreachable

103:                                              ; preds = %80
  %104 = load i32, i32* @keys, align 4
  %105 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %106 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = call i8* @HT_get(i32 %104, i8* %107)
  %109 = bitcast i8* %108 to %struct.TYPE_35__*
  store %struct.TYPE_35__* %109, %struct.TYPE_35__** %15, align 8
  %110 = load %struct.TYPE_35__*, %struct.TYPE_35__** %15, align 8
  %111 = icmp eq %struct.TYPE_35__* %110, null
  br i1 %111, label %112, label %120

112:                                              ; preds = %103
  %113 = load i32, i32* @stderr, align 4
  %114 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %115 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 (i32, i8*, ...) @fprintf(i32 %113, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %116)
  %118 = load i32, i32* @EXIT_FAILURE, align 4
  %119 = call i32 @exit(i32 %118) #4
  unreachable

120:                                              ; preds = %103
  %121 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %122 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %125 = load i64, i64* %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %124, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %126, i32 0, i32 4
  %128 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %127, i32 0, i32 1
  store i32 %123, i32* %128, align 4
  %129 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %130 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %133 = load i64, i64* %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %132, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %134, i32 0, i32 4
  %136 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %135, i32 0, i32 0
  store i32 %131, i32* %136, align 8
  %137 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %138 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %141 = load i64, i64* %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %140, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %142, i32 0, i32 3
  store i32 %139, i32* %143, align 4
  %144 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %145 = load i64, i64* %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %144, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %146, i32 0, i32 2
  %148 = load %struct.TYPE_35__*, %struct.TYPE_35__** %15, align 8
  %149 = bitcast %struct.TYPE_35__* %147 to i8*
  %150 = bitcast %struct.TYPE_35__* %148 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %149, i8* align 4 %150, i64 4, i1 false)
  br label %151

151:                                              ; preds = %120
  %152 = load i64, i64* %6, align 8
  %153 = add i64 %152, 1
  store i64 %153, i64* %6, align 8
  br label %72

154:                                              ; preds = %72
  store i64 0, i64* %8, align 8
  br label %155

155:                                              ; preds = %164, %154
  %156 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %156, i32 0, i32 9
  %158 = load i64*, i64** %157, align 8
  %159 = load i64, i64* %8, align 8
  %160 = getelementptr inbounds i64, i64* %158, i64 %159
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %155
  br label %164

164:                                              ; preds = %163
  %165 = load i64, i64* %8, align 8
  %166 = add i64 %165, 1
  store i64 %166, i64* %8, align 8
  br label %155

167:                                              ; preds = %155
  %168 = load i64, i64* %8, align 8
  %169 = mul i64 %168, 32
  %170 = call %struct.TYPE_34__* @xmalloc(i64 %169)
  store %struct.TYPE_34__* %170, %struct.TYPE_34__** %9, align 8
  store i64 0, i64* %6, align 8
  br label %171

171:                                              ; preds = %191, %167
  %172 = load i64, i64* %6, align 8
  %173 = load i64, i64* %8, align 8
  %174 = icmp ult i64 %172, %173
  br i1 %174, label %175, label %194

175:                                              ; preds = %171
  %176 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %177 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %176, i32 0, i32 9
  %178 = load i64*, i64** %177, align 8
  %179 = load i64, i64* %6, align 8
  %180 = getelementptr inbounds i64, i64* %178, i64 %179
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %183 = load i64, i64* %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %182, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %184, i32 0, i32 0
  %186 = call %struct.TYPE_34__* @read_file(i64 %181, i64* %185)
  %187 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %188 = load i64, i64* %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %187, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %189, i32 0, i32 1
  store %struct.TYPE_34__* %186, %struct.TYPE_34__** %190, align 8
  br label %191

191:                                              ; preds = %175
  %192 = load i64, i64* %6, align 8
  %193 = add i64 %192, 1
  store i64 %193, i64* %6, align 8
  br label %171

194:                                              ; preds = %171
  %195 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %196 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %195, i32 0, i32 3
  %197 = load i8*, i8** %196, align 8
  %198 = icmp eq i8* %197, null
  br i1 %198, label %199, label %200

199:                                              ; preds = %194
  store %struct.TYPE_35__* null, %struct.TYPE_35__** %10, align 8
  br label %218

200:                                              ; preds = %194
  %201 = load i32, i32* @keys, align 4
  %202 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %203 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %202, i32 0, i32 3
  %204 = load i8*, i8** %203, align 8
  %205 = call i8* @HT_get(i32 %201, i8* %204)
  %206 = bitcast i8* %205 to %struct.TYPE_35__*
  store %struct.TYPE_35__* %206, %struct.TYPE_35__** %10, align 8
  %207 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %208 = icmp eq %struct.TYPE_35__* %207, null
  br i1 %208, label %209, label %217

209:                                              ; preds = %200
  %210 = load i32, i32* @stderr, align 4
  %211 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %212 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %211, i32 0, i32 3
  %213 = load i8*, i8** %212, align 8
  %214 = call i32 (i32, i8*, ...) @fprintf(i32 %210, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %213)
  %215 = load i32, i32* @EXIT_FAILURE, align 4
  %216 = call i32 @exit(i32 %215) #4
  unreachable

217:                                              ; preds = %200
  br label %218

218:                                              ; preds = %217, %199
  %219 = load i32*, i32** %7, align 8
  %220 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %221 = load i64, i64* %5, align 8
  %222 = call i32 @br_x509_minimal_init(%struct.TYPE_36__* %3, i32* %219, %struct.TYPE_34__* %220, i64 %221)
  store i64 0, i64* %6, align 8
  br label %223

223:                                              ; preds = %252, %218
  %224 = load %struct.TYPE_31__*, %struct.TYPE_31__** @hash_impls, align 8
  %225 = load i64, i64* %6, align 8
  %226 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %224, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %255

230:                                              ; preds = %223
  %231 = load %struct.TYPE_31__*, %struct.TYPE_31__** @hash_impls, align 8
  %232 = load i64, i64* %6, align 8
  %233 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %231, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  store i32 %235, i32* %16, align 4
  %236 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %237 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 8
  %239 = load i32, i32* %16, align 4
  %240 = shl i32 1, %239
  %241 = and i32 %238, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %251

243:                                              ; preds = %230
  %244 = load i32, i32* %16, align 4
  %245 = load %struct.TYPE_31__*, %struct.TYPE_31__** @hash_impls, align 8
  %246 = load i64, i64* %6, align 8
  %247 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %245, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %247, i32 0, i32 1
  %249 = load i32*, i32** %248, align 8
  %250 = call i32 @br_x509_minimal_set_hash(%struct.TYPE_36__* %3, i32 %244, i32* %249)
  br label %251

251:                                              ; preds = %243, %230
  br label %252

252:                                              ; preds = %251
  %253 = load i64, i64* %6, align 8
  %254 = add i64 %253, 1
  store i64 %254, i64* %6, align 8
  br label %223

255:                                              ; preds = %223
  %256 = call i32 (...) @br_rsa_pkcs1_vrfy_get_default()
  %257 = call i32 @br_x509_minimal_set_rsa(%struct.TYPE_36__* %3, i32 %256)
  %258 = call i32 (...) @br_ec_get_default()
  %259 = call i32 (...) @br_ecdsa_vrfy_asn1_get_default()
  %260 = call i32 @br_x509_minimal_set_ecdsa(%struct.TYPE_36__* %3, i32 %258, i32 %259)
  %261 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %262 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %261, i32 0, i32 8
  %263 = load i32, i32* %262, align 8
  %264 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %265 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %264, i32 0, i32 7
  %266 = load i32, i32* %265, align 4
  %267 = call i32 @br_x509_minimal_set_time(%struct.TYPE_36__* %3, i32 %263, i32 %266)
  store i64 0, i64* %6, align 8
  br label %268

268:                                              ; preds = %276, %255
  %269 = load i64, i64* %6, align 8
  %270 = icmp ult i64 %269, 2
  br i1 %270, label %271, label %279

271:                                              ; preds = %268
  %272 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %3, i32 0, i32 0
  %273 = load i32*, i32** %272, align 8
  %274 = load i64, i64* %6, align 8
  %275 = getelementptr inbounds i32, i32* %273, i64 %274
  store i32 -1480555522, i32* %275, align 4
  br label %276

276:                                              ; preds = %271
  %277 = load i64, i64* %6, align 8
  %278 = add i64 %277, 1
  store i64 %278, i64* %6, align 8
  br label %268

279:                                              ; preds = %268
  store i64 0, i64* %6, align 8
  br label %280

280:                                              ; preds = %288, %279
  %281 = load i64, i64* %6, align 8
  %282 = icmp ult i64 %281, 2
  br i1 %282, label %283, label %291

283:                                              ; preds = %280
  %284 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %3, i32 0, i32 1
  %285 = load i32*, i32** %284, align 8
  %286 = load i64, i64* %6, align 8
  %287 = getelementptr inbounds i32, i32* %285, i64 %286
  store i32 -1480555522, i32* %287, align 4
  br label %288

288:                                              ; preds = %283
  %289 = load i64, i64* %6, align 8
  %290 = add i64 %289, 1
  store i64 %290, i64* %6, align 8
  br label %280

291:                                              ; preds = %280
  %292 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %3, i32 0, i32 2
  %293 = load %struct.TYPE_29__*, %struct.TYPE_29__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %293, i32 0, i32 5
  %295 = load i32 (%struct.TYPE_29__**, i32)*, i32 (%struct.TYPE_29__**, i32)** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %3, i32 0, i32 2
  %297 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %298 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %297, i32 0, i32 6
  %299 = load i32, i32* %298, align 8
  %300 = call i32 %295(%struct.TYPE_29__** %296, i32 %299)
  store i64 0, i64* %6, align 8
  br label %301

301:                                              ; preds = %361, %291
  %302 = load i64, i64* %6, align 8
  %303 = load i64, i64* %8, align 8
  %304 = icmp ult i64 %302, %303
  br i1 %304, label %305, label %364

305:                                              ; preds = %301
  %306 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %3, i32 0, i32 2
  %307 = load %struct.TYPE_29__*, %struct.TYPE_29__** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %307, i32 0, i32 4
  %309 = load i32 (%struct.TYPE_29__**, i64)*, i32 (%struct.TYPE_29__**, i64)** %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %3, i32 0, i32 2
  %311 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %312 = load i64, i64* %6, align 8
  %313 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %311, i64 %312
  %314 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %313, i32 0, i32 0
  %315 = load i64, i64* %314, align 8
  %316 = call i32 %309(%struct.TYPE_29__** %310, i64 %315)
  store i64 0, i64* %17, align 8
  br label %317

317:                                              ; preds = %336, %305
  %318 = load i64, i64* %17, align 8
  %319 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %320 = load i64, i64* %6, align 8
  %321 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %319, i64 %320
  %322 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %321, i32 0, i32 0
  %323 = load i64, i64* %322, align 8
  %324 = icmp ult i64 %318, %323
  br i1 %324, label %325, label %354

325:                                              ; preds = %317
  %326 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %327 = load i64, i64* %6, align 8
  %328 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %326, i64 %327
  %329 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %328, i32 0, i32 0
  %330 = load i64, i64* %329, align 8
  %331 = load i64, i64* %17, align 8
  %332 = sub i64 %330, %331
  store i64 %332, i64* %18, align 8
  %333 = load i64, i64* %18, align 8
  %334 = icmp ugt i64 %333, 100
  br i1 %334, label %335, label %336

335:                                              ; preds = %325
  store i64 100, i64* %18, align 8
  br label %336

336:                                              ; preds = %335, %325
  %337 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %3, i32 0, i32 2
  %338 = load %struct.TYPE_29__*, %struct.TYPE_29__** %337, align 8
  %339 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %338, i32 0, i32 3
  %340 = load i32 (%struct.TYPE_29__**, %struct.TYPE_34__*, i64)*, i32 (%struct.TYPE_29__**, %struct.TYPE_34__*, i64)** %339, align 8
  %341 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %3, i32 0, i32 2
  %342 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %343 = load i64, i64* %6, align 8
  %344 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %342, i64 %343
  %345 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %344, i32 0, i32 1
  %346 = load %struct.TYPE_34__*, %struct.TYPE_34__** %345, align 8
  %347 = load i64, i64* %17, align 8
  %348 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %346, i64 %347
  %349 = load i64, i64* %18, align 8
  %350 = call i32 %340(%struct.TYPE_29__** %341, %struct.TYPE_34__* %348, i64 %349)
  %351 = load i64, i64* %18, align 8
  %352 = load i64, i64* %17, align 8
  %353 = add i64 %352, %351
  store i64 %353, i64* %17, align 8
  br label %317

354:                                              ; preds = %317
  %355 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %3, i32 0, i32 2
  %356 = load %struct.TYPE_29__*, %struct.TYPE_29__** %355, align 8
  %357 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %356, i32 0, i32 2
  %358 = load i32 (%struct.TYPE_29__**)*, i32 (%struct.TYPE_29__**)** %357, align 8
  %359 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %3, i32 0, i32 2
  %360 = call i32 %358(%struct.TYPE_29__** %359)
  br label %361

361:                                              ; preds = %354
  %362 = load i64, i64* %6, align 8
  %363 = add i64 %362, 1
  store i64 %363, i64* %6, align 8
  br label %301

364:                                              ; preds = %301
  %365 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %3, i32 0, i32 2
  %366 = load %struct.TYPE_29__*, %struct.TYPE_29__** %365, align 8
  %367 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %366, i32 0, i32 0
  %368 = load i32 (%struct.TYPE_29__**)*, i32 (%struct.TYPE_29__**)** %367, align 8
  %369 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %3, i32 0, i32 2
  %370 = call i32 %368(%struct.TYPE_29__** %369)
  store i32 %370, i32* %13, align 4
  %371 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %3, i32 0, i32 2
  %372 = load %struct.TYPE_29__*, %struct.TYPE_29__** %371, align 8
  %373 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %372, i32 0, i32 1
  %374 = load %struct.TYPE_35__* (%struct.TYPE_29__**, i32*)*, %struct.TYPE_35__* (%struct.TYPE_29__**, i32*)** %373, align 8
  %375 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %3, i32 0, i32 2
  %376 = call %struct.TYPE_35__* %374(%struct.TYPE_29__** %375, i32* %12)
  store %struct.TYPE_35__* %376, %struct.TYPE_35__** %11, align 8
  %377 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %378 = icmp ne %struct.TYPE_35__* %377, null
  br i1 %378, label %379, label %404

379:                                              ; preds = %364
  %380 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %381 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %380, i32 0, i32 0
  %382 = load i32, i32* %381, align 4
  %383 = load i32, i32* %12, align 4
  %384 = or i32 %382, %383
  store i32 %384, i32* %19, align 4
  %385 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %386 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %385, i32 0, i32 4
  %387 = load i32, i32* %386, align 8
  %388 = load i32, i32* %19, align 4
  %389 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %390 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %389, i32 0, i32 4
  %391 = load i32, i32* %390, align 8
  %392 = and i32 %388, %391
  %393 = icmp ne i32 %387, %392
  br i1 %393, label %394, label %403

394:                                              ; preds = %379
  %395 = load i32, i32* @stderr, align 4
  %396 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %397 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %396, i32 0, i32 4
  %398 = load i32, i32* %397, align 8
  %399 = load i32, i32* %19, align 4
  %400 = call i32 (i32, i8*, ...) @fprintf(i32 %395, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 %398, i32 %399)
  %401 = load i32, i32* @EXIT_FAILURE, align 4
  %402 = call i32 @exit(i32 %401) #4
  unreachable

403:                                              ; preds = %379
  br label %404

404:                                              ; preds = %403, %364
  %405 = load i32, i32* %13, align 4
  %406 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %407 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %406, i32 0, i32 5
  %408 = load i32, i32* %407, align 4
  %409 = icmp ne i32 %405, %408
  br i1 %409, label %410, label %419

410:                                              ; preds = %404
  %411 = load i32, i32* @stderr, align 4
  %412 = load i32, i32* %13, align 4
  %413 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %414 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %413, i32 0, i32 5
  %415 = load i32, i32* %414, align 4
  %416 = call i32 (i32, i8*, ...) @fprintf(i32 %411, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %412, i32 %415)
  %417 = load i32, i32* @EXIT_FAILURE, align 4
  %418 = call i32 @exit(i32 %417) #4
  unreachable

419:                                              ; preds = %404
  %420 = load i32, i32* %13, align 4
  %421 = load i32, i32* @BR_ERR_X509_NOT_TRUSTED, align 4
  %422 = icmp eq i32 %420, %421
  br i1 %422, label %423, label %424

423:                                              ; preds = %419
  store %struct.TYPE_35__* null, %struct.TYPE_35__** %11, align 8
  br label %424

424:                                              ; preds = %423, %419
  %425 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %426 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %427 = call i32 @eqpkey(%struct.TYPE_35__* %425, %struct.TYPE_35__* %426)
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %434, label %429

429:                                              ; preds = %424
  %430 = load i32, i32* @stderr, align 4
  %431 = call i32 (i32, i8*, ...) @fprintf(i32 %430, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %432 = load i32, i32* @EXIT_FAILURE, align 4
  %433 = call i32 @exit(i32 %432) #4
  unreachable

434:                                              ; preds = %424
  store i64 2, i64* %6, align 8
  br label %435

435:                                              ; preds = %454, %434
  %436 = load i64, i64* %6, align 8
  %437 = icmp ugt i64 %436, 0
  br i1 %437, label %438, label %457

438:                                              ; preds = %435
  %439 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %3, i32 0, i32 0
  %440 = load i32*, i32** %439, align 8
  %441 = load i64, i64* %6, align 8
  %442 = sub i64 %441, 1
  %443 = getelementptr inbounds i32, i32* %440, i64 %442
  %444 = load i32, i32* %443, align 4
  %445 = icmp ne i32 %444, -1480555522
  br i1 %445, label %446, label %453

446:                                              ; preds = %438
  %447 = load i64, i64* @max_dp_usage, align 8
  %448 = load i64, i64* %6, align 8
  %449 = icmp ult i64 %447, %448
  br i1 %449, label %450, label %452

450:                                              ; preds = %446
  %451 = load i64, i64* %6, align 8
  store i64 %451, i64* @max_dp_usage, align 8
  br label %452

452:                                              ; preds = %450, %446
  br label %457

453:                                              ; preds = %438
  br label %454

454:                                              ; preds = %453
  %455 = load i64, i64* %6, align 8
  %456 = add i64 %455, -1
  store i64 %456, i64* %6, align 8
  br label %435

457:                                              ; preds = %452, %435
  store i64 2, i64* %6, align 8
  br label %458

458:                                              ; preds = %477, %457
  %459 = load i64, i64* %6, align 8
  %460 = icmp ugt i64 %459, 0
  br i1 %460, label %461, label %480

461:                                              ; preds = %458
  %462 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %3, i32 0, i32 1
  %463 = load i32*, i32** %462, align 8
  %464 = load i64, i64* %6, align 8
  %465 = sub i64 %464, 1
  %466 = getelementptr inbounds i32, i32* %463, i64 %465
  %467 = load i32, i32* %466, align 4
  %468 = icmp ne i32 %467, -1480555522
  br i1 %468, label %469, label %476

469:                                              ; preds = %461
  %470 = load i64, i64* @max_rp_usage, align 8
  %471 = load i64, i64* %6, align 8
  %472 = icmp ult i64 %470, %471
  br i1 %472, label %473, label %475

473:                                              ; preds = %469
  %474 = load i64, i64* %6, align 8
  store i64 %474, i64* @max_rp_usage, align 8
  br label %475

475:                                              ; preds = %473, %469
  br label %480

476:                                              ; preds = %461
  br label %477

477:                                              ; preds = %476
  %478 = load i64, i64* %6, align 8
  %479 = add i64 %478, -1
  store i64 %479, i64* %6, align 8
  br label %458

480:                                              ; preds = %475, %458
  store i64 0, i64* %6, align 8
  br label %481

481:                                              ; preds = %492, %480
  %482 = load i64, i64* %6, align 8
  %483 = load i64, i64* %8, align 8
  %484 = icmp ult i64 %482, %483
  br i1 %484, label %485, label %495

485:                                              ; preds = %481
  %486 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %487 = load i64, i64* %6, align 8
  %488 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %486, i64 %487
  %489 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %488, i32 0, i32 1
  %490 = load %struct.TYPE_34__*, %struct.TYPE_34__** %489, align 8
  %491 = call i32 @xfree(%struct.TYPE_34__* %490)
  br label %492

492:                                              ; preds = %485
  %493 = load i64, i64* %6, align 8
  %494 = add i64 %493, 1
  store i64 %494, i64* %6, align 8
  br label %481

495:                                              ; preds = %481
  %496 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %497 = call i32 @xfree(%struct.TYPE_34__* %496)
  %498 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %499 = call i32 @xfree(%struct.TYPE_34__* %498)
  %500 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local %struct.TYPE_34__* @xmalloc(i64) #1

declare dso_local i8* @HT_get(i32, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local %struct.TYPE_34__* @read_file(i64, i64*) #1

declare dso_local i32 @br_x509_minimal_init(%struct.TYPE_36__*, i32*, %struct.TYPE_34__*, i64) #1

declare dso_local i32 @br_x509_minimal_set_hash(%struct.TYPE_36__*, i32, i32*) #1

declare dso_local i32 @br_x509_minimal_set_rsa(%struct.TYPE_36__*, i32) #1

declare dso_local i32 @br_rsa_pkcs1_vrfy_get_default(...) #1

declare dso_local i32 @br_x509_minimal_set_ecdsa(%struct.TYPE_36__*, i32, i32) #1

declare dso_local i32 @br_ec_get_default(...) #1

declare dso_local i32 @br_ecdsa_vrfy_asn1_get_default(...) #1

declare dso_local i32 @br_x509_minimal_set_time(%struct.TYPE_36__*, i32, i32) #1

declare dso_local i32 @eqpkey(%struct.TYPE_35__*, %struct.TYPE_35__*) #1

declare dso_local i32 @xfree(%struct.TYPE_34__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
