; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/common/ctf/extr_ctf_create.c_ctf_add_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/common/ctf/extr_ctf_create.c_ctf_add_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_62__ = type { i32, i64, %struct.TYPE_64__, i32, i32, i32, i32 }
%struct.TYPE_64__ = type { i64, %struct.TYPE_58__, %struct.TYPE_57__, i32* }
%struct.TYPE_58__ = type { %struct.TYPE_65__, %struct.TYPE_63__ }
%struct.TYPE_65__ = type { i64 }
%struct.TYPE_63__ = type { i64, i64, i32 }
%struct.TYPE_57__ = type { i32, i32, i32, i32 }
%struct.TYPE_59__ = type { i64, i32, i32 }
%struct.TYPE_56__ = type { i64, %struct.TYPE_64__*, %struct.TYPE_62__* }
%struct.TYPE_61__ = type { i64, i32, i32 }
%struct.TYPE_60__ = type { i64 }

@CTF_ERR = common dso_local global i64 0, align 8
@CTF_K_UNKNOWN = common dso_local global i32 0, align 4
@LCTF_RDWR = common dso_local global i32 0, align 4
@ECTF_RDONLY = common dso_local global i32 0, align 4
@CTF_ADD_ROOT = common dso_local global i32 0, align 4
@ECTF_CONFLICT = common dso_local global i32 0, align 4
@membcmp = common dso_local global i32 0, align 4
@membadd = common dso_local global i32 0, align 4
@CTF_MAX_SIZE = common dso_local global i32 0, align 4
@CTF_LSIZE_SENT = common dso_local global i32 0, align 4
@enumcmp = common dso_local global i32 0, align 4
@enumadd = common dso_local global i32 0, align 4
@ECTF_CORRUPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ctf_add_type(%struct.TYPE_62__* %0, %struct.TYPE_62__* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_62__*, align 8
  %6 = alloca %struct.TYPE_62__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_59__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_56__, align 8
  %16 = alloca %struct.TYPE_56__, align 8
  %17 = alloca %struct.TYPE_63__, align 8
  %18 = alloca %struct.TYPE_63__, align 8
  %19 = alloca %struct.TYPE_63__, align 8
  %20 = alloca %struct.TYPE_63__, align 8
  %21 = alloca %struct.TYPE_64__*, align 8
  %22 = alloca %struct.TYPE_61__, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca %struct.TYPE_60__*, align 8
  %26 = alloca %struct.TYPE_65__*, align 8
  %27 = alloca i32, align 4
  store %struct.TYPE_62__* %0, %struct.TYPE_62__** %5, align 8
  store %struct.TYPE_62__* %1, %struct.TYPE_62__** %6, align 8
  store i64 %2, i64* %7, align 8
  %28 = load i64, i64* @CTF_ERR, align 8
  store i64 %28, i64* %8, align 8
  %29 = load i32, i32* @CTF_K_UNKNOWN, align 4
  store i32 %29, i32* %9, align 4
  %30 = load %struct.TYPE_62__*, %struct.TYPE_62__** %5, align 8
  %31 = load %struct.TYPE_62__*, %struct.TYPE_62__** %6, align 8
  %32 = icmp eq %struct.TYPE_62__* %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %3
  %34 = load i64, i64* %7, align 8
  store i64 %34, i64* %4, align 8
  br label %594

35:                                               ; preds = %3
  %36 = load %struct.TYPE_62__*, %struct.TYPE_62__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @LCTF_RDWR, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %35
  %43 = load %struct.TYPE_62__*, %struct.TYPE_62__** %5, align 8
  %44 = load i32, i32* @ECTF_RDONLY, align 4
  %45 = call i64 @ctf_set_errno(%struct.TYPE_62__* %43, i32 %44)
  store i64 %45, i64* %4, align 8
  br label %594

46:                                               ; preds = %35
  %47 = load i64, i64* %7, align 8
  %48 = call %struct.TYPE_59__* @ctf_lookup_by_id(%struct.TYPE_62__** %6, i64 %47)
  store %struct.TYPE_59__* %48, %struct.TYPE_59__** %10, align 8
  %49 = icmp eq %struct.TYPE_59__* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = load %struct.TYPE_62__*, %struct.TYPE_62__** %5, align 8
  %52 = load %struct.TYPE_62__*, %struct.TYPE_62__** %6, align 8
  %53 = call i32 @ctf_errno(%struct.TYPE_62__* %52)
  %54 = call i64 @ctf_set_errno(%struct.TYPE_62__* %51, i32 %53)
  store i64 %54, i64* %4, align 8
  br label %594

55:                                               ; preds = %46
  %56 = load %struct.TYPE_62__*, %struct.TYPE_62__** %6, align 8
  %57 = load %struct.TYPE_59__*, %struct.TYPE_59__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i8* @ctf_strptr(%struct.TYPE_62__* %56, i32 %59)
  store i8* %60, i8** %11, align 8
  %61 = load %struct.TYPE_62__*, %struct.TYPE_62__** %6, align 8
  %62 = load %struct.TYPE_59__*, %struct.TYPE_59__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @LCTF_INFO_KIND(%struct.TYPE_62__* %61, i32 %64)
  store i32 %65, i32* %12, align 4
  %66 = load %struct.TYPE_62__*, %struct.TYPE_62__** %6, align 8
  %67 = load %struct.TYPE_59__*, %struct.TYPE_59__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @LCTF_INFO_ROOT(%struct.TYPE_62__* %66, i32 %69)
  store i32 %70, i32* %13, align 4
  %71 = load %struct.TYPE_62__*, %struct.TYPE_62__** %6, align 8
  %72 = load %struct.TYPE_59__*, %struct.TYPE_59__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @LCTF_INFO_VLEN(%struct.TYPE_62__* %71, i32 %74)
  store i32 %75, i32* %14, align 4
  %76 = load i32, i32* %12, align 4
  switch i32 %76, label %86 [
    i32 131, label %77
    i32 129, label %80
    i32 138, label %83
  ]

77:                                               ; preds = %55
  %78 = load %struct.TYPE_62__*, %struct.TYPE_62__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %78, i32 0, i32 6
  store i32* %79, i32** %24, align 8
  br label %89

80:                                               ; preds = %55
  %81 = load %struct.TYPE_62__*, %struct.TYPE_62__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %81, i32 0, i32 5
  store i32* %82, i32** %24, align 8
  br label %89

83:                                               ; preds = %55
  %84 = load %struct.TYPE_62__*, %struct.TYPE_62__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %84, i32 0, i32 4
  store i32* %85, i32** %24, align 8
  br label %89

86:                                               ; preds = %55
  %87 = load %struct.TYPE_62__*, %struct.TYPE_62__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %87, i32 0, i32 3
  store i32* %88, i32** %24, align 8
  br label %89

89:                                               ; preds = %86, %83, %80, %77
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* @CTF_ADD_ROOT, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %115

94:                                               ; preds = %89
  %95 = load i8*, i8** %11, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 0
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %115

100:                                              ; preds = %94
  %101 = load i32*, i32** %24, align 8
  %102 = load %struct.TYPE_62__*, %struct.TYPE_62__** %5, align 8
  %103 = load i8*, i8** %11, align 8
  %104 = load i8*, i8** %11, align 8
  %105 = call i32 @strlen(i8* %104)
  %106 = call %struct.TYPE_60__* @ctf_hash_lookup(i32* %101, %struct.TYPE_62__* %102, i8* %103, i32 %105)
  store %struct.TYPE_60__* %106, %struct.TYPE_60__** %25, align 8
  %107 = icmp ne %struct.TYPE_60__* %106, null
  br i1 %107, label %108, label %115

108:                                              ; preds = %100
  %109 = load %struct.TYPE_60__*, %struct.TYPE_60__** %25, align 8
  %110 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  store i64 %111, i64* %8, align 8
  %112 = load %struct.TYPE_62__*, %struct.TYPE_62__** %5, align 8
  %113 = load i64, i64* %8, align 8
  %114 = call i32 @ctf_type_kind(%struct.TYPE_62__* %112, i64 %113)
  store i32 %114, i32* %9, align 4
  br label %115

115:                                              ; preds = %108, %100, %94, %89
  %116 = load i64, i64* %8, align 8
  %117 = load i64, i64* @CTF_ERR, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %142

119:                                              ; preds = %115
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* %12, align 4
  %122 = icmp ne i32 %120, %121
  br i1 %122, label %123, label %142

123:                                              ; preds = %119
  %124 = load i32, i32* %9, align 4
  %125 = icmp ne i32 %124, 136
  br i1 %125, label %135, label %126

126:                                              ; preds = %123
  %127 = load i32, i32* %12, align 4
  %128 = icmp ne i32 %127, 138
  br i1 %128, label %129, label %139

129:                                              ; preds = %126
  %130 = load i32, i32* %12, align 4
  %131 = icmp ne i32 %130, 131
  br i1 %131, label %132, label %139

132:                                              ; preds = %129
  %133 = load i32, i32* %12, align 4
  %134 = icmp ne i32 %133, 129
  br i1 %134, label %135, label %139

135:                                              ; preds = %132, %123
  %136 = load %struct.TYPE_62__*, %struct.TYPE_62__** %5, align 8
  %137 = load i32, i32* @ECTF_CONFLICT, align 4
  %138 = call i64 @ctf_set_errno(%struct.TYPE_62__* %136, i32 %137)
  store i64 %138, i64* %4, align 8
  br label %594

139:                                              ; preds = %132, %129, %126
  %140 = load i64, i64* @CTF_ERR, align 8
  store i64 %140, i64* %8, align 8
  br label %141

141:                                              ; preds = %139
  br label %142

142:                                              ; preds = %141, %119, %115
  %143 = load i64, i64* %8, align 8
  %144 = load i64, i64* @CTF_ERR, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %219

146:                                              ; preds = %142
  %147 = load i8*, i8** %11, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 0
  %149 = load i8, i8* %148, align 1
  %150 = sext i8 %149 to i32
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %219

152:                                              ; preds = %146
  %153 = load %struct.TYPE_62__*, %struct.TYPE_62__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %153, i32 0, i32 2
  %155 = call %struct.TYPE_64__* @ctf_list_prev(%struct.TYPE_64__* %154)
  store %struct.TYPE_64__* %155, %struct.TYPE_64__** %21, align 8
  br label %156

156:                                              ; preds = %215, %152
  %157 = load %struct.TYPE_64__*, %struct.TYPE_64__** %21, align 8
  %158 = icmp ne %struct.TYPE_64__* %157, null
  br i1 %158, label %159, label %168

159:                                              ; preds = %156
  %160 = load %struct.TYPE_64__*, %struct.TYPE_64__** %21, align 8
  %161 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = call i64 @CTF_TYPE_TO_INDEX(i64 %162)
  %164 = load %struct.TYPE_62__*, %struct.TYPE_62__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = icmp sgt i64 %163, %166
  br label %168

168:                                              ; preds = %159, %156
  %169 = phi i1 [ false, %156 ], [ %167, %159 ]
  br i1 %169, label %170, label %218

170:                                              ; preds = %168
  %171 = load %struct.TYPE_64__*, %struct.TYPE_64__** %21, align 8
  %172 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @CTF_INFO_KIND(i32 %174)
  %176 = load i32, i32* %12, align 4
  %177 = icmp ne i32 %175, %176
  br i1 %177, label %190, label %178

178:                                              ; preds = %170
  %179 = load %struct.TYPE_64__*, %struct.TYPE_64__** %21, align 8
  %180 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %179, i32 0, i32 3
  %181 = load i32*, i32** %180, align 8
  %182 = icmp eq i32* %181, null
  br i1 %182, label %190, label %183

183:                                              ; preds = %178
  %184 = load %struct.TYPE_64__*, %struct.TYPE_64__** %21, align 8
  %185 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %184, i32 0, i32 3
  %186 = load i32*, i32** %185, align 8
  %187 = load i8*, i8** %11, align 8
  %188 = call i64 @strcmp(i32* %186, i8* %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %183, %178, %170
  br label %215

191:                                              ; preds = %183
  %192 = load i32, i32* %12, align 4
  %193 = icmp eq i32 %192, 134
  br i1 %193, label %197, label %194

194:                                              ; preds = %191
  %195 = load i32, i32* %12, align 4
  %196 = icmp eq i32 %195, 137
  br i1 %196, label %197, label %211

197:                                              ; preds = %194, %191
  %198 = load %struct.TYPE_62__*, %struct.TYPE_62__** %6, align 8
  %199 = load i64, i64* %7, align 8
  %200 = call i64 @ctf_type_encoding(%struct.TYPE_62__* %198, i64 %199, %struct.TYPE_63__* %17)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %197
  br label %215

203:                                              ; preds = %197
  %204 = load %struct.TYPE_64__*, %struct.TYPE_64__** %21, align 8
  %205 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %205, i32 0, i32 1
  %207 = call i64 @bcmp(%struct.TYPE_63__* %17, %struct.TYPE_63__* %206, i32 24)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %203
  br label %215

210:                                              ; preds = %203
  br label %211

211:                                              ; preds = %210, %194
  %212 = load %struct.TYPE_64__*, %struct.TYPE_64__** %21, align 8
  %213 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  store i64 %214, i64* %4, align 8
  br label %594

215:                                              ; preds = %209, %202, %190
  %216 = load %struct.TYPE_64__*, %struct.TYPE_64__** %21, align 8
  %217 = call %struct.TYPE_64__* @ctf_list_prev(%struct.TYPE_64__* %216)
  store %struct.TYPE_64__* %217, %struct.TYPE_64__** %21, align 8
  br label %156

218:                                              ; preds = %168
  br label %219

219:                                              ; preds = %218, %146, %142
  %220 = load %struct.TYPE_62__*, %struct.TYPE_62__** %6, align 8
  %221 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %15, i32 0, i32 2
  store %struct.TYPE_62__* %220, %struct.TYPE_62__** %221, align 8
  %222 = load i64, i64* %7, align 8
  %223 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %15, i32 0, i32 0
  store i64 %222, i64* %223, align 8
  %224 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %15, i32 0, i32 1
  store %struct.TYPE_64__* null, %struct.TYPE_64__** %224, align 8
  %225 = load %struct.TYPE_62__*, %struct.TYPE_62__** %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %16, i32 0, i32 2
  store %struct.TYPE_62__* %225, %struct.TYPE_62__** %226, align 8
  %227 = load i64, i64* %8, align 8
  %228 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %16, i32 0, i32 0
  store i64 %227, i64* %228, align 8
  %229 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %16, i32 0, i32 1
  store %struct.TYPE_64__* null, %struct.TYPE_64__** %229, align 8
  %230 = load i32, i32* %12, align 4
  switch i32 %230, label %588 [
    i32 134, label %231
    i32 137, label %231
    i32 133, label %275
    i32 128, label %275
    i32 139, label %275
    i32 132, label %275
    i32 140, label %294
    i32 135, label %356
    i32 131, label %376
    i32 129, label %376
    i32 138, label %511
    i32 136, label %554
    i32 130, label %564
  ]

231:                                              ; preds = %219, %219
  %232 = load %struct.TYPE_62__*, %struct.TYPE_62__** %6, align 8
  %233 = load i64, i64* %7, align 8
  %234 = call i64 @ctf_type_encoding(%struct.TYPE_62__* %232, i64 %233, %struct.TYPE_63__* %17)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %241

236:                                              ; preds = %231
  %237 = load %struct.TYPE_62__*, %struct.TYPE_62__** %5, align 8
  %238 = load %struct.TYPE_62__*, %struct.TYPE_62__** %6, align 8
  %239 = call i32 @ctf_errno(%struct.TYPE_62__* %238)
  %240 = call i64 @ctf_set_errno(%struct.TYPE_62__* %237, i32 %239)
  store i64 %240, i64* %4, align 8
  br label %594

241:                                              ; preds = %231
  %242 = load i64, i64* %8, align 8
  %243 = load i64, i64* @CTF_ERR, align 8
  %244 = icmp ne i64 %242, %243
  br i1 %244, label %245, label %260

245:                                              ; preds = %241
  %246 = load %struct.TYPE_62__*, %struct.TYPE_62__** %5, align 8
  %247 = load i64, i64* %8, align 8
  %248 = call i64 @ctf_type_encoding(%struct.TYPE_62__* %246, i64 %247, %struct.TYPE_63__* %18)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %252

250:                                              ; preds = %245
  %251 = load i64, i64* @CTF_ERR, align 8
  store i64 %251, i64* %4, align 8
  br label %594

252:                                              ; preds = %245
  %253 = call i64 @bcmp(%struct.TYPE_63__* %17, %struct.TYPE_63__* %18, i32 24)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %259

255:                                              ; preds = %252
  %256 = load %struct.TYPE_62__*, %struct.TYPE_62__** %5, align 8
  %257 = load i32, i32* @ECTF_CONFLICT, align 4
  %258 = call i64 @ctf_set_errno(%struct.TYPE_62__* %256, i32 %257)
  store i64 %258, i64* %4, align 8
  br label %594

259:                                              ; preds = %252
  br label %274

260:                                              ; preds = %241
  %261 = load i32, i32* %12, align 4
  %262 = icmp eq i32 %261, 134
  br i1 %262, label %263, label %268

263:                                              ; preds = %260
  %264 = load %struct.TYPE_62__*, %struct.TYPE_62__** %5, align 8
  %265 = load i32, i32* %13, align 4
  %266 = load i8*, i8** %11, align 8
  %267 = call i64 @ctf_add_integer(%struct.TYPE_62__* %264, i32 %265, i8* %266, %struct.TYPE_63__* %17)
  store i64 %267, i64* %8, align 8
  br label %273

268:                                              ; preds = %260
  %269 = load %struct.TYPE_62__*, %struct.TYPE_62__** %5, align 8
  %270 = load i32, i32* %13, align 4
  %271 = load i8*, i8** %11, align 8
  %272 = call i64 @ctf_add_float(%struct.TYPE_62__* %269, i32 %270, i8* %271, %struct.TYPE_63__* %17)
  store i64 %272, i64* %8, align 8
  br label %273

273:                                              ; preds = %268, %263
  br label %274

274:                                              ; preds = %273, %259
  br label %592

275:                                              ; preds = %219, %219, %219, %219
  %276 = load %struct.TYPE_62__*, %struct.TYPE_62__** %6, align 8
  %277 = load i64, i64* %7, align 8
  %278 = call i64 @ctf_type_reference(%struct.TYPE_62__* %276, i64 %277)
  store i64 %278, i64* %7, align 8
  %279 = load %struct.TYPE_62__*, %struct.TYPE_62__** %5, align 8
  %280 = load %struct.TYPE_62__*, %struct.TYPE_62__** %6, align 8
  %281 = load i64, i64* %7, align 8
  %282 = call i64 @ctf_add_type(%struct.TYPE_62__* %279, %struct.TYPE_62__* %280, i64 %281)
  store i64 %282, i64* %7, align 8
  %283 = load i64, i64* %7, align 8
  %284 = load i64, i64* @CTF_ERR, align 8
  %285 = icmp eq i64 %283, %284
  br i1 %285, label %286, label %288

286:                                              ; preds = %275
  %287 = load i64, i64* @CTF_ERR, align 8
  store i64 %287, i64* %4, align 8
  br label %594

288:                                              ; preds = %275
  %289 = load %struct.TYPE_62__*, %struct.TYPE_62__** %5, align 8
  %290 = load i32, i32* %13, align 4
  %291 = load i64, i64* %7, align 8
  %292 = load i32, i32* %12, align 4
  %293 = call i64 @ctf_add_reftype(%struct.TYPE_62__* %289, i32 %290, i64 %291, i32 %292)
  store i64 %293, i64* %8, align 8
  br label %592

294:                                              ; preds = %219
  %295 = load %struct.TYPE_62__*, %struct.TYPE_62__** %6, align 8
  %296 = load i64, i64* %7, align 8
  %297 = call i64 @ctf_array_info(%struct.TYPE_62__* %295, i64 %296, %struct.TYPE_63__* %19)
  %298 = load i64, i64* @CTF_ERR, align 8
  %299 = icmp eq i64 %297, %298
  br i1 %299, label %300, label %305

300:                                              ; preds = %294
  %301 = load %struct.TYPE_62__*, %struct.TYPE_62__** %5, align 8
  %302 = load %struct.TYPE_62__*, %struct.TYPE_62__** %6, align 8
  %303 = call i32 @ctf_errno(%struct.TYPE_62__* %302)
  %304 = call i64 @ctf_set_errno(%struct.TYPE_62__* %301, i32 %303)
  store i64 %304, i64* %4, align 8
  br label %594

305:                                              ; preds = %294
  %306 = load %struct.TYPE_62__*, %struct.TYPE_62__** %5, align 8
  %307 = load %struct.TYPE_62__*, %struct.TYPE_62__** %6, align 8
  %308 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %19, i32 0, i32 0
  %309 = load i64, i64* %308, align 8
  %310 = call i64 @ctf_add_type(%struct.TYPE_62__* %306, %struct.TYPE_62__* %307, i64 %309)
  %311 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %19, i32 0, i32 0
  store i64 %310, i64* %311, align 8
  %312 = load %struct.TYPE_62__*, %struct.TYPE_62__** %5, align 8
  %313 = load %struct.TYPE_62__*, %struct.TYPE_62__** %6, align 8
  %314 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %19, i32 0, i32 1
  %315 = load i64, i64* %314, align 8
  %316 = call i64 @ctf_add_type(%struct.TYPE_62__* %312, %struct.TYPE_62__* %313, i64 %315)
  %317 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %19, i32 0, i32 1
  store i64 %316, i64* %317, align 8
  %318 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %19, i32 0, i32 2
  %319 = load i32, i32* %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %19, i32 0, i32 2
  store i32 %319, i32* %320, align 8
  %321 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %19, i32 0, i32 0
  %322 = load i64, i64* %321, align 8
  %323 = load i64, i64* @CTF_ERR, align 8
  %324 = icmp eq i64 %322, %323
  br i1 %324, label %330, label %325

325:                                              ; preds = %305
  %326 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %19, i32 0, i32 1
  %327 = load i64, i64* %326, align 8
  %328 = load i64, i64* @CTF_ERR, align 8
  %329 = icmp eq i64 %327, %328
  br i1 %329, label %330, label %332

330:                                              ; preds = %325, %305
  %331 = load i64, i64* @CTF_ERR, align 8
  store i64 %331, i64* %4, align 8
  br label %594

332:                                              ; preds = %325
  %333 = load i64, i64* %8, align 8
  %334 = load i64, i64* @CTF_ERR, align 8
  %335 = icmp ne i64 %333, %334
  br i1 %335, label %336, label %351

336:                                              ; preds = %332
  %337 = load %struct.TYPE_62__*, %struct.TYPE_62__** %5, align 8
  %338 = load i64, i64* %8, align 8
  %339 = call i64 @ctf_array_info(%struct.TYPE_62__* %337, i64 %338, %struct.TYPE_63__* %20)
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %341, label %343

341:                                              ; preds = %336
  %342 = load i64, i64* @CTF_ERR, align 8
  store i64 %342, i64* %4, align 8
  br label %594

343:                                              ; preds = %336
  %344 = call i64 @bcmp(%struct.TYPE_63__* %19, %struct.TYPE_63__* %20, i32 24)
  %345 = icmp ne i64 %344, 0
  br i1 %345, label %346, label %350

346:                                              ; preds = %343
  %347 = load %struct.TYPE_62__*, %struct.TYPE_62__** %5, align 8
  %348 = load i32, i32* @ECTF_CONFLICT, align 4
  %349 = call i64 @ctf_set_errno(%struct.TYPE_62__* %347, i32 %348)
  store i64 %349, i64* %4, align 8
  br label %594

350:                                              ; preds = %343
  br label %355

351:                                              ; preds = %332
  %352 = load %struct.TYPE_62__*, %struct.TYPE_62__** %5, align 8
  %353 = load i32, i32* %13, align 4
  %354 = call i64 @ctf_add_array(%struct.TYPE_62__* %352, i32 %353, %struct.TYPE_63__* %19)
  store i64 %354, i64* %8, align 8
  br label %355

355:                                              ; preds = %351, %350
  br label %592

356:                                              ; preds = %219
  %357 = load %struct.TYPE_62__*, %struct.TYPE_62__** %5, align 8
  %358 = load %struct.TYPE_62__*, %struct.TYPE_62__** %6, align 8
  %359 = load %struct.TYPE_59__*, %struct.TYPE_59__** %10, align 8
  %360 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %359, i32 0, i32 0
  %361 = load i64, i64* %360, align 8
  %362 = call i64 @ctf_add_type(%struct.TYPE_62__* %357, %struct.TYPE_62__* %358, i64 %361)
  %363 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %22, i32 0, i32 0
  store i64 %362, i64* %363, align 8
  %364 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %22, i32 0, i32 2
  store i32 0, i32* %364, align 4
  %365 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %22, i32 0, i32 1
  store i32 0, i32* %365, align 8
  %366 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %22, i32 0, i32 0
  %367 = load i64, i64* %366, align 8
  %368 = load i64, i64* @CTF_ERR, align 8
  %369 = icmp eq i64 %367, %368
  br i1 %369, label %370, label %372

370:                                              ; preds = %356
  %371 = load i64, i64* @CTF_ERR, align 8
  store i64 %371, i64* %4, align 8
  br label %594

372:                                              ; preds = %356
  %373 = load %struct.TYPE_62__*, %struct.TYPE_62__** %5, align 8
  %374 = load i32, i32* %13, align 4
  %375 = call i64 @ctf_add_function(%struct.TYPE_62__* %373, i32 %374, %struct.TYPE_61__* %22, i32* null)
  store i64 %375, i64* %8, align 8
  br label %592

376:                                              ; preds = %219, %219
  store i32 0, i32* %27, align 4
  %377 = load i64, i64* %8, align 8
  %378 = load i64, i64* @CTF_ERR, align 8
  %379 = icmp ne i64 %377, %378
  br i1 %379, label %380, label %406

380:                                              ; preds = %376
  %381 = load i32, i32* %9, align 4
  %382 = icmp ne i32 %381, 136
  br i1 %382, label %383, label %406

383:                                              ; preds = %380
  %384 = load %struct.TYPE_62__*, %struct.TYPE_62__** %6, align 8
  %385 = load i64, i64* %7, align 8
  %386 = call i32 @ctf_type_size(%struct.TYPE_62__* %384, i64 %385)
  %387 = load %struct.TYPE_62__*, %struct.TYPE_62__** %5, align 8
  %388 = load i64, i64* %8, align 8
  %389 = call i32 @ctf_type_size(%struct.TYPE_62__* %387, i64 %388)
  %390 = icmp ne i32 %386, %389
  br i1 %390, label %391, label %395

391:                                              ; preds = %383
  %392 = load %struct.TYPE_62__*, %struct.TYPE_62__** %5, align 8
  %393 = load i32, i32* @ECTF_CONFLICT, align 4
  %394 = call i64 @ctf_set_errno(%struct.TYPE_62__* %392, i32 %393)
  store i64 %394, i64* %4, align 8
  br label %594

395:                                              ; preds = %383
  %396 = load %struct.TYPE_62__*, %struct.TYPE_62__** %6, align 8
  %397 = load i64, i64* %7, align 8
  %398 = load i32, i32* @membcmp, align 4
  %399 = call i32 @ctf_member_iter(%struct.TYPE_62__* %396, i64 %397, i32 %398, %struct.TYPE_56__* %16)
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %405

401:                                              ; preds = %395
  %402 = load %struct.TYPE_62__*, %struct.TYPE_62__** %5, align 8
  %403 = load i32, i32* @ECTF_CONFLICT, align 4
  %404 = call i64 @ctf_set_errno(%struct.TYPE_62__* %402, i32 %403)
  store i64 %404, i64* %4, align 8
  br label %594

405:                                              ; preds = %395
  br label %592

406:                                              ; preds = %380, %376
  %407 = load %struct.TYPE_62__*, %struct.TYPE_62__** %5, align 8
  %408 = load i32, i32* %13, align 4
  %409 = load i8*, i8** %11, align 8
  %410 = call i64 @ctf_add_generic(%struct.TYPE_62__* %407, i32 %408, i8* %409, %struct.TYPE_64__** %21)
  store i64 %410, i64* %8, align 8
  %411 = load i64, i64* %8, align 8
  %412 = load i64, i64* @CTF_ERR, align 8
  %413 = icmp eq i64 %411, %412
  br i1 %413, label %414, label %416

414:                                              ; preds = %406
  %415 = load i64, i64* @CTF_ERR, align 8
  store i64 %415, i64* %4, align 8
  br label %594

416:                                              ; preds = %406
  %417 = load i64, i64* %8, align 8
  %418 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %16, i32 0, i32 0
  store i64 %417, i64* %418, align 8
  %419 = load %struct.TYPE_64__*, %struct.TYPE_64__** %21, align 8
  %420 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %16, i32 0, i32 1
  store %struct.TYPE_64__* %419, %struct.TYPE_64__** %420, align 8
  %421 = load %struct.TYPE_62__*, %struct.TYPE_62__** %6, align 8
  %422 = load i64, i64* %7, align 8
  %423 = load i32, i32* @membadd, align 4
  %424 = call i32 @ctf_member_iter(%struct.TYPE_62__* %421, i64 %422, i32 %423, %struct.TYPE_56__* %16)
  %425 = icmp ne i32 %424, 0
  br i1 %425, label %426, label %429

426:                                              ; preds = %416
  %427 = load i32, i32* %27, align 4
  %428 = add nsw i32 %427, 1
  store i32 %428, i32* %27, align 4
  br label %429

429:                                              ; preds = %426, %416
  %430 = load %struct.TYPE_62__*, %struct.TYPE_62__** %6, align 8
  %431 = load i64, i64* %7, align 8
  %432 = call i32 @ctf_type_size(%struct.TYPE_62__* %430, i64 %431)
  store i32 %432, i32* %23, align 4
  %433 = load i32, i32* @CTF_MAX_SIZE, align 4
  %434 = icmp sgt i32 %432, %433
  br i1 %434, label %435, label %450

435:                                              ; preds = %429
  %436 = load i32, i32* @CTF_LSIZE_SENT, align 4
  %437 = load %struct.TYPE_64__*, %struct.TYPE_64__** %21, align 8
  %438 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %437, i32 0, i32 2
  %439 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %438, i32 0, i32 1
  store i32 %436, i32* %439, align 4
  %440 = load i32, i32* %23, align 4
  %441 = call i32 @CTF_SIZE_TO_LSIZE_HI(i32 %440)
  %442 = load %struct.TYPE_64__*, %struct.TYPE_64__** %21, align 8
  %443 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %442, i32 0, i32 2
  %444 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %443, i32 0, i32 3
  store i32 %441, i32* %444, align 4
  %445 = load i32, i32* %23, align 4
  %446 = call i32 @CTF_SIZE_TO_LSIZE_LO(i32 %445)
  %447 = load %struct.TYPE_64__*, %struct.TYPE_64__** %21, align 8
  %448 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %447, i32 0, i32 2
  %449 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %448, i32 0, i32 2
  store i32 %446, i32* %449, align 8
  br label %455

450:                                              ; preds = %429
  %451 = load i32, i32* %23, align 4
  %452 = load %struct.TYPE_64__*, %struct.TYPE_64__** %21, align 8
  %453 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %452, i32 0, i32 2
  %454 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %453, i32 0, i32 1
  store i32 %451, i32* %454, align 4
  br label %455

455:                                              ; preds = %450, %435
  %456 = load i32, i32* %12, align 4
  %457 = load i32, i32* %13, align 4
  %458 = load i32, i32* %14, align 4
  %459 = call i32 @CTF_TYPE_INFO(i32 %456, i32 %457, i32 %458)
  %460 = load %struct.TYPE_64__*, %struct.TYPE_64__** %21, align 8
  %461 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %460, i32 0, i32 2
  %462 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %461, i32 0, i32 0
  store i32 %459, i32* %462, align 8
  %463 = load %struct.TYPE_64__*, %struct.TYPE_64__** %21, align 8
  %464 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %463, i32 0, i32 1
  %465 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %464, i32 0, i32 0
  %466 = call %struct.TYPE_65__* @ctf_list_next(%struct.TYPE_65__* %465)
  store %struct.TYPE_65__* %466, %struct.TYPE_65__** %26, align 8
  br label %467

467:                                              ; preds = %485, %455
  %468 = load %struct.TYPE_65__*, %struct.TYPE_65__** %26, align 8
  %469 = icmp ne %struct.TYPE_65__* %468, null
  br i1 %469, label %470, label %488

470:                                              ; preds = %467
  %471 = load %struct.TYPE_62__*, %struct.TYPE_62__** %5, align 8
  %472 = load %struct.TYPE_62__*, %struct.TYPE_62__** %6, align 8
  %473 = load %struct.TYPE_65__*, %struct.TYPE_65__** %26, align 8
  %474 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %473, i32 0, i32 0
  %475 = load i64, i64* %474, align 8
  %476 = call i64 @ctf_add_type(%struct.TYPE_62__* %471, %struct.TYPE_62__* %472, i64 %475)
  %477 = load %struct.TYPE_65__*, %struct.TYPE_65__** %26, align 8
  %478 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %477, i32 0, i32 0
  store i64 %476, i64* %478, align 8
  %479 = load i64, i64* @CTF_ERR, align 8
  %480 = icmp eq i64 %476, %479
  br i1 %480, label %481, label %484

481:                                              ; preds = %470
  %482 = load i32, i32* %27, align 4
  %483 = add nsw i32 %482, 1
  store i32 %483, i32* %27, align 4
  br label %484

484:                                              ; preds = %481, %470
  br label %485

485:                                              ; preds = %484
  %486 = load %struct.TYPE_65__*, %struct.TYPE_65__** %26, align 8
  %487 = call %struct.TYPE_65__* @ctf_list_next(%struct.TYPE_65__* %486)
  store %struct.TYPE_65__* %487, %struct.TYPE_65__** %26, align 8
  br label %467

488:                                              ; preds = %467
  %489 = load i32, i32* %27, align 4
  %490 = icmp ne i32 %489, 0
  br i1 %490, label %491, label %493

491:                                              ; preds = %488
  %492 = load i64, i64* @CTF_ERR, align 8
  store i64 %492, i64* %4, align 8
  br label %594

493:                                              ; preds = %488
  %494 = load %struct.TYPE_64__*, %struct.TYPE_64__** %21, align 8
  %495 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %494, i32 0, i32 1
  %496 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %495, i32 0, i32 0
  %497 = call %struct.TYPE_65__* @ctf_list_next(%struct.TYPE_65__* %496)
  store %struct.TYPE_65__* %497, %struct.TYPE_65__** %26, align 8
  br label %498

498:                                              ; preds = %507, %493
  %499 = load %struct.TYPE_65__*, %struct.TYPE_65__** %26, align 8
  %500 = icmp ne %struct.TYPE_65__* %499, null
  br i1 %500, label %501, label %510

501:                                              ; preds = %498
  %502 = load %struct.TYPE_62__*, %struct.TYPE_62__** %5, align 8
  %503 = load %struct.TYPE_65__*, %struct.TYPE_65__** %26, align 8
  %504 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %503, i32 0, i32 0
  %505 = load i64, i64* %504, align 8
  %506 = call i32 @ctf_ref_inc(%struct.TYPE_62__* %502, i64 %505)
  br label %507

507:                                              ; preds = %501
  %508 = load %struct.TYPE_65__*, %struct.TYPE_65__** %26, align 8
  %509 = call %struct.TYPE_65__* @ctf_list_next(%struct.TYPE_65__* %508)
  store %struct.TYPE_65__* %509, %struct.TYPE_65__** %26, align 8
  br label %498

510:                                              ; preds = %498
  br label %592

511:                                              ; preds = %219
  %512 = load i64, i64* %8, align 8
  %513 = load i64, i64* @CTF_ERR, align 8
  %514 = icmp ne i64 %512, %513
  br i1 %514, label %515, label %535

515:                                              ; preds = %511
  %516 = load i32, i32* %9, align 4
  %517 = icmp ne i32 %516, 136
  br i1 %517, label %518, label %535

518:                                              ; preds = %515
  %519 = load %struct.TYPE_62__*, %struct.TYPE_62__** %6, align 8
  %520 = load i64, i64* %7, align 8
  %521 = load i32, i32* @enumcmp, align 4
  %522 = call i32 @ctf_enum_iter(%struct.TYPE_62__* %519, i64 %520, i32 %521, %struct.TYPE_56__* %16)
  %523 = icmp ne i32 %522, 0
  br i1 %523, label %530, label %524

524:                                              ; preds = %518
  %525 = load %struct.TYPE_62__*, %struct.TYPE_62__** %5, align 8
  %526 = load i64, i64* %8, align 8
  %527 = load i32, i32* @enumcmp, align 4
  %528 = call i32 @ctf_enum_iter(%struct.TYPE_62__* %525, i64 %526, i32 %527, %struct.TYPE_56__* %15)
  %529 = icmp ne i32 %528, 0
  br i1 %529, label %530, label %534

530:                                              ; preds = %524, %518
  %531 = load %struct.TYPE_62__*, %struct.TYPE_62__** %5, align 8
  %532 = load i32, i32* @ECTF_CONFLICT, align 4
  %533 = call i64 @ctf_set_errno(%struct.TYPE_62__* %531, i32 %532)
  store i64 %533, i64* %4, align 8
  br label %594

534:                                              ; preds = %524
  br label %553

535:                                              ; preds = %515, %511
  %536 = load %struct.TYPE_62__*, %struct.TYPE_62__** %5, align 8
  %537 = load i32, i32* %13, align 4
  %538 = load i8*, i8** %11, align 8
  %539 = call i64 @ctf_add_enum(%struct.TYPE_62__* %536, i32 %537, i8* %538)
  store i64 %539, i64* %8, align 8
  %540 = load i64, i64* %8, align 8
  %541 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %16, i32 0, i32 0
  store i64 %540, i64* %541, align 8
  %542 = load i64, i64* @CTF_ERR, align 8
  %543 = icmp eq i64 %540, %542
  br i1 %543, label %550, label %544

544:                                              ; preds = %535
  %545 = load %struct.TYPE_62__*, %struct.TYPE_62__** %6, align 8
  %546 = load i64, i64* %7, align 8
  %547 = load i32, i32* @enumadd, align 4
  %548 = call i32 @ctf_enum_iter(%struct.TYPE_62__* %545, i64 %546, i32 %547, %struct.TYPE_56__* %16)
  %549 = icmp ne i32 %548, 0
  br i1 %549, label %550, label %552

550:                                              ; preds = %544, %535
  %551 = load i64, i64* @CTF_ERR, align 8
  store i64 %551, i64* %4, align 8
  br label %594

552:                                              ; preds = %544
  br label %553

553:                                              ; preds = %552, %534
  br label %592

554:                                              ; preds = %219
  %555 = load i64, i64* %8, align 8
  %556 = load i64, i64* @CTF_ERR, align 8
  %557 = icmp eq i64 %555, %556
  br i1 %557, label %558, label %563

558:                                              ; preds = %554
  %559 = load %struct.TYPE_62__*, %struct.TYPE_62__** %5, align 8
  %560 = load i32, i32* %13, align 4
  %561 = load i8*, i8** %11, align 8
  %562 = call i64 @ctf_add_forward(%struct.TYPE_62__* %559, i32 %560, i8* %561, i32 131)
  store i64 %562, i64* %8, align 8
  br label %563

563:                                              ; preds = %558, %554
  br label %592

564:                                              ; preds = %219
  %565 = load %struct.TYPE_62__*, %struct.TYPE_62__** %6, align 8
  %566 = load i64, i64* %7, align 8
  %567 = call i64 @ctf_type_reference(%struct.TYPE_62__* %565, i64 %566)
  store i64 %567, i64* %7, align 8
  %568 = load %struct.TYPE_62__*, %struct.TYPE_62__** %5, align 8
  %569 = load %struct.TYPE_62__*, %struct.TYPE_62__** %6, align 8
  %570 = load i64, i64* %7, align 8
  %571 = call i64 @ctf_add_type(%struct.TYPE_62__* %568, %struct.TYPE_62__* %569, i64 %570)
  store i64 %571, i64* %7, align 8
  %572 = load i64, i64* %7, align 8
  %573 = load i64, i64* @CTF_ERR, align 8
  %574 = icmp eq i64 %572, %573
  br i1 %574, label %575, label %577

575:                                              ; preds = %564
  %576 = load i64, i64* @CTF_ERR, align 8
  store i64 %576, i64* %4, align 8
  br label %594

577:                                              ; preds = %564
  %578 = load i64, i64* %8, align 8
  %579 = load i64, i64* @CTF_ERR, align 8
  %580 = icmp eq i64 %578, %579
  br i1 %580, label %581, label %587

581:                                              ; preds = %577
  %582 = load %struct.TYPE_62__*, %struct.TYPE_62__** %5, align 8
  %583 = load i32, i32* %13, align 4
  %584 = load i8*, i8** %11, align 8
  %585 = load i64, i64* %7, align 8
  %586 = call i64 @ctf_add_typedef(%struct.TYPE_62__* %582, i32 %583, i8* %584, i64 %585)
  store i64 %586, i64* %8, align 8
  br label %587

587:                                              ; preds = %581, %577
  br label %592

588:                                              ; preds = %219
  %589 = load %struct.TYPE_62__*, %struct.TYPE_62__** %5, align 8
  %590 = load i32, i32* @ECTF_CORRUPT, align 4
  %591 = call i64 @ctf_set_errno(%struct.TYPE_62__* %589, i32 %590)
  store i64 %591, i64* %4, align 8
  br label %594

592:                                              ; preds = %587, %563, %553, %510, %405, %372, %355, %288, %274
  %593 = load i64, i64* %8, align 8
  store i64 %593, i64* %4, align 8
  br label %594

594:                                              ; preds = %592, %588, %575, %550, %530, %491, %414, %401, %391, %370, %346, %341, %330, %300, %286, %255, %250, %236, %211, %135, %50, %42, %33
  %595 = load i64, i64* %4, align 8
  ret i64 %595
}

declare dso_local i64 @ctf_set_errno(%struct.TYPE_62__*, i32) #1

declare dso_local %struct.TYPE_59__* @ctf_lookup_by_id(%struct.TYPE_62__**, i64) #1

declare dso_local i32 @ctf_errno(%struct.TYPE_62__*) #1

declare dso_local i8* @ctf_strptr(%struct.TYPE_62__*, i32) #1

declare dso_local i32 @LCTF_INFO_KIND(%struct.TYPE_62__*, i32) #1

declare dso_local i32 @LCTF_INFO_ROOT(%struct.TYPE_62__*, i32) #1

declare dso_local i32 @LCTF_INFO_VLEN(%struct.TYPE_62__*, i32) #1

declare dso_local %struct.TYPE_60__* @ctf_hash_lookup(i32*, %struct.TYPE_62__*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ctf_type_kind(%struct.TYPE_62__*, i64) #1

declare dso_local %struct.TYPE_64__* @ctf_list_prev(%struct.TYPE_64__*) #1

declare dso_local i64 @CTF_TYPE_TO_INDEX(i64) #1

declare dso_local i32 @CTF_INFO_KIND(i32) #1

declare dso_local i64 @strcmp(i32*, i8*) #1

declare dso_local i64 @ctf_type_encoding(%struct.TYPE_62__*, i64, %struct.TYPE_63__*) #1

declare dso_local i64 @bcmp(%struct.TYPE_63__*, %struct.TYPE_63__*, i32) #1

declare dso_local i64 @ctf_add_integer(%struct.TYPE_62__*, i32, i8*, %struct.TYPE_63__*) #1

declare dso_local i64 @ctf_add_float(%struct.TYPE_62__*, i32, i8*, %struct.TYPE_63__*) #1

declare dso_local i64 @ctf_type_reference(%struct.TYPE_62__*, i64) #1

declare dso_local i64 @ctf_add_reftype(%struct.TYPE_62__*, i32, i64, i32) #1

declare dso_local i64 @ctf_array_info(%struct.TYPE_62__*, i64, %struct.TYPE_63__*) #1

declare dso_local i64 @ctf_add_array(%struct.TYPE_62__*, i32, %struct.TYPE_63__*) #1

declare dso_local i64 @ctf_add_function(%struct.TYPE_62__*, i32, %struct.TYPE_61__*, i32*) #1

declare dso_local i32 @ctf_type_size(%struct.TYPE_62__*, i64) #1

declare dso_local i32 @ctf_member_iter(%struct.TYPE_62__*, i64, i32, %struct.TYPE_56__*) #1

declare dso_local i64 @ctf_add_generic(%struct.TYPE_62__*, i32, i8*, %struct.TYPE_64__**) #1

declare dso_local i32 @CTF_SIZE_TO_LSIZE_HI(i32) #1

declare dso_local i32 @CTF_SIZE_TO_LSIZE_LO(i32) #1

declare dso_local i32 @CTF_TYPE_INFO(i32, i32, i32) #1

declare dso_local %struct.TYPE_65__* @ctf_list_next(%struct.TYPE_65__*) #1

declare dso_local i32 @ctf_ref_inc(%struct.TYPE_62__*, i64) #1

declare dso_local i32 @ctf_enum_iter(%struct.TYPE_62__*, i64, i32, %struct.TYPE_56__*) #1

declare dso_local i64 @ctf_add_enum(%struct.TYPE_62__*, i32, i8*) #1

declare dso_local i64 @ctf_add_forward(%struct.TYPE_62__*, i32, i8*, i32) #1

declare dso_local i64 @ctf_add_typedef(%struct.TYPE_62__*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
