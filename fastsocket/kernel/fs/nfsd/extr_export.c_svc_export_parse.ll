; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_export.c_svc_export_parse.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_export.c_svc_export_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_detail = type { i32 }
%struct.auth_domain = type { i32 }
%struct.svc_export = type { i8*, i32, i32, i32, i32, i8*, %struct.TYPE_7__, i32, %struct.TYPE_5__, %struct.auth_domain* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"svc_export_parse: '%s'\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@CACHE_NEGATIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"fsloc\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"uuid\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"secinfo\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"svc_export_parse: err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache_detail*, i8*, i32)* @svc_export_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svc_export_parse(%struct.cache_detail* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cache_detail*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.auth_domain*, align 8
  %12 = alloca %struct.svc_export, align 8
  %13 = alloca %struct.svc_export*, align 8
  %14 = alloca i32, align 4
  store %struct.cache_detail* %0, %struct.cache_detail** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.auth_domain* null, %struct.auth_domain** %11, align 8
  %15 = bitcast %struct.svc_export* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 72, i1 false)
  %16 = load i8*, i8** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sub nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %16, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 10
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %256

27:                                               ; preds = %3
  %28 = load i8*, i8** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %28, i64 %31
  store i8 0, i8* %32, align 1
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %33)
  %35 = load i32, i32* @PAGE_SIZE, align 4
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call i8* @kmalloc(i32 %35, i32 %36)
  store i8* %37, i8** %8, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %27
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %256

