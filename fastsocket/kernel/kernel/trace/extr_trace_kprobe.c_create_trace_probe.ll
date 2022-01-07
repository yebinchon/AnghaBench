; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_kprobe.c_create_trace_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_kprobe.c_create_trace_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_probe = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@MAX_EVENT_NAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Probe definition must be started with 'p', 'r' or '-'.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Group name is not specified\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Event name is not specified\0A\00", align 1
@KPROBE_EVENT_SYSTEM = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [37 x i8] c"Delete command needs an event name.\0A\00", align 1
@probe_lock = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"Event %s/%s doesn't exist.\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"Probe point is not specified.\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"Return probe point must be a symbol.\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Failed to parse address.\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"Failed to parse symbol.\0A\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"Return probe must be used without offset.\0A\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"%c_%s_%ld\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"%c_0x%p\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"Failed to allocate trace_probe.(%d)\0A\00", align 1
@MAX_TRACE_ARGS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [6 x i8] c"arg%d\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"Failed to allocate argument[%d] name.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [31 x i8] c"Invalid argument[%d] name: %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [54 x i8] c"Argument[%d] name '%s' conflicts with another field.\0A\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"Parse error at argument[%d]. (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @create_trace_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_trace_probe(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.trace_probe*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i64 0, i64* %15, align 8
  store i8* null, i8** %16, align 8
  %20 = load i32, i32* @MAX_EVENT_NAME_LEN, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %17, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %18, align 8
  %24 = load i8**, i8*** %5, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 0
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 112
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %56

32:                                               ; preds = %2
  %33 = load i8**, i8*** %5, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 0
  %35 = load i8*, i8** %34, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 114
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  store i32 1, i32* %9, align 4
  br label %55

41:                                               ; preds = %32
  %42 = load i8**, i8*** %5, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 0
  %44 = load i8*, i8** %43, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 0
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 45
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  store i32 1, i32* %10, align 4
  br label %54

50:                                               ; preds = %41
  %51 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %397

54:                                               ; preds = %49
  br label %55

55:                                               ; preds = %54, %40
  br label %56

56:                                               ; preds = %55, %31
  %57 = load i8**, i8*** %5, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 0
  %59 = load i8*, i8** %58, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 1
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 58
  br i1 %63, label %64, label %96

64:                                               ; preds = %56
  %65 = load i8**, i8*** %5, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 0
  %67 = load i8*, i8** %66, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 2
  store i8* %68, i8** %12, align 8
  %69 = load i8*, i8** %12, align 8
  %70 = call i8* @strchr(i8* %69, i8 signext 47)
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %87

72:                                               ; preds = %64
  %73 = load i8*, i8** %12, align 8
  store i8* %73, i8** %13, align 8
  %74 = load i8*, i8** %13, align 8
  %75 = call i8* @strchr(i8* %74, i8 signext 47)
  %76 = getelementptr inbounds i8, i8* %75, i64 1
  store i8* %76, i8** %12, align 8
  %77 = load i8*, i8** %12, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 -1
  store i8 0, i8* %78, align 1
  %79 = load i8*, i8** %13, align 8
  %80 = call i64 @strlen(i8* %79)
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %72
  %83 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %397

86:                                               ; preds = %72
  br label %87

87:                                               ; preds = %86, %64
  %88 = load i8*, i8** %12, align 8
  %89 = call i64 @strlen(i8* %88)
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %397

95:                                               ; preds = %87
  br label %96

96:                                               ; preds = %95, %56
  %97 = load i8*, i8** %13, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %101, label %99

99:                                               ; preds = %96
  %100 = load i8*, i8** @KPROBE_EVENT_SYSTEM, align 8
  store i8* %100, i8** %13, align 8
  br label %101

101:                                              ; preds = %99, %96
  %102 = load i32, i32* %10, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %136

104:                                              ; preds = %101
  %105 = load i8*, i8** %12, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %111, label %107

107:                                              ; preds = %104
  %108 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %397

