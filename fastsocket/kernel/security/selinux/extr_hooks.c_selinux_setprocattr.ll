; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_setprocattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_setprocattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.task_security_struct = type { i64, i64, i64, i64, i64 }
%struct.cred = type { %struct.task_security_struct* }

@current = common dso_local global %struct.task_struct* null, align 8
@EACCES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"exec\00", align 1
@PROCESS__SETEXEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"fscreate\00", align 1
@PROCESS__SETFSCREATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"keycreate\00", align 1
@PROCESS__SETKEYCREATE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"sockcreate\00", align 1
@PROCESS__SETSOCKCREATE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"current\00", align 1
@PROCESS__SETCURRENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CAP_MAC_ADMIN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@SECCLASS_PROCESS = common dso_local global i32 0, align 4
@PROCESS__DYNTRANSITION = common dso_local global i32 0, align 4
@PROCESS__PTRACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, i8*, i8*, i64)* @selinux_setprocattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_setprocattr(%struct.task_struct* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.task_security_struct*, align 8
  %11 = alloca %struct.task_struct*, align 8
  %12 = alloca %struct.cred*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 0, i64* %13, align 8
  %17 = load i8*, i8** %8, align 8
  store i8* %17, i8** %16, align 8
  %18 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %19 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %20 = icmp ne %struct.task_struct* %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @EACCES, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %264

24:                                               ; preds = %4
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @strcmp(i8* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %30 = load i32, i32* @PROCESS__SETEXEC, align 4
  %31 = call i32 @current_has_perm(%struct.task_struct* %29, i32 %30)
  store i32 %31, i32* %15, align 4
  br label %71

32:                                               ; preds = %24
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 @strcmp(i8* %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %38 = load i32, i32* @PROCESS__SETFSCREATE, align 4
  %39 = call i32 @current_has_perm(%struct.task_struct* %37, i32 %38)
  store i32 %39, i32* %15, align 4
  br label %70

40:                                               ; preds = %32
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 @strcmp(i8* %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %46 = load i32, i32* @PROCESS__SETKEYCREATE, align 4
  %47 = call i32 @current_has_perm(%struct.task_struct* %45, i32 %46)
  store i32 %47, i32* %15, align 4
  br label %69

48:                                               ; preds = %40
  %49 = load i8*, i8** %7, align 8
  %50 = call i32 @strcmp(i8* %49, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %54 = load i32, i32* @PROCESS__SETSOCKCREATE, align 4
  %55 = call i32 @current_has_perm(%struct.task_struct* %53, i32 %54)
  store i32 %55, i32* %15, align 4
  br label %68

56:                                               ; preds = %48
  %57 = load i8*, i8** %7, align 8
  %58 = call i32 @strcmp(i8* %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %62 = load i32, i32* @PROCESS__SETCURRENT, align 4
  %63 = call i32 @current_has_perm(%struct.task_struct* %61, i32 %62)
  store i32 %63, i32* %15, align 4
  br label %67

64:                                               ; preds = %56
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %15, align 4
  br label %67

67:                                               ; preds = %64, %60
  br label %68

68:                                               ; preds = %67, %52
  br label %69

69:                                               ; preds = %68, %44
  br label %70

70:                                               ; preds = %69, %36
  br label %71

71:                                               ; preds = %70, %28
  %72 = load i32, i32* %15, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = load i32, i32* %15, align 4
  store i32 %75, i32* %5, align 4
  br label %264

76:                                               ; preds = %71
  %77 = load i64, i64* %9, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %134

79:                                               ; preds = %76
  %80 = load i8*, i8** %16, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 1
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %134

85:                                               ; preds = %79
  %86 = load i8*, i8** %16, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 1
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp ne i32 %89, 10
  br i1 %90, label %91, label %134

91:                                               ; preds = %85
  %92 = load i8*, i8** %16, align 8
  %93 = load i64, i64* %9, align 8
  %94 = sub i64 %93, 1
  %95 = getelementptr inbounds i8, i8* %92, i64 %94
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 10
  br i1 %98, label %99, label %106

99:                                               ; preds = %91
  %100 = load i8*, i8** %16, align 8
  %101 = load i64, i64* %9, align 8
  %102 = sub i64 %101, 1
  %103 = getelementptr inbounds i8, i8* %100, i64 %102
  store i8 0, i8* %103, align 1
  %104 = load i64, i64* %9, align 8
  %105 = add i64 %104, -1
  store i64 %105, i64* %9, align 8
  br label %106

106:                                              ; preds = %99, %91
  %107 = load i8*, i8** %8, align 8
  %108 = load i64, i64* %9, align 8
  %109 = call i32 @security_context_to_sid(i8* %107, i64 %108, i64* %13)
  store i32 %109, i32* %15, align 4
  %110 = load i32, i32* %15, align 4
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  %113 = icmp eq i32 %110, %112
  br i1 %113, label %114, label %128

114:                                              ; preds = %106
  %115 = load i8*, i8** %7, align 8
  %116 = call i32 @strcmp(i8* %115, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %128, label %118

118:                                              ; preds = %114
  %119 = load i32, i32* @CAP_MAC_ADMIN, align 4
  %120 = call i32 @capable(i32 %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %124, label %122

122:                                              ; preds = %118
  %123 = load i32, i32* %15, align 4
  store i32 %123, i32* %5, align 4
  br label %264

124:                                              ; preds = %118
  %125 = load i8*, i8** %8, align 8
  %126 = load i64, i64* %9, align 8
  %127 = call i32 @security_context_to_sid_force(i8* %125, i64 %126, i64* %13)
  store i32 %127, i32* %15, align 4
  br label %128

128:                                              ; preds = %124, %114, %106
  %129 = load i32, i32* %15, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %128
  %132 = load i32, i32* %15, align 4
  store i32 %132, i32* %5, align 4
  br label %264

133:                                              ; preds = %128
  br label %134

134:                                              ; preds = %133, %85, %79, %76
  %135 = call %struct.cred* (...) @prepare_creds()
  store %struct.cred* %135, %struct.cred** %12, align 8
  %136 = load %struct.cred*, %struct.cred** %12, align 8
  %137 = icmp ne %struct.cred* %136, null
  br i1 %137, label %141, label %138

138:                                              ; preds = %134
  %139 = load i32, i32* @ENOMEM, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %5, align 4
  br label %264

141:                                              ; preds = %134
  %142 = load %struct.cred*, %struct.cred** %12, align 8
  %143 = getelementptr inbounds %struct.cred, %struct.cred* %142, i32 0, i32 0
  %144 = load %struct.task_security_struct*, %struct.task_security_struct** %143, align 8
  store %struct.task_security_struct* %144, %struct.task_security_struct** %10, align 8
  %145 = load i8*, i8** %7, align 8
  %146 = call i32 @strcmp(i8* %145, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %152, label %148

148:                                              ; preds = %141
  %149 = load i64, i64* %13, align 8
  %150 = load %struct.task_security_struct*, %struct.task_security_struct** %10, align 8
  %151 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %150, i32 0, i32 4
  store i64 %149, i64* %151, align 8
  br label %255

152:                                              ; preds = %141
  %153 = load i8*, i8** %7, align 8
  %154 = call i32 @strcmp(i8* %153, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %160, label %156

156:                                              ; preds = %152
  %157 = load i64, i64* %13, align 8
  %158 = load %struct.task_security_struct*, %struct.task_security_struct** %10, align 8
  %159 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %158, i32 0, i32 3
  store i64 %157, i64* %159, align 8
  br label %254

160:                                              ; preds = %152
  %161 = load i8*, i8** %7, align 8
  %162 = call i32 @strcmp(i8* %161, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %175, label %164

164:                                              ; preds = %160
  %165 = load i64, i64* %13, align 8
  %166 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %167 = call i32 @may_create_key(i64 %165, %struct.task_struct* %166)
  store i32 %167, i32* %15, align 4
  %168 = load i32, i32* %15, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %164
  br label %260

171:                                              ; preds = %164
  %172 = load i64, i64* %13, align 8
  %173 = load %struct.task_security_struct*, %struct.task_security_struct** %10, align 8
  %174 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %173, i32 0, i32 2
  store i64 %172, i64* %174, align 8
  br label %253

175:                                              ; preds = %160
  %176 = load i8*, i8** %7, align 8
  %177 = call i32 @strcmp(i8* %176, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %183, label %179

179:                                              ; preds = %175
  %180 = load i64, i64* %13, align 8
  %181 = load %struct.task_security_struct*, %struct.task_security_struct** %10, align 8
  %182 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %181, i32 0, i32 1
  store i64 %180, i64* %182, align 8
  br label %252

183:                                              ; preds = %175
  %184 = load i8*, i8** %7, align 8
  %185 = call i32 @strcmp(i8* %184, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %248, label %187

187:                                              ; preds = %183
  %188 = load i32, i32* @EINVAL, align 4
  %189 = sub nsw i32 0, %188
  store i32 %189, i32* %15, align 4
  %190 = load i64, i64* %13, align 8
  %191 = icmp eq i64 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %187
  br label %260

193:                                              ; preds = %187
  %194 = load i32, i32* @EPERM, align 4
  %195 = sub nsw i32 0, %194
  store i32 %195, i32* %15, align 4
  %196 = call i32 (...) @current_is_single_threaded()
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %208, label %198

198:                                              ; preds = %193
  %199 = load %struct.task_security_struct*, %struct.task_security_struct** %10, align 8
  %200 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* %13, align 8
  %203 = call i32 @security_bounded_transition(i64 %201, i64 %202)
  store i32 %203, i32* %15, align 4
  %204 = load i32, i32* %15, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %198
  br label %260

207:                                              ; preds = %198
  br label %208

208:                                              ; preds = %207, %193
  %209 = load %struct.task_security_struct*, %struct.task_security_struct** %10, align 8
  %210 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* %13, align 8
  %213 = load i32, i32* @SECCLASS_PROCESS, align 4
  %214 = load i32, i32* @PROCESS__DYNTRANSITION, align 4
  %215 = call i32 @avc_has_perm(i64 %211, i64 %212, i32 %213, i32 %214, i32* null)
  store i32 %215, i32* %15, align 4
  %216 = load i32, i32* %15, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %208
  br label %260

219:                                              ; preds = %208
  store i64 0, i64* %14, align 8
  %220 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %221 = call i32 @task_lock(%struct.task_struct* %220)
  %222 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %223 = call %struct.task_struct* @tracehook_tracer_task(%struct.task_struct* %222)
  store %struct.task_struct* %223, %struct.task_struct** %11, align 8
  %224 = load %struct.task_struct*, %struct.task_struct** %11, align 8
  %225 = icmp ne %struct.task_struct* %224, null
  br i1 %225, label %226, label %229

226:                                              ; preds = %219
  %227 = load %struct.task_struct*, %struct.task_struct** %11, align 8
  %228 = call i64 @task_sid(%struct.task_struct* %227)
  store i64 %228, i64* %14, align 8
  br label %229

229:                                              ; preds = %226, %219
  %230 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %231 = call i32 @task_unlock(%struct.task_struct* %230)
  %232 = load %struct.task_struct*, %struct.task_struct** %11, align 8
  %233 = icmp ne %struct.task_struct* %232, null
  br i1 %233, label %234, label %244

234:                                              ; preds = %229
  %235 = load i64, i64* %14, align 8
  %236 = load i64, i64* %13, align 8
  %237 = load i32, i32* @SECCLASS_PROCESS, align 4
  %238 = load i32, i32* @PROCESS__PTRACE, align 4
  %239 = call i32 @avc_has_perm(i64 %235, i64 %236, i32 %237, i32 %238, i32* null)
  store i32 %239, i32* %15, align 4
  %240 = load i32, i32* %15, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %243

242:                                              ; preds = %234
  br label %260

243:                                              ; preds = %234
  br label %244

244:                                              ; preds = %243, %229
  %245 = load i64, i64* %13, align 8
  %246 = load %struct.task_security_struct*, %struct.task_security_struct** %10, align 8
  %247 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %246, i32 0, i32 0
  store i64 %245, i64* %247, align 8
  br label %251

248:                                              ; preds = %183
  %249 = load i32, i32* @EINVAL, align 4
  %250 = sub nsw i32 0, %249
  store i32 %250, i32* %15, align 4
  br label %260

251:                                              ; preds = %244
  br label %252

252:                                              ; preds = %251, %179
  br label %253

253:                                              ; preds = %252, %171
  br label %254

254:                                              ; preds = %253, %156
  br label %255

255:                                              ; preds = %254, %148
  %256 = load %struct.cred*, %struct.cred** %12, align 8
  %257 = call i32 @commit_creds(%struct.cred* %256)
  %258 = load i64, i64* %9, align 8
  %259 = trunc i64 %258 to i32
  store i32 %259, i32* %5, align 4
  br label %264

260:                                              ; preds = %248, %242, %218, %206, %192, %170
  %261 = load %struct.cred*, %struct.cred** %12, align 8
  %262 = call i32 @abort_creds(%struct.cred* %261)
  %263 = load i32, i32* %15, align 4
  store i32 %263, i32* %5, align 4
  br label %264

264:                                              ; preds = %260, %255, %138, %131, %122, %74, %21
  %265 = load i32, i32* %5, align 4
  ret i32 %265
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @current_has_perm(%struct.task_struct*, i32) #1

declare dso_local i32 @security_context_to_sid(i8*, i64, i64*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @security_context_to_sid_force(i8*, i64, i64*) #1

declare dso_local %struct.cred* @prepare_creds(...) #1

declare dso_local i32 @may_create_key(i64, %struct.task_struct*) #1

declare dso_local i32 @current_is_single_threaded(...) #1

declare dso_local i32 @security_bounded_transition(i64, i64) #1

declare dso_local i32 @avc_has_perm(i64, i64, i32, i32, i32*) #1

declare dso_local i32 @task_lock(%struct.task_struct*) #1

declare dso_local %struct.task_struct* @tracehook_tracer_task(%struct.task_struct*) #1

declare dso_local i64 @task_sid(%struct.task_struct*) #1

declare dso_local i32 @task_unlock(%struct.task_struct*) #1

declare dso_local i32 @commit_creds(%struct.cred*) #1

declare dso_local i32 @abort_creds(%struct.cred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