43:                                               ; preds = %27
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %10, align 4
  %46 = load i8*, i8** %8, align 8
  %47 = load i32, i32* @PAGE_SIZE, align 4
  %48 = call i32 @qword_get(i8** %6, i8* %46, i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp sle i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  br label %246

52:                                               ; preds = %43
  %53 = load i32, i32* @ENOENT, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %10, align 4
  %55 = load i8*, i8** %8, align 8
  %56 = call %struct.auth_domain* @auth_domain_find(i8* %55)
  store %struct.auth_domain* %56, %struct.auth_domain** %11, align 8
  %57 = load %struct.auth_domain*, %struct.auth_domain** %11, align 8
  %58 = icmp ne %struct.auth_domain* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %52
  br label %246

60:                                               ; preds = %52
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %10, align 4
  %63 = load i8*, i8** %8, align 8
  %64 = load i32, i32* @PAGE_SIZE, align 4
  %65 = call i32 @qword_get(i8** %6, i8* %63, i32 %64)
  store i32 %65, i32* %9, align 4
  %66 = icmp sle i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  br label %243

68:                                               ; preds = %60
  %69 = load i8*, i8** %8, align 8
  %70 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %12, i32 0, i32 6
  %71 = call i32 @kern_path(i8* %69, i32 0, %struct.TYPE_7__* %70)
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  br label %243

75:                                               ; preds = %68
  %76 = load %struct.auth_domain*, %struct.auth_domain** %11, align 8
  %77 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %12, i32 0, i32 9
  store %struct.auth_domain* %76, %struct.auth_domain** %77, align 8
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %10, align 4
  %80 = load i8*, i8** %8, align 8
  %81 = load i32, i32* @GFP_KERNEL, align 4
  %82 = call i8* @kstrdup(i8* %80, i32 %81)
  %83 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %12, i32 0, i32 0
  store i8* %82, i8** %83, align 8
  %84 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %12, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %75
  br label %240

88:                                               ; preds = %75
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %10, align 4
  %91 = call i64 @get_expiry(i8** %6)
  %92 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %12, i32 0, i32 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  store i64 %91, i64* %93, align 8
  %94 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %12, i32 0, i32 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %88
  br label %236

99:                                               ; preds = %88
  %100 = call i32 @get_int(i8** %6, i32* %14)
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* @ENOENT, align 4
  %103 = sub nsw i32 0, %102
  %104 = icmp eq i32 %101, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %99
  store i32 0, i32* %10, align 4
  %106 = load i32, i32* @CACHE_NEGATIVE, align 4
  %107 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %12, i32 0, i32 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 1
  %109 = call i32 @set_bit(i32 %106, i32* %108)
  br label %209

110:                                              ; preds = %99
  %111 = load i32, i32* %10, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %110
  %114 = load i32, i32* %14, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %113, %110
  br label %236

117:                                              ; preds = %113
  %118 = load i32, i32* %14, align 4
  %119 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %12, i32 0, i32 1
  store i32 %118, i32* %119, align 8
  %120 = call i32 @get_int(i8** %6, i32* %14)
  store i32 %120, i32* %10, align 4
  %121 = load i32, i32* %10, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %117
  br label %236

124:                                              ; preds = %117
  %125 = load i32, i32* %14, align 4
  %126 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %12, i32 0, i32 2
  store i32 %125, i32* %126, align 4
  %127 = call i32 @get_int(i8** %6, i32* %14)
  store i32 %127, i32* %10, align 4
  %128 = load i32, i32* %10, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %124
  br label %236

131:                                              ; preds = %124
  %132 = load i32, i32* %14, align 4
  %133 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %12, i32 0, i32 3
  store i32 %132, i32* %133, align 8
  %134 = call i32 @get_int(i8** %6, i32* %14)
  store i32 %134, i32* %10, align 4
  %135 = load i32, i32* %10, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %131
  br label %236

138:                                              ; preds = %131
  %139 = load i32, i32* %14, align 4
  %140 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %12, i32 0, i32 4
  store i32 %139, i32* %140, align 4
  br label %141

141:                                              ; preds = %194, %138
  %142 = load i8*, i8** %8, align 8
  %143 = load i32, i32* @PAGE_SIZE, align 4
  %144 = call i32 @qword_get(i8** %6, i8* %142, i32 %143)
  store i32 %144, i32* %9, align 4
  %145 = icmp sgt i32 %144, 0
  br i1 %145, label %146, label %195

146:                                              ; preds = %141
  %147 = load i8*, i8** %8, align 8
  %148 = call i64 @strcmp(i8* %147, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %146
  %151 = load i8*, i8** %8, align 8
  %152 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %12, i32 0, i32 7
  %153 = call i32 @fsloc_parse(i8** %6, i8* %151, i32* %152)
  store i32 %153, i32* %10, align 4
  br label %190

154:                                              ; preds = %146
  %155 = load i8*, i8** %8, align 8
  %156 = call i64 @strcmp(i8* %155, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %158, label %180

158:                                              ; preds = %154
  %159 = load i8*, i8** %8, align 8
  %160 = load i32, i32* @PAGE_SIZE, align 4
  %161 = call i32 @qword_get(i8** %6, i8* %159, i32 %160)
  store i32 %161, i32* %9, align 4
  %162 = load i32, i32* %9, align 4
  %163 = icmp ne i32 %162, 16
  br i1 %163, label %164, label %167

164:                                              ; preds = %158
  %165 = load i32, i32* @EINVAL, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %10, align 4
  br label %179

167:                                              ; preds = %158
  %168 = load i8*, i8** %8, align 8
  %169 = load i32, i32* @GFP_KERNEL, align 4
  %170 = call i8* @kmemdup(i8* %168, i32 16, i32 %169)
  %171 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %12, i32 0, i32 5
  store i8* %170, i8** %171, align 8
  %172 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %12, i32 0, i32 5
  %173 = load i8*, i8** %172, align 8
  %174 = icmp eq i8* %173, null
  br i1 %174, label %175, label %178

175:                                              ; preds = %167
  %176 = load i32, i32* @ENOMEM, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %10, align 4
  br label %178

178:                                              ; preds = %175, %167
  br label %179

179:                                              ; preds = %178, %164
  br label %189

180:                                              ; preds = %154
  %181 = load i8*, i8** %8, align 8
  %182 = call i64 @strcmp(i8* %181, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %183 = icmp eq i64 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %180
  %185 = load i8*, i8** %8, align 8
  %186 = call i32 @secinfo_parse(i8** %6, i8* %185, %struct.svc_export* %12)
  store i32 %186, i32* %10, align 4
  br label %188

187:                                              ; preds = %180
  br label %195

188:                                              ; preds = %184
  br label %189

189:                                              ; preds = %188, %179
  br label %190

190:                                              ; preds = %189, %150
  %191 = load i32, i32* %10, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %190
  br label %230

194:                                              ; preds = %190
  br label %141

195:                                              ; preds = %187, %141
  %196 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %12, i32 0, i32 6
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 0
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %12, i32 0, i32 1
  %202 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %12, i32 0, i32 5
  %203 = load i8*, i8** %202, align 8
  %204 = call i32 @check_export(i32 %200, i32* %201, i8* %203)
  store i32 %204, i32* %10, align 4
  %205 = load i32, i32* %10, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %195
  br label %230

208:                                              ; preds = %195
  br label %209

209:                                              ; preds = %208, %105
  %210 = call %struct.svc_export* @svc_export_lookup(%struct.svc_export* %12)
  store %struct.svc_export* %210, %struct.svc_export** %13, align 8
  %211 = load %struct.svc_export*, %struct.svc_export** %13, align 8
  %212 = icmp ne %struct.svc_export* %211, null
  br i1 %212, label %213, label %216

213:                                              ; preds = %209
  %214 = load %struct.svc_export*, %struct.svc_export** %13, align 8
  %215 = call %struct.svc_export* @svc_export_update(%struct.svc_export* %12, %struct.svc_export* %214)
  store %struct.svc_export* %215, %struct.svc_export** %13, align 8
  br label %219

216:                                              ; preds = %209
  %217 = load i32, i32* @ENOMEM, align 4
  %218 = sub nsw i32 0, %217
  store i32 %218, i32* %10, align 4
  br label %219

219:                                              ; preds = %216, %213
  %220 = call i32 (...) @cache_flush()
  %221 = load %struct.svc_export*, %struct.svc_export** %13, align 8
  %222 = icmp eq %struct.svc_export* %221, null
  br i1 %222, label %223, label %226

223:                                              ; preds = %219
  %224 = load i32, i32* @ENOMEM, align 4
  %225 = sub nsw i32 0, %224
  store i32 %225, i32* %10, align 4
  br label %229

226:                                              ; preds = %219
  %227 = load %struct.svc_export*, %struct.svc_export** %13, align 8
  %228 = call i32 @exp_put(%struct.svc_export* %227)
  br label %229

229:                                              ; preds = %226, %223
  br label %230

230:                                              ; preds = %229, %207, %193
  %231 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %12, i32 0, i32 7
  %232 = call i32 @nfsd4_fslocs_free(i32* %231)
  %233 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %12, i32 0, i32 5
  %234 = load i8*, i8** %233, align 8
  %235 = call i32 @kfree(i8* %234)
  br label %236

236:                                              ; preds = %230, %137, %130, %123, %116, %98
  %237 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %12, i32 0, i32 0
  %238 = load i8*, i8** %237, align 8
  %239 = call i32 @kfree(i8* %238)
  br label %240

240:                                              ; preds = %236, %87
  %241 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %12, i32 0, i32 6
  %242 = call i32 @path_put(%struct.TYPE_7__* %241)
  br label %243

243:                                              ; preds = %240, %74, %67
  %244 = load %struct.auth_domain*, %struct.auth_domain** %11, align 8
  %245 = call i32 @auth_domain_put(%struct.auth_domain* %244)
  br label %246

246:                                              ; preds = %243, %59, %51
  %247 = load i8*, i8** %8, align 8
  %248 = call i32 @kfree(i8* %247)
  %249 = load i32, i32* %10, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %254

251:                                              ; preds = %246
  %252 = load i32, i32* %10, align 4
  %253 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %252)
  br label %254

254:                                              ; preds = %251, %246
  %255 = load i32, i32* %10, align 4
  store i32 %255, i32* %4, align 4
  br label %256

256:                                              ; preds = %254, %40, %24
  %257 = load i32, i32* %4, align 4
  ret i32 %257
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dprintk(i8*, ...) #2

declare dso_local i8* @kmalloc(i32, i32) #2

declare dso_local i32 @qword_get(i8**, i8*, i32) #2

declare dso_local %struct.auth_domain* @auth_domain_find(i8*) #2

declare dso_local i32 @kern_path(i8*, i32, %struct.TYPE_7__*) #2

declare dso_local i8* @kstrdup(i8*, i32) #2

declare dso_local i64 @get_expiry(i8**) #2

declare dso_local i32 @get_int(i8**, i32*) #2

declare dso_local i32 @set_bit(i32, i32*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @fsloc_parse(i8**, i8*, i32*) #2

declare dso_local i8* @kmemdup(i8*, i32, i32) #2

declare dso_local i32 @secinfo_parse(i8**, i8*, %struct.svc_export*) #2

declare dso_local i32 @check_export(i32, i32*, i8*) #2

declare dso_local %struct.svc_export* @svc_export_lookup(%struct.svc_export*) #2

declare dso_local %struct.svc_export* @svc_export_update(%struct.svc_export*, %struct.svc_export*) #2

declare dso_local i32 @cache_flush(...) #2

declare dso_local i32 @exp_put(%struct.svc_export*) #2

declare dso_local i32 @nfsd4_fslocs_free(i32*) #2

declare dso_local i32 @kfree(i8*) #2

declare dso_local i32 @path_put(%struct.TYPE_7__*) #2

declare dso_local i32 @auth_domain_put(%struct.auth_domain*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