111:                                              ; preds = %104
  %112 = call i32 @mutex_lock(i32* @probe_lock)
  %113 = load i8*, i8** %12, align 8
  %114 = load i8*, i8** %13, align 8
  %115 = call %struct.trace_probe* @find_trace_probe(i8* %113, i8* %114)
  store %struct.trace_probe* %115, %struct.trace_probe** %6, align 8
  %116 = load %struct.trace_probe*, %struct.trace_probe** %6, align 8
  %117 = icmp ne %struct.trace_probe* %116, null
  br i1 %117, label %125, label %118

118:                                              ; preds = %111
  %119 = call i32 @mutex_unlock(i32* @probe_lock)
  %120 = load i8*, i8** %13, align 8
  %121 = load i8*, i8** %12, align 8
  %122 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8* %120, i8* %121)
  %123 = load i32, i32* @ENOENT, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %397

125:                                              ; preds = %111
  %126 = load %struct.trace_probe*, %struct.trace_probe** %6, align 8
  %127 = call i32 @unregister_trace_probe(%struct.trace_probe* %126)
  store i32 %127, i32* %8, align 4
  %128 = load i32, i32* %8, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %125
  %131 = load %struct.trace_probe*, %struct.trace_probe** %6, align 8
  %132 = call i32 @free_trace_probe(%struct.trace_probe* %131)
  br label %133

133:                                              ; preds = %130, %125
  %134 = call i32 @mutex_unlock(i32* @probe_lock)
  %135 = load i32, i32* %8, align 4
  store i32 %135, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %397

136:                                              ; preds = %101
  %137 = load i32, i32* %4, align 4
  %138 = icmp slt i32 %137, 2
  br i1 %138, label %139, label %143

139:                                              ; preds = %136
  %140 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %141 = load i32, i32* @EINVAL, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %397

143:                                              ; preds = %136
  %144 = load i8**, i8*** %5, align 8
  %145 = getelementptr inbounds i8*, i8** %144, i64 1
  %146 = load i8*, i8** %145, align 8
  %147 = getelementptr inbounds i8, i8* %146, i64 0
  %148 = load i8, i8* %147, align 1
  %149 = call i64 @isdigit(i8 signext %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %171

151:                                              ; preds = %143
  %152 = load i32, i32* %9, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %151
  %155 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  %156 = load i32, i32* @EINVAL, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %397

158:                                              ; preds = %151
  %159 = load i8**, i8*** %5, align 8
  %160 = getelementptr inbounds i8*, i8** %159, i64 1
  %161 = load i8*, i8** %160, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 0
  %163 = bitcast i8** %16 to i64*
  %164 = call i32 @strict_strtoul(i8* %162, i32 0, i64* %163)
  store i32 %164, i32* %8, align 4
  %165 = load i32, i32* %8, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %158
  %168 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %169 = load i32, i32* %8, align 4
  store i32 %169, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %397

170:                                              ; preds = %158
  br label %193

171:                                              ; preds = %143
  %172 = load i8**, i8*** %5, align 8
  %173 = getelementptr inbounds i8*, i8** %172, i64 1
  %174 = load i8*, i8** %173, align 8
  store i8* %174, i8** %11, align 8
  %175 = load i8*, i8** %11, align 8
  %176 = call i32 @split_symbol_offset(i8* %175, i64* %15)
  store i32 %176, i32* %8, align 4
  %177 = load i32, i32* %8, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %171
  %180 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  %181 = load i32, i32* %8, align 4
  store i32 %181, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %397

182:                                              ; preds = %171
  %183 = load i64, i64* %15, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %192

185:                                              ; preds = %182
  %186 = load i32, i32* %9, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %185
  %189 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0))
  %190 = load i32, i32* @EINVAL, align 4
  %191 = sub nsw i32 0, %190
  store i32 %191, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %397

192:                                              ; preds = %185, %182
  br label %193

193:                                              ; preds = %192, %170
  %194 = load i32, i32* %4, align 4
  %195 = sub nsw i32 %194, 2
  store i32 %195, i32* %4, align 4
  %196 = load i8**, i8*** %5, align 8
  %197 = getelementptr inbounds i8*, i8** %196, i64 2
  store i8** %197, i8*** %5, align 8
  %198 = load i8*, i8** %12, align 8
  %199 = icmp ne i8* %198, null
  br i1 %199, label %221, label %200

