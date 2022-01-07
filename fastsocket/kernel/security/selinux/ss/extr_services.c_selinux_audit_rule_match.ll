; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_services.c_selinux_audit_rule_match.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_services.c_selinux_audit_rule_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_context = type { i32 }
%struct.context = type { %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.mls_level* }
%struct.mls_level = type { i32 }
%struct.selinux_audit_rule = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.mls_level* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@AUDIT_SELINUX_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"selinux_audit_rule_match: missing rule\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@policy_rwlock = common dso_local global i32 0, align 4
@latest_granting = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"selinux_audit_rule_match: stale rule\0A\00", align 1
@ESTALE = common dso_local global i32 0, align 4
@sidtab = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"selinux_audit_rule_match: unrecognized SID %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @selinux_audit_rule_match(i32 %0, i32 %1, i32 %2, i8* %3, %struct.audit_context* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.audit_context*, align 8
  %12 = alloca %struct.context*, align 8
  %13 = alloca %struct.mls_level*, align 8
  %14 = alloca %struct.selinux_audit_rule*, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store %struct.audit_context* %4, %struct.audit_context** %11, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = bitcast i8* %16 to %struct.selinux_audit_rule*
  store %struct.selinux_audit_rule* %17, %struct.selinux_audit_rule** %14, align 8
  store i32 0, i32* %15, align 4
  %18 = load %struct.selinux_audit_rule*, %struct.selinux_audit_rule** %14, align 8
  %19 = icmp ne %struct.selinux_audit_rule* %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %5
  %21 = load %struct.audit_context*, %struct.audit_context** %11, align 8
  %22 = load i32, i32* @GFP_ATOMIC, align 4
  %23 = load i32, i32* @AUDIT_SELINUX_ERR, align 4
  %24 = call i32 (%struct.audit_context*, i32, i32, i8*, ...) @audit_log(%struct.audit_context* %21, i32 %22, i32 %23, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ENOENT, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %238

27:                                               ; preds = %5
  %28 = call i32 @read_lock(i32* @policy_rwlock)
  %29 = load %struct.selinux_audit_rule*, %struct.selinux_audit_rule** %14, align 8
  %30 = getelementptr inbounds %struct.selinux_audit_rule, %struct.selinux_audit_rule* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @latest_granting, align 8
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %27
  %35 = load %struct.audit_context*, %struct.audit_context** %11, align 8
  %36 = load i32, i32* @GFP_ATOMIC, align 4
  %37 = load i32, i32* @AUDIT_SELINUX_ERR, align 4
  %38 = call i32 (%struct.audit_context*, i32, i32, i8*, ...) @audit_log(%struct.audit_context* %35, i32 %36, i32 %37, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @ESTALE, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %15, align 4
  br label %235

41:                                               ; preds = %27
  %42 = load i32, i32* %7, align 4
  %43 = call %struct.context* @sidtab_search(i32* @sidtab, i32 %42)
  store %struct.context* %43, %struct.context** %12, align 8
  %44 = load %struct.context*, %struct.context** %12, align 8
  %45 = icmp ne %struct.context* %44, null
  br i1 %45, label %54, label %46

46:                                               ; preds = %41
  %47 = load %struct.audit_context*, %struct.audit_context** %11, align 8
  %48 = load i32, i32* @GFP_ATOMIC, align 4
  %49 = load i32, i32* @AUDIT_SELINUX_ERR, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 (%struct.audit_context*, i32, i32, i8*, ...) @audit_log(%struct.audit_context* %47, i32 %48, i32 %49, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @ENOENT, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %15, align 4
  br label %235

54:                                               ; preds = %41
  %55 = load i32, i32* %8, align 4
  switch i32 %55, label %234 [
    i32 134, label %56
    i32 139, label %56
    i32 137, label %79
    i32 141, label %79
    i32 135, label %102
    i32 140, label %102
    i32 136, label %125
    i32 138, label %125
    i32 142, label %125
    i32 143, label %125
  ]

56:                                               ; preds = %54, %54
  %57 = load i32, i32* %9, align 4
  switch i32 %57, label %78 [
    i32 133, label %58
    i32 128, label %68
  ]

58:                                               ; preds = %56
  %59 = load %struct.context*, %struct.context** %12, align 8
  %60 = getelementptr inbounds %struct.context, %struct.context* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.selinux_audit_rule*, %struct.selinux_audit_rule** %14, align 8
  %63 = getelementptr inbounds %struct.selinux_audit_rule, %struct.selinux_audit_rule* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = icmp eq i32 %61, %65
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %15, align 4
  br label %78

68:                                               ; preds = %56
  %69 = load %struct.context*, %struct.context** %12, align 8
  %70 = getelementptr inbounds %struct.context, %struct.context* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.selinux_audit_rule*, %struct.selinux_audit_rule** %14, align 8
  %73 = getelementptr inbounds %struct.selinux_audit_rule, %struct.selinux_audit_rule* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %71, %75
  %77 = zext i1 %76 to i32
  store i32 %77, i32* %15, align 4
  br label %78

78:                                               ; preds = %56, %68, %58
  br label %234

79:                                               ; preds = %54, %54
  %80 = load i32, i32* %9, align 4
  switch i32 %80, label %101 [
    i32 133, label %81
    i32 128, label %91
  ]

81:                                               ; preds = %79
  %82 = load %struct.context*, %struct.context** %12, align 8
  %83 = getelementptr inbounds %struct.context, %struct.context* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.selinux_audit_rule*, %struct.selinux_audit_rule** %14, align 8
  %86 = getelementptr inbounds %struct.selinux_audit_rule, %struct.selinux_audit_rule* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %84, %88
  %90 = zext i1 %89 to i32
  store i32 %90, i32* %15, align 4
  br label %101

91:                                               ; preds = %79
  %92 = load %struct.context*, %struct.context** %12, align 8
  %93 = getelementptr inbounds %struct.context, %struct.context* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.selinux_audit_rule*, %struct.selinux_audit_rule** %14, align 8
  %96 = getelementptr inbounds %struct.selinux_audit_rule, %struct.selinux_audit_rule* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %94, %98
  %100 = zext i1 %99 to i32
  store i32 %100, i32* %15, align 4
  br label %101

101:                                              ; preds = %79, %91, %81
  br label %234

102:                                              ; preds = %54, %54
  %103 = load i32, i32* %9, align 4
  switch i32 %103, label %124 [
    i32 133, label %104
    i32 128, label %114
  ]

104:                                              ; preds = %102
  %105 = load %struct.context*, %struct.context** %12, align 8
  %106 = getelementptr inbounds %struct.context, %struct.context* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.selinux_audit_rule*, %struct.selinux_audit_rule** %14, align 8
  %109 = getelementptr inbounds %struct.selinux_audit_rule, %struct.selinux_audit_rule* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = icmp eq i32 %107, %111
  %113 = zext i1 %112 to i32
  store i32 %113, i32* %15, align 4
  br label %124

114:                                              ; preds = %102
  %115 = load %struct.context*, %struct.context** %12, align 8
  %116 = getelementptr inbounds %struct.context, %struct.context* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.selinux_audit_rule*, %struct.selinux_audit_rule** %14, align 8
  %119 = getelementptr inbounds %struct.selinux_audit_rule, %struct.selinux_audit_rule* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = icmp ne i32 %117, %121
  %123 = zext i1 %122 to i32
  store i32 %123, i32* %15, align 4
  br label %124

124:                                              ; preds = %102, %114, %104
  br label %234

125:                                              ; preds = %54, %54, %54, %54
  %126 = load i32, i32* %8, align 4
  %127 = icmp eq i32 %126, 136
  br i1 %127, label %131, label %128

128:                                              ; preds = %125
  %129 = load i32, i32* %8, align 4
  %130 = icmp eq i32 %129, 142
  br i1 %130, label %131, label %137

131:                                              ; preds = %128, %125
  %132 = load %struct.context*, %struct.context** %12, align 8
  %133 = getelementptr inbounds %struct.context, %struct.context* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load %struct.mls_level*, %struct.mls_level** %134, align 8
  %136 = getelementptr inbounds %struct.mls_level, %struct.mls_level* %135, i64 0
  br label %143

137:                                              ; preds = %128
  %138 = load %struct.context*, %struct.context** %12, align 8
  %139 = getelementptr inbounds %struct.context, %struct.context* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = load %struct.mls_level*, %struct.mls_level** %140, align 8
  %142 = getelementptr inbounds %struct.mls_level, %struct.mls_level* %141, i64 1
  br label %143

143:                                              ; preds = %137, %131
  %144 = phi %struct.mls_level* [ %136, %131 ], [ %142, %137 ]
  store %struct.mls_level* %144, %struct.mls_level** %13, align 8
  %145 = load i32, i32* %9, align 4
  switch i32 %145, label %233 [
    i32 133, label %146
    i32 128, label %155
    i32 129, label %167
    i32 130, label %191
    i32 131, label %200
    i32 132, label %224
  ]

146:                                              ; preds = %143
  %147 = load %struct.selinux_audit_rule*, %struct.selinux_audit_rule** %14, align 8
  %148 = getelementptr inbounds %struct.selinux_audit_rule, %struct.selinux_audit_rule* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 0
  %151 = load %struct.mls_level*, %struct.mls_level** %150, align 8
  %152 = getelementptr inbounds %struct.mls_level, %struct.mls_level* %151, i64 0
  %153 = load %struct.mls_level*, %struct.mls_level** %13, align 8
  %154 = call i32 @mls_level_eq(%struct.mls_level* %152, %struct.mls_level* %153)
  store i32 %154, i32* %15, align 4
  br label %233

155:                                              ; preds = %143
  %156 = load %struct.selinux_audit_rule*, %struct.selinux_audit_rule** %14, align 8
  %157 = getelementptr inbounds %struct.selinux_audit_rule, %struct.selinux_audit_rule* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 0
  %160 = load %struct.mls_level*, %struct.mls_level** %159, align 8
  %161 = getelementptr inbounds %struct.mls_level, %struct.mls_level* %160, i64 0
  %162 = load %struct.mls_level*, %struct.mls_level** %13, align 8
  %163 = call i32 @mls_level_eq(%struct.mls_level* %161, %struct.mls_level* %162)
  %164 = icmp ne i32 %163, 0
  %165 = xor i1 %164, true
  %166 = zext i1 %165 to i32
  store i32 %166, i32* %15, align 4
  br label %233

167:                                              ; preds = %143
  %168 = load %struct.selinux_audit_rule*, %struct.selinux_audit_rule** %14, align 8
  %169 = getelementptr inbounds %struct.selinux_audit_rule, %struct.selinux_audit_rule* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 0
  %172 = load %struct.mls_level*, %struct.mls_level** %171, align 8
  %173 = getelementptr inbounds %struct.mls_level, %struct.mls_level* %172, i64 0
  %174 = load %struct.mls_level*, %struct.mls_level** %13, align 8
  %175 = call i32 @mls_level_dom(%struct.mls_level* %173, %struct.mls_level* %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %188

177:                                              ; preds = %167
  %178 = load %struct.selinux_audit_rule*, %struct.selinux_audit_rule** %14, align 8
  %179 = getelementptr inbounds %struct.selinux_audit_rule, %struct.selinux_audit_rule* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 0
  %182 = load %struct.mls_level*, %struct.mls_level** %181, align 8
  %183 = getelementptr inbounds %struct.mls_level, %struct.mls_level* %182, i64 0
  %184 = load %struct.mls_level*, %struct.mls_level** %13, align 8
  %185 = call i32 @mls_level_eq(%struct.mls_level* %183, %struct.mls_level* %184)
  %186 = icmp ne i32 %185, 0
  %187 = xor i1 %186, true
  br label %188

188:                                              ; preds = %177, %167
  %189 = phi i1 [ false, %167 ], [ %187, %177 ]
  %190 = zext i1 %189 to i32
  store i32 %190, i32* %15, align 4
  br label %233

191:                                              ; preds = %143
  %192 = load %struct.selinux_audit_rule*, %struct.selinux_audit_rule** %14, align 8
  %193 = getelementptr inbounds %struct.selinux_audit_rule, %struct.selinux_audit_rule* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 0
  %196 = load %struct.mls_level*, %struct.mls_level** %195, align 8
  %197 = getelementptr inbounds %struct.mls_level, %struct.mls_level* %196, i64 0
  %198 = load %struct.mls_level*, %struct.mls_level** %13, align 8
  %199 = call i32 @mls_level_dom(%struct.mls_level* %197, %struct.mls_level* %198)
  store i32 %199, i32* %15, align 4
  br label %233

200:                                              ; preds = %143
  %201 = load %struct.mls_level*, %struct.mls_level** %13, align 8
  %202 = load %struct.selinux_audit_rule*, %struct.selinux_audit_rule** %14, align 8
  %203 = getelementptr inbounds %struct.selinux_audit_rule, %struct.selinux_audit_rule* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i32 0, i32 0
  %206 = load %struct.mls_level*, %struct.mls_level** %205, align 8
  %207 = getelementptr inbounds %struct.mls_level, %struct.mls_level* %206, i64 0
  %208 = call i32 @mls_level_dom(%struct.mls_level* %201, %struct.mls_level* %207)
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %221

210:                                              ; preds = %200
  %211 = load %struct.mls_level*, %struct.mls_level** %13, align 8
  %212 = load %struct.selinux_audit_rule*, %struct.selinux_audit_rule** %14, align 8
  %213 = getelementptr inbounds %struct.selinux_audit_rule, %struct.selinux_audit_rule* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 0
  %216 = load %struct.mls_level*, %struct.mls_level** %215, align 8
  %217 = getelementptr inbounds %struct.mls_level, %struct.mls_level* %216, i64 0
  %218 = call i32 @mls_level_eq(%struct.mls_level* %211, %struct.mls_level* %217)
  %219 = icmp ne i32 %218, 0
  %220 = xor i1 %219, true
  br label %221

221:                                              ; preds = %210, %200
  %222 = phi i1 [ false, %200 ], [ %220, %210 ]
  %223 = zext i1 %222 to i32
  store i32 %223, i32* %15, align 4
  br label %233

224:                                              ; preds = %143
  %225 = load %struct.mls_level*, %struct.mls_level** %13, align 8
  %226 = load %struct.selinux_audit_rule*, %struct.selinux_audit_rule** %14, align 8
  %227 = getelementptr inbounds %struct.selinux_audit_rule, %struct.selinux_audit_rule* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %228, i32 0, i32 0
  %230 = load %struct.mls_level*, %struct.mls_level** %229, align 8
  %231 = getelementptr inbounds %struct.mls_level, %struct.mls_level* %230, i64 0
  %232 = call i32 @mls_level_dom(%struct.mls_level* %225, %struct.mls_level* %231)
  store i32 %232, i32* %15, align 4
  br label %233

233:                                              ; preds = %143, %224, %221, %191, %188, %155, %146
  br label %234

234:                                              ; preds = %233, %54, %124, %101, %78
  br label %235

235:                                              ; preds = %234, %46, %34
  %236 = call i32 @read_unlock(i32* @policy_rwlock)
  %237 = load i32, i32* %15, align 4
  store i32 %237, i32* %6, align 4
  br label %238

238:                                              ; preds = %235, %20
  %239 = load i32, i32* %6, align 4
  ret i32 %239
}

declare dso_local i32 @audit_log(%struct.audit_context*, i32, i32, i8*, ...) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local %struct.context* @sidtab_search(i32*, i32) #1

declare dso_local i32 @mls_level_eq(%struct.mls_level*, %struct.mls_level*) #1

declare dso_local i32 @mls_level_dom(%struct.mls_level*, %struct.mls_level*) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
