; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/integrity/ima/extr_ima_policy.c_ima_parse_rule.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/integrity/ima/extr_ima_policy.c_ima_parse_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ima_measure_rule_entry = type { i32, i64, i64, i32, i32, i8* }
%struct.audit_buffer = type { i32 }
%struct.TYPE_3__ = type { i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@AUDIT_INTEGRITY_RULE = common dso_local global i32 0, align 4
@UNKNOWN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@MAX_OPT_ARGS = common dso_local global i32 0, align 4
@policy_tokens = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"action\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"measure\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MEASURE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c"dont_measure\00", align 1
@DONT_MEASURE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"func\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"FILE_CHECK\00", align 1
@FILE_CHECK = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [11 x i8] c"PATH_CHECK\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"FILE_MMAP\00", align 1
@FILE_MMAP = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [11 x i8] c"BPRM_CHECK\00", align 1
@BPRM_CHECK = common dso_local global i8* null, align 8
@IMA_FUNC = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"mask\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"MAY_EXEC\00", align 1
@MAY_EXEC = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [10 x i8] c"MAY_WRITE\00", align 1
@MAY_WRITE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [9 x i8] c"MAY_READ\00", align 1
@MAY_READ = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [11 x i8] c"MAY_APPEND\00", align 1
@MAY_APPEND = common dso_local global i32 0, align 4
@IMA_MASK = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [8 x i8] c"fsmagic\00", align 1
@IMA_FSMAGIC = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [4 x i8] c"uid\00", align 1
@IMA_UID = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [9 x i8] c"obj_user\00", align 1
@LSM_OBJ_USER = common dso_local global i32 0, align 4
@AUDIT_OBJ_USER = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [9 x i8] c"obj_role\00", align 1
@LSM_OBJ_ROLE = common dso_local global i32 0, align 4
@AUDIT_OBJ_ROLE = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [9 x i8] c"obj_type\00", align 1
@LSM_OBJ_TYPE = common dso_local global i32 0, align 4
@AUDIT_OBJ_TYPE = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [10 x i8] c"subj_user\00", align 1
@LSM_SUBJ_USER = common dso_local global i32 0, align 4
@AUDIT_SUBJ_USER = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [10 x i8] c"subj_role\00", align 1
@LSM_SUBJ_ROLE = common dso_local global i32 0, align 4
@AUDIT_SUBJ_ROLE = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [10 x i8] c"subj_type\00", align 1
@LSM_SUBJ_TYPE = common dso_local global i32 0, align 4
@AUDIT_SUBJ_TYPE = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"res=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.ima_measure_rule_entry*)* @ima_parse_rule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ima_parse_rule(i8* %0, %struct.ima_measure_rule_entry* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ima_measure_rule_entry*, align 8
  %5 = alloca %struct.audit_buffer*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.ima_measure_rule_entry* %1, %struct.ima_measure_rule_entry** %4, align 8
  store i32 0, i32* %7, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = load i32, i32* @AUDIT_INTEGRITY_RULE, align 4
  %15 = call %struct.audit_buffer* @audit_log_start(i32* null, i32 %13, i32 %14)
  store %struct.audit_buffer* %15, %struct.audit_buffer** %5, align 8
  %16 = load %struct.ima_measure_rule_entry*, %struct.ima_measure_rule_entry** %4, align 8
  %17 = getelementptr inbounds %struct.ima_measure_rule_entry, %struct.ima_measure_rule_entry* %16, i32 0, i32 0
  store i32 -1, i32* %17, align 8
  %18 = load i64, i64* @UNKNOWN, align 8
  %19 = load %struct.ima_measure_rule_entry*, %struct.ima_measure_rule_entry** %4, align 8
  %20 = getelementptr inbounds %struct.ima_measure_rule_entry, %struct.ima_measure_rule_entry* %19, i32 0, i32 1
  store i64 %18, i64* %20, align 8
  br label %21

21:                                               ; preds = %380, %377, %2
  %22 = call i8* @strsep(i8** %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %22, i8** %6, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %381

24:                                               ; preds = %21
  %25 = load i32, i32* @MAX_OPT_ARGS, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %8, align 8
  %28 = alloca %struct.TYPE_3__, i64 %26, align 16
  store i64 %26, i64* %9, align 8
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i32 3, i32* %12, align 4
  br label %377

32:                                               ; preds = %24
  %33 = load i8*, i8** %6, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %47, label %37

37:                                               ; preds = %32
  %38 = load i8*, i8** %6, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 32
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = load i8*, i8** %6, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 9
  br i1 %46, label %47, label %48

47:                                               ; preds = %42, %37, %32
  store i32 2, i32* %12, align 4
  br label %377

48:                                               ; preds = %42
  %49 = load i8*, i8** %6, align 8
  %50 = load i32, i32* @policy_tokens, align 4
  %51 = call i32 @match_token(i8* %49, i32 %50, %struct.TYPE_3__* %28)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  switch i32 %52, label %376 [
    i32 135, label %53
    i32 140, label %68
    i32 137, label %83
    i32 136, label %152
    i32 138, label %221
    i32 128, label %250
    i32 132, label %292
    i32 134, label %305
    i32 133, label %318
    i32 129, label %331
    i32 131, label %344
    i32 130, label %357
    i32 139, label %370
  ]

53:                                               ; preds = %48
  %54 = load %struct.audit_buffer*, %struct.audit_buffer** %5, align 8
  %55 = call i32 @ima_log_string(%struct.audit_buffer* %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %56 = load %struct.ima_measure_rule_entry*, %struct.ima_measure_rule_entry** %4, align 8
  %57 = getelementptr inbounds %struct.ima_measure_rule_entry, %struct.ima_measure_rule_entry* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @UNKNOWN, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %53
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %61, %53
  %65 = load i64, i64* @MEASURE, align 8
  %66 = load %struct.ima_measure_rule_entry*, %struct.ima_measure_rule_entry** %4, align 8
  %67 = getelementptr inbounds %struct.ima_measure_rule_entry, %struct.ima_measure_rule_entry* %66, i32 0, i32 1
  store i64 %65, i64* %67, align 8
  br label %376

68:                                               ; preds = %48
  %69 = load %struct.audit_buffer*, %struct.audit_buffer** %5, align 8
  %70 = call i32 @ima_log_string(%struct.audit_buffer* %69, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %71 = load %struct.ima_measure_rule_entry*, %struct.ima_measure_rule_entry** %4, align 8
  %72 = getelementptr inbounds %struct.ima_measure_rule_entry, %struct.ima_measure_rule_entry* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @UNKNOWN, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %68
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %7, align 4
  br label %79

79:                                               ; preds = %76, %68
  %80 = load i64, i64* @DONT_MEASURE, align 8
  %81 = load %struct.ima_measure_rule_entry*, %struct.ima_measure_rule_entry** %4, align 8
  %82 = getelementptr inbounds %struct.ima_measure_rule_entry, %struct.ima_measure_rule_entry* %81, i32 0, i32 1
  store i64 %80, i64* %82, align 8
  br label %376

83:                                               ; preds = %48
  %84 = load %struct.audit_buffer*, %struct.audit_buffer** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 16
  %88 = call i32 @ima_log_string(%struct.audit_buffer* %84, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %87)
  %89 = load %struct.ima_measure_rule_entry*, %struct.ima_measure_rule_entry** %4, align 8
  %90 = getelementptr inbounds %struct.ima_measure_rule_entry, %struct.ima_measure_rule_entry* %89, i32 0, i32 5
  %91 = load i8*, i8** %90, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %83
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %7, align 4
  br label %96

96:                                               ; preds = %93, %83
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 0
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 16
  %100 = call i32 @strcmp(i8* %99, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %96
  %103 = load i8*, i8** @FILE_CHECK, align 8
  %104 = load %struct.ima_measure_rule_entry*, %struct.ima_measure_rule_entry** %4, align 8
  %105 = getelementptr inbounds %struct.ima_measure_rule_entry, %struct.ima_measure_rule_entry* %104, i32 0, i32 5
  store i8* %103, i8** %105, align 8
  br label %142

106:                                              ; preds = %96
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 0
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 16
  %110 = call i32 @strcmp(i8* %109, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %106
  %113 = load i8*, i8** @FILE_CHECK, align 8
  %114 = load %struct.ima_measure_rule_entry*, %struct.ima_measure_rule_entry** %4, align 8
  %115 = getelementptr inbounds %struct.ima_measure_rule_entry, %struct.ima_measure_rule_entry* %114, i32 0, i32 5
  store i8* %113, i8** %115, align 8
  br label %141

116:                                              ; preds = %106
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 0
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 16
  %120 = call i32 @strcmp(i8* %119, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %116
  %123 = load i8*, i8** @FILE_MMAP, align 8
  %124 = load %struct.ima_measure_rule_entry*, %struct.ima_measure_rule_entry** %4, align 8
  %125 = getelementptr inbounds %struct.ima_measure_rule_entry, %struct.ima_measure_rule_entry* %124, i32 0, i32 5
  store i8* %123, i8** %125, align 8
  br label %140

126:                                              ; preds = %116
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 0
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 0
  %129 = load i8*, i8** %128, align 16
  %130 = call i32 @strcmp(i8* %129, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %126
  %133 = load i8*, i8** @BPRM_CHECK, align 8
  %134 = load %struct.ima_measure_rule_entry*, %struct.ima_measure_rule_entry** %4, align 8
  %135 = getelementptr inbounds %struct.ima_measure_rule_entry, %struct.ima_measure_rule_entry* %134, i32 0, i32 5
  store i8* %133, i8** %135, align 8
  br label %139

136:                                              ; preds = %126
  %137 = load i32, i32* @EINVAL, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %7, align 4
  br label %139

139:                                              ; preds = %136, %132
  br label %140

140:                                              ; preds = %139, %122
  br label %141

141:                                              ; preds = %140, %112
  br label %142

142:                                              ; preds = %141, %102
  %143 = load i32, i32* %7, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %151, label %145

145:                                              ; preds = %142
  %146 = load i32, i32* @IMA_FUNC, align 4
  %147 = load %struct.ima_measure_rule_entry*, %struct.ima_measure_rule_entry** %4, align 8
  %148 = getelementptr inbounds %struct.ima_measure_rule_entry, %struct.ima_measure_rule_entry* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 8
  %150 = or i32 %149, %146
  store i32 %150, i32* %148, align 8
  br label %151

151:                                              ; preds = %145, %142
  br label %376

152:                                              ; preds = %48
  %153 = load %struct.audit_buffer*, %struct.audit_buffer** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 0
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 0
  %156 = load i8*, i8** %155, align 16
  %157 = call i32 @ima_log_string(%struct.audit_buffer* %153, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* %156)
  %158 = load %struct.ima_measure_rule_entry*, %struct.ima_measure_rule_entry** %4, align 8
  %159 = getelementptr inbounds %struct.ima_measure_rule_entry, %struct.ima_measure_rule_entry* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %152
  %163 = load i32, i32* @EINVAL, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %7, align 4
  br label %165

165:                                              ; preds = %162, %152
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 0
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 0
  %168 = load i8*, i8** %167, align 16
  %169 = call i32 @strcmp(i8* %168, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %165
  %172 = load i32, i32* @MAY_EXEC, align 4
  %173 = load %struct.ima_measure_rule_entry*, %struct.ima_measure_rule_entry** %4, align 8
  %174 = getelementptr inbounds %struct.ima_measure_rule_entry, %struct.ima_measure_rule_entry* %173, i32 0, i32 4
  store i32 %172, i32* %174, align 4
  br label %211

175:                                              ; preds = %165
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 0
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 0
  %178 = load i8*, i8** %177, align 16
  %179 = call i32 @strcmp(i8* %178, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %175
  %182 = load i32, i32* @MAY_WRITE, align 4
  %183 = load %struct.ima_measure_rule_entry*, %struct.ima_measure_rule_entry** %4, align 8
  %184 = getelementptr inbounds %struct.ima_measure_rule_entry, %struct.ima_measure_rule_entry* %183, i32 0, i32 4
  store i32 %182, i32* %184, align 4
  br label %210

185:                                              ; preds = %175
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 0
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 0
  %188 = load i8*, i8** %187, align 16
  %189 = call i32 @strcmp(i8* %188, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %195

191:                                              ; preds = %185
  %192 = load i32, i32* @MAY_READ, align 4
  %193 = load %struct.ima_measure_rule_entry*, %struct.ima_measure_rule_entry** %4, align 8
  %194 = getelementptr inbounds %struct.ima_measure_rule_entry, %struct.ima_measure_rule_entry* %193, i32 0, i32 4
  store i32 %192, i32* %194, align 4
  br label %209

195:                                              ; preds = %185
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 0
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i32 0, i32 0
  %198 = load i8*, i8** %197, align 16
  %199 = call i32 @strcmp(i8* %198, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0))
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %205

201:                                              ; preds = %195
  %202 = load i32, i32* @MAY_APPEND, align 4
  %203 = load %struct.ima_measure_rule_entry*, %struct.ima_measure_rule_entry** %4, align 8
  %204 = getelementptr inbounds %struct.ima_measure_rule_entry, %struct.ima_measure_rule_entry* %203, i32 0, i32 4
  store i32 %202, i32* %204, align 4
  br label %208

205:                                              ; preds = %195
  %206 = load i32, i32* @EINVAL, align 4
  %207 = sub nsw i32 0, %206
  store i32 %207, i32* %7, align 4
  br label %208

208:                                              ; preds = %205, %201
  br label %209

209:                                              ; preds = %208, %191
  br label %210

210:                                              ; preds = %209, %181
  br label %211

211:                                              ; preds = %210, %171
  %212 = load i32, i32* %7, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %220, label %214

214:                                              ; preds = %211
  %215 = load i32, i32* @IMA_MASK, align 4
  %216 = load %struct.ima_measure_rule_entry*, %struct.ima_measure_rule_entry** %4, align 8
  %217 = getelementptr inbounds %struct.ima_measure_rule_entry, %struct.ima_measure_rule_entry* %216, i32 0, i32 3
  %218 = load i32, i32* %217, align 8
  %219 = or i32 %218, %215
  store i32 %219, i32* %217, align 8
  br label %220

220:                                              ; preds = %214, %211
  br label %376

221:                                              ; preds = %48
  %222 = load %struct.audit_buffer*, %struct.audit_buffer** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 0
  %224 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %223, i32 0, i32 0
  %225 = load i8*, i8** %224, align 16
  %226 = call i32 @ima_log_string(%struct.audit_buffer* %222, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i8* %225)
  %227 = load %struct.ima_measure_rule_entry*, %struct.ima_measure_rule_entry** %4, align 8
  %228 = getelementptr inbounds %struct.ima_measure_rule_entry, %struct.ima_measure_rule_entry* %227, i32 0, i32 2
  %229 = load i64, i64* %228, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %234

231:                                              ; preds = %221
  %232 = load i32, i32* @EINVAL, align 4
  %233 = sub nsw i32 0, %232
  store i32 %233, i32* %7, align 4
  br label %376

234:                                              ; preds = %221
  %235 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 0
  %236 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %235, i32 0, i32 0
  %237 = load i8*, i8** %236, align 16
  %238 = load %struct.ima_measure_rule_entry*, %struct.ima_measure_rule_entry** %4, align 8
  %239 = getelementptr inbounds %struct.ima_measure_rule_entry, %struct.ima_measure_rule_entry* %238, i32 0, i32 2
  %240 = call i32 @strict_strtoul(i8* %237, i32 16, i64* %239)
  store i32 %240, i32* %7, align 4
  %241 = load i32, i32* %7, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %249, label %243

243:                                              ; preds = %234
  %244 = load i32, i32* @IMA_FSMAGIC, align 4
  %245 = load %struct.ima_measure_rule_entry*, %struct.ima_measure_rule_entry** %4, align 8
  %246 = getelementptr inbounds %struct.ima_measure_rule_entry, %struct.ima_measure_rule_entry* %245, i32 0, i32 3
  %247 = load i32, i32* %246, align 8
  %248 = or i32 %247, %244
  store i32 %248, i32* %246, align 8
  br label %249

249:                                              ; preds = %243, %234
  br label %376

250:                                              ; preds = %48
  %251 = load %struct.audit_buffer*, %struct.audit_buffer** %5, align 8
  %252 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 0
  %253 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %252, i32 0, i32 0
  %254 = load i8*, i8** %253, align 16
  %255 = call i32 @ima_log_string(%struct.audit_buffer* %251, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8* %254)
  %256 = load %struct.ima_measure_rule_entry*, %struct.ima_measure_rule_entry** %4, align 8
  %257 = getelementptr inbounds %struct.ima_measure_rule_entry, %struct.ima_measure_rule_entry* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = icmp ne i32 %258, -1
  br i1 %259, label %260, label %263

260:                                              ; preds = %250
  %261 = load i32, i32* @EINVAL, align 4
  %262 = sub nsw i32 0, %261
  store i32 %262, i32* %7, align 4
  br label %376

263:                                              ; preds = %250
  %264 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 0
  %265 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %264, i32 0, i32 0
  %266 = load i8*, i8** %265, align 16
  %267 = call i32 @strict_strtoul(i8* %266, i32 10, i64* %11)
  store i32 %267, i32* %7, align 4
  %268 = load i32, i32* %7, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %291, label %270

270:                                              ; preds = %263
  %271 = load i64, i64* %11, align 8
  %272 = trunc i64 %271 to i32
  %273 = load %struct.ima_measure_rule_entry*, %struct.ima_measure_rule_entry** %4, align 8
  %274 = getelementptr inbounds %struct.ima_measure_rule_entry, %struct.ima_measure_rule_entry* %273, i32 0, i32 0
  store i32 %272, i32* %274, align 8
  %275 = load %struct.ima_measure_rule_entry*, %struct.ima_measure_rule_entry** %4, align 8
  %276 = getelementptr inbounds %struct.ima_measure_rule_entry, %struct.ima_measure_rule_entry* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = sext i32 %277 to i64
  %279 = load i64, i64* %11, align 8
  %280 = icmp ne i64 %278, %279
  br i1 %280, label %281, label %284

281:                                              ; preds = %270
  %282 = load i32, i32* @EINVAL, align 4
  %283 = sub nsw i32 0, %282
  store i32 %283, i32* %7, align 4
  br label %290

284:                                              ; preds = %270
  %285 = load i32, i32* @IMA_UID, align 4
  %286 = load %struct.ima_measure_rule_entry*, %struct.ima_measure_rule_entry** %4, align 8
  %287 = getelementptr inbounds %struct.ima_measure_rule_entry, %struct.ima_measure_rule_entry* %286, i32 0, i32 3
  %288 = load i32, i32* %287, align 8
  %289 = or i32 %288, %285
  store i32 %289, i32* %287, align 8
  br label %290

290:                                              ; preds = %284, %281
  br label %291

291:                                              ; preds = %290, %263
  br label %376

292:                                              ; preds = %48
  %293 = load %struct.audit_buffer*, %struct.audit_buffer** %5, align 8
  %294 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 0
  %295 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %294, i32 0, i32 0
  %296 = load i8*, i8** %295, align 16
  %297 = call i32 @ima_log_string(%struct.audit_buffer* %293, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i8* %296)
  %298 = load %struct.ima_measure_rule_entry*, %struct.ima_measure_rule_entry** %4, align 8
  %299 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 0
  %300 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %299, i32 0, i32 0
  %301 = load i8*, i8** %300, align 16
  %302 = load i32, i32* @LSM_OBJ_USER, align 4
  %303 = load i32, i32* @AUDIT_OBJ_USER, align 4
  %304 = call i32 @ima_lsm_rule_init(%struct.ima_measure_rule_entry* %298, i8* %301, i32 %302, i32 %303)
  store i32 %304, i32* %7, align 4
  br label %376

305:                                              ; preds = %48
  %306 = load %struct.audit_buffer*, %struct.audit_buffer** %5, align 8
  %307 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 0
  %308 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %307, i32 0, i32 0
  %309 = load i8*, i8** %308, align 16
  %310 = call i32 @ima_log_string(%struct.audit_buffer* %306, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i8* %309)
  %311 = load %struct.ima_measure_rule_entry*, %struct.ima_measure_rule_entry** %4, align 8
  %312 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 0
  %313 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %312, i32 0, i32 0
  %314 = load i8*, i8** %313, align 16
  %315 = load i32, i32* @LSM_OBJ_ROLE, align 4
  %316 = load i32, i32* @AUDIT_OBJ_ROLE, align 4
  %317 = call i32 @ima_lsm_rule_init(%struct.ima_measure_rule_entry* %311, i8* %314, i32 %315, i32 %316)
  store i32 %317, i32* %7, align 4
  br label %376

318:                                              ; preds = %48
  %319 = load %struct.audit_buffer*, %struct.audit_buffer** %5, align 8
  %320 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 0
  %321 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %320, i32 0, i32 0
  %322 = load i8*, i8** %321, align 16
  %323 = call i32 @ima_log_string(%struct.audit_buffer* %319, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0), i8* %322)
  %324 = load %struct.ima_measure_rule_entry*, %struct.ima_measure_rule_entry** %4, align 8
  %325 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 0
  %326 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %325, i32 0, i32 0
  %327 = load i8*, i8** %326, align 16
  %328 = load i32, i32* @LSM_OBJ_TYPE, align 4
  %329 = load i32, i32* @AUDIT_OBJ_TYPE, align 4
  %330 = call i32 @ima_lsm_rule_init(%struct.ima_measure_rule_entry* %324, i8* %327, i32 %328, i32 %329)
  store i32 %330, i32* %7, align 4
  br label %376

331:                                              ; preds = %48
  %332 = load %struct.audit_buffer*, %struct.audit_buffer** %5, align 8
  %333 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 0
  %334 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %333, i32 0, i32 0
  %335 = load i8*, i8** %334, align 16
  %336 = call i32 @ima_log_string(%struct.audit_buffer* %332, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), i8* %335)
  %337 = load %struct.ima_measure_rule_entry*, %struct.ima_measure_rule_entry** %4, align 8
  %338 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 0
  %339 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %338, i32 0, i32 0
  %340 = load i8*, i8** %339, align 16
  %341 = load i32, i32* @LSM_SUBJ_USER, align 4
  %342 = load i32, i32* @AUDIT_SUBJ_USER, align 4
  %343 = call i32 @ima_lsm_rule_init(%struct.ima_measure_rule_entry* %337, i8* %340, i32 %341, i32 %342)
  store i32 %343, i32* %7, align 4
  br label %376

344:                                              ; preds = %48
  %345 = load %struct.audit_buffer*, %struct.audit_buffer** %5, align 8
  %346 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 0
  %347 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %346, i32 0, i32 0
  %348 = load i8*, i8** %347, align 16
  %349 = call i32 @ima_log_string(%struct.audit_buffer* %345, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0), i8* %348)
  %350 = load %struct.ima_measure_rule_entry*, %struct.ima_measure_rule_entry** %4, align 8
  %351 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 0
  %352 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %351, i32 0, i32 0
  %353 = load i8*, i8** %352, align 16
  %354 = load i32, i32* @LSM_SUBJ_ROLE, align 4
  %355 = load i32, i32* @AUDIT_SUBJ_ROLE, align 4
  %356 = call i32 @ima_lsm_rule_init(%struct.ima_measure_rule_entry* %350, i8* %353, i32 %354, i32 %355)
  store i32 %356, i32* %7, align 4
  br label %376

357:                                              ; preds = %48
  %358 = load %struct.audit_buffer*, %struct.audit_buffer** %5, align 8
  %359 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 0
  %360 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %359, i32 0, i32 0
  %361 = load i8*, i8** %360, align 16
  %362 = call i32 @ima_log_string(%struct.audit_buffer* %358, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0), i8* %361)
  %363 = load %struct.ima_measure_rule_entry*, %struct.ima_measure_rule_entry** %4, align 8
  %364 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 0
  %365 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %364, i32 0, i32 0
  %366 = load i8*, i8** %365, align 16
  %367 = load i32, i32* @LSM_SUBJ_TYPE, align 4
  %368 = load i32, i32* @AUDIT_SUBJ_TYPE, align 4
  %369 = call i32 @ima_lsm_rule_init(%struct.ima_measure_rule_entry* %363, i8* %366, i32 %367, i32 %368)
  store i32 %369, i32* %7, align 4
  br label %376

370:                                              ; preds = %48
  %371 = load %struct.audit_buffer*, %struct.audit_buffer** %5, align 8
  %372 = load i8*, i8** %6, align 8
  %373 = call i32 @ima_log_string(%struct.audit_buffer* %371, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0), i8* %372)
  %374 = load i32, i32* @EINVAL, align 4
  %375 = sub nsw i32 0, %374
  store i32 %375, i32* %7, align 4
  br label %376

376:                                              ; preds = %48, %370, %357, %344, %331, %318, %305, %292, %291, %260, %249, %231, %220, %151, %79, %64
  store i32 0, i32* %12, align 4
  br label %377

377:                                              ; preds = %376, %47, %31
  %378 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %378)
  %379 = load i32, i32* %12, align 4
  switch i32 %379, label %403 [
    i32 0, label %380
    i32 3, label %381
    i32 2, label %21
  ]

380:                                              ; preds = %377
  br label %21

381:                                              ; preds = %377, %21
  %382 = load i32, i32* %7, align 4
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %393, label %384

384:                                              ; preds = %381
  %385 = load %struct.ima_measure_rule_entry*, %struct.ima_measure_rule_entry** %4, align 8
  %386 = getelementptr inbounds %struct.ima_measure_rule_entry, %struct.ima_measure_rule_entry* %385, i32 0, i32 1
  %387 = load i64, i64* %386, align 8
  %388 = load i64, i64* @UNKNOWN, align 8
  %389 = icmp eq i64 %387, %388
  br i1 %389, label %390, label %393

390:                                              ; preds = %384
  %391 = load i32, i32* @EINVAL, align 4
  %392 = sub nsw i32 0, %391
  store i32 %392, i32* %7, align 4
  br label %393

393:                                              ; preds = %390, %384, %381
  %394 = load %struct.audit_buffer*, %struct.audit_buffer** %5, align 8
  %395 = load i32, i32* %7, align 4
  %396 = icmp ne i32 %395, 0
  %397 = xor i1 %396, true
  %398 = zext i1 %397 to i32
  %399 = call i32 @audit_log_format(%struct.audit_buffer* %394, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0), i32 %398)
  %400 = load %struct.audit_buffer*, %struct.audit_buffer** %5, align 8
  %401 = call i32 @audit_log_end(%struct.audit_buffer* %400)
  %402 = load i32, i32* %7, align 4
  ret i32 %402

403:                                              ; preds = %377
  unreachable
}

declare dso_local %struct.audit_buffer* @audit_log_start(i32*, i32, i32) #1

declare dso_local i8* @strsep(i8**, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @match_token(i8*, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @ima_log_string(%struct.audit_buffer*, i8*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @strict_strtoul(i8*, i32, i64*) #1

declare dso_local i32 @ima_lsm_rule_init(%struct.ima_measure_rule_entry*, i8*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @audit_log_format(%struct.audit_buffer*, i8*, i32) #1

declare dso_local i32 @audit_log_end(%struct.audit_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