200:                                              ; preds = %193
  %201 = load i8*, i8** %11, align 8
  %202 = icmp ne i8* %201, null
  br i1 %202, label %203, label %212

203:                                              ; preds = %200
  %204 = load i32, i32* @MAX_EVENT_NAME_LEN, align 4
  %205 = load i32, i32* %9, align 4
  %206 = icmp ne i32 %205, 0
  %207 = zext i1 %206 to i64
  %208 = select i1 %206, i32 114, i32 112
  %209 = load i8*, i8** %11, align 8
  %210 = load i64, i64* %15, align 8
  %211 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %23, i32 %204, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32 %208, i8* %209, i64 %210)
  br label %220

212:                                              ; preds = %200
  %213 = load i32, i32* @MAX_EVENT_NAME_LEN, align 4
  %214 = load i32, i32* %9, align 4
  %215 = icmp ne i32 %214, 0
  %216 = zext i1 %215 to i64
  %217 = select i1 %215, i32 114, i32 112
  %218 = load i8*, i8** %16, align 8
  %219 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %23, i32 %213, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 %217, i8* %218)
  br label %220

220:                                              ; preds = %212, %203
  store i8* %23, i8** %12, align 8
  br label %221

221:                                              ; preds = %220, %193
  %222 = load i8*, i8** %13, align 8
  %223 = load i8*, i8** %12, align 8
  %224 = load i8*, i8** %16, align 8
  %225 = load i8*, i8** %11, align 8
  %226 = load i64, i64* %15, align 8
  %227 = load i32, i32* %4, align 4
  %228 = load i32, i32* %9, align 4
  %229 = call %struct.trace_probe* @alloc_trace_probe(i8* %222, i8* %223, i8* %224, i8* %225, i64 %226, i32 %227, i32 %228)
  store %struct.trace_probe* %229, %struct.trace_probe** %6, align 8
  %230 = load %struct.trace_probe*, %struct.trace_probe** %6, align 8
  %231 = call i64 @IS_ERR(%struct.trace_probe* %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %239

233:                                              ; preds = %221
  %234 = load %struct.trace_probe*, %struct.trace_probe** %6, align 8
  %235 = call i32 @PTR_ERR(%struct.trace_probe* %234)
  %236 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0), i32 %235)
  %237 = load %struct.trace_probe*, %struct.trace_probe** %6, align 8
  %238 = call i32 @PTR_ERR(%struct.trace_probe* %237)
  store i32 %238, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %397

239:                                              ; preds = %221
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %240

240:                                              ; preds = %383, %239
  %241 = load i32, i32* %7, align 4
  %242 = load i32, i32* %4, align 4
  %243 = icmp slt i32 %241, %242
  br i1 %243, label %244, label %248

244:                                              ; preds = %240
  %245 = load i32, i32* %7, align 4
  %246 = load i32, i32* @MAX_TRACE_ARGS, align 4
  %247 = icmp slt i32 %245, %246
  br label %248

248:                                              ; preds = %244, %240
  %249 = phi i1 [ false, %240 ], [ %247, %244 ]
  br i1 %249, label %250, label %386

250:                                              ; preds = %248
  %251 = load %struct.trace_probe*, %struct.trace_probe** %6, align 8
  %252 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 8
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %252, align 8
  %255 = load i8**, i8*** %5, align 8
  %256 = load i32, i32* %7, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i8*, i8** %255, i64 %257
  %259 = load i8*, i8** %258, align 8
  %260 = call i8* @strchr(i8* %259, i8 signext 61)
  store i8* %260, i8** %14, align 8
  %261 = load i8*, i8** %14, align 8
  %262 = icmp ne i8* %261, null
  br i1 %262, label %263, label %281

263:                                              ; preds = %250
  %264 = load i8*, i8** %14, align 8
  %265 = getelementptr inbounds i8, i8* %264, i32 1
  store i8* %265, i8** %14, align 8
  store i8 0, i8* %264, align 1
  %266 = load i8**, i8*** %5, align 8
  %267 = load i32, i32* %7, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i8*, i8** %266, i64 %268
  %270 = load i8*, i8** %269, align 8
  %271 = load i32, i32* @GFP_KERNEL, align 4
  %272 = call i8* @kstrdup(i8* %270, i32 %271)
  %273 = ptrtoint i8* %272 to i32
  %274 = load %struct.trace_probe*, %struct.trace_probe** %6, align 8
  %275 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %274, i32 0, i32 0
  %276 = load %struct.TYPE_3__*, %struct.TYPE_3__** %275, align 8
  %277 = load i32, i32* %7, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %276, i64 %278
  %280 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %279, i32 0, i32 0
  store i32 %273, i32* %280, align 4
  br label %301

281:                                              ; preds = %250
  %282 = load i8**, i8*** %5, align 8
  %283 = load i32, i32* %7, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i8*, i8** %282, i64 %284
  %286 = load i8*, i8** %285, align 8
  store i8* %286, i8** %14, align 8
  %287 = load i32, i32* @MAX_EVENT_NAME_LEN, align 4
  %288 = load i32, i32* %7, align 4
  %289 = add nsw i32 %288, 1
  %290 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %23, i32 %287, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i32 %289)
  %291 = load i32, i32* @GFP_KERNEL, align 4
  %292 = call i8* @kstrdup(i8* %23, i32 %291)
  %293 = ptrtoint i8* %292 to i32
  %294 = load %struct.trace_probe*, %struct.trace_probe** %6, align 8
  %295 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %294, i32 0, i32 0
  %296 = load %struct.TYPE_3__*, %struct.TYPE_3__** %295, align 8
  %297 = load i32, i32* %7, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %296, i64 %298
  %300 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %299, i32 0, i32 0
  store i32 %293, i32* %300, align 4
  br label %301

301:                                              ; preds = %281, %263
  %302 = load %struct.trace_probe*, %struct.trace_probe** %6, align 8
  %303 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %302, i32 0, i32 0
  %304 = load %struct.TYPE_3__*, %struct.TYPE_3__** %303, align 8
  %305 = load i32, i32* %7, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %304, i64 %306
  %308 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %316, label %311

311:                                              ; preds = %301
  %312 = load i32, i32* %7, align 4
  %313 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i64 0, i64 0), i32 %312)
  %314 = load i32, i32* @ENOMEM, align 4
  %315 = sub nsw i32 0, %314
  store i32 %315, i32* %8, align 4
  br label %393

316:                                              ; preds = %301
  %317 = load %struct.trace_probe*, %struct.trace_probe** %6, align 8
  %318 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %317, i32 0, i32 0
  %319 = load %struct.TYPE_3__*, %struct.TYPE_3__** %318, align 8
  %320 = load i32, i32* %7, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %319, i64 %321
  %323 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 4
  %325 = call i32 @is_good_name(i32 %324)
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %340, label %327

327:                                              ; preds = %316
  %328 = load i32, i32* %7, align 4
  %329 = load %struct.trace_probe*, %struct.trace_probe** %6, align 8
  %330 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %329, i32 0, i32 0
  %331 = load %struct.TYPE_3__*, %struct.TYPE_3__** %330, align 8
  %332 = load i32, i32* %7, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %331, i64 %333
  %335 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 4
  %337 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i64 0, i64 0), i32 %328, i32 %336)
  %338 = load i32, i32* @EINVAL, align 4
  %339 = sub nsw i32 0, %338
  store i32 %339, i32* %8, align 4
  br label %393

340:                                              ; preds = %316
  %341 = load %struct.trace_probe*, %struct.trace_probe** %6, align 8
  %342 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %341, i32 0, i32 0
  %343 = load %struct.TYPE_3__*, %struct.TYPE_3__** %342, align 8
  %344 = load i32, i32* %7, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %343, i64 %345
  %347 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 4
  %349 = load %struct.trace_probe*, %struct.trace_probe** %6, align 8
  %350 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %349, i32 0, i32 0
  %351 = load %struct.TYPE_3__*, %struct.TYPE_3__** %350, align 8
  %352 = load i32, i32* %7, align 4
  %353 = call i64 @conflict_field_name(i32 %348, %struct.TYPE_3__* %351, i32 %352)
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %355, label %365

355:                                              ; preds = %340
  %356 = load i32, i32* %7, align 4
  %357 = load i8**, i8*** %5, align 8
  %358 = load i32, i32* %7, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds i8*, i8** %357, i64 %359
  %361 = load i8*, i8** %360, align 8
  %362 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.16, i64 0, i64 0), i32 %356, i8* %361)
  %363 = load i32, i32* @EINVAL, align 4
  %364 = sub nsw i32 0, %363
  store i32 %364, i32* %8, align 4
  br label %393

365:                                              ; preds = %340
  %366 = load i8*, i8** %14, align 8
  %367 = load %struct.trace_probe*, %struct.trace_probe** %6, align 8
  %368 = load %struct.trace_probe*, %struct.trace_probe** %6, align 8
  %369 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %368, i32 0, i32 0
  %370 = load %struct.TYPE_3__*, %struct.TYPE_3__** %369, align 8
  %371 = load i32, i32* %7, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %370, i64 %372
  %374 = load i32, i32* %9, align 4
  %375 = call i32 @parse_probe_arg(i8* %366, %struct.trace_probe* %367, %struct.TYPE_3__* %373, i32 %374)
  store i32 %375, i32* %8, align 4
  %376 = load i32, i32* %8, align 4
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %382

378:                                              ; preds = %365
  %379 = load i32, i32* %7, align 4
  %380 = load i32, i32* %8, align 4
  %381 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.17, i64 0, i64 0), i32 %379, i32 %380)
  br label %393

382:                                              ; preds = %365
  br label %383

383:                                              ; preds = %382
  %384 = load i32, i32* %7, align 4
  %385 = add nsw i32 %384, 1
  store i32 %385, i32* %7, align 4
  br label %240

386:                                              ; preds = %248
  %387 = load %struct.trace_probe*, %struct.trace_probe** %6, align 8
  %388 = call i32 @register_trace_probe(%struct.trace_probe* %387)
  store i32 %388, i32* %8, align 4
  %389 = load i32, i32* %8, align 4
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %391, label %392

391:                                              ; preds = %386
  br label %393

392:                                              ; preds = %386
  store i32 0, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %397

393:                                              ; preds = %391, %378, %355, %327, %311
  %394 = load %struct.trace_probe*, %struct.trace_probe** %6, align 8
  %395 = call i32 @free_trace_probe(%struct.trace_probe* %394)
  %396 = load i32, i32* %8, align 4
  store i32 %396, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %397

397:                                              ; preds = %393, %392, %233, %188, %179, %167, %154, %139, %133, %118, %107, %91, %82, %50
  %398 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %398)
  %399 = load i32, i32* %3, align 4
  ret i32 %399
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pr_info(i8*, ...) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local %struct.trace_probe* @find_trace_probe(i8*, i8*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i32 @unregister_trace_probe(%struct.trace_probe*) #2

declare dso_local i32 @free_trace_probe(%struct.trace_probe*) #2

declare dso_local i64 @isdigit(i8 signext) #2

declare dso_local i32 @strict_strtoul(i8*, i32, i64*) #2

declare dso_local i32 @split_symbol_offset(i8*, i64*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, ...) #2

declare dso_local %struct.trace_probe* @alloc_trace_probe(i8*, i8*, i8*, i8*, i64, i32, i32) #2

declare dso_local i64 @IS_ERR(%struct.trace_probe*) #2

declare dso_local i32 @PTR_ERR(%struct.trace_probe*) #2

declare dso_local i8* @kstrdup(i8*, i32) #2

declare dso_local i32 @is_good_name(i32) #2

declare dso_local i64 @conflict_field_name(i32, %struct.TYPE_3__*, i32) #2

declare dso_local i32 @parse_probe_arg(i8*, %struct.trace_probe*, %struct.TYPE_3__*, i32) #2

declare dso_local i32 @register_trace_probe(%struct.trace_probe*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
