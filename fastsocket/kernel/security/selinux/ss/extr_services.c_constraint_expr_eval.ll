; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_services.c_constraint_expr_eval.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_services.c_constraint_expr_eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.role_datum** }
%struct.role_datum = type { i32 }
%struct.context = type { i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.mls_level* }
%struct.mls_level = type { i32 }
%struct.constraint_expr = type { i32, i32, i32, i32, %struct.constraint_expr* }

@CEXPR_MAXDEPTH = common dso_local global i32 0, align 4
@policydb = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@CEXPR_TARGET = common dso_local global i32 0, align 4
@CEXPR_XTARGET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.context*, %struct.context*, %struct.context*, %struct.constraint_expr*)* @constraint_expr_eval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @constraint_expr_eval(%struct.context* %0, %struct.context* %1, %struct.context* %2, %struct.constraint_expr* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.context*, align 8
  %7 = alloca %struct.context*, align 8
  %8 = alloca %struct.context*, align 8
  %9 = alloca %struct.constraint_expr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.context*, align 8
  %13 = alloca %struct.role_datum*, align 8
  %14 = alloca %struct.role_datum*, align 8
  %15 = alloca %struct.mls_level*, align 8
  %16 = alloca %struct.mls_level*, align 8
  %17 = alloca %struct.constraint_expr*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.context* %0, %struct.context** %6, align 8
  store %struct.context* %1, %struct.context** %7, align 8
  store %struct.context* %2, %struct.context** %8, align 8
  store %struct.constraint_expr* %3, %struct.constraint_expr** %9, align 8
  %22 = load i32, i32* @CEXPR_MAXDEPTH, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %18, align 8
  %25 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %19, align 8
  store i32 -1, i32* %20, align 4
  %26 = load %struct.constraint_expr*, %struct.constraint_expr** %9, align 8
  store %struct.constraint_expr* %26, %struct.constraint_expr** %17, align 8
  br label %27

27:                                               ; preds = %413, %4
  %28 = load %struct.constraint_expr*, %struct.constraint_expr** %17, align 8
  %29 = icmp ne %struct.constraint_expr* %28, null
  br i1 %29, label %30, label %417

30:                                               ; preds = %27
  %31 = load %struct.constraint_expr*, %struct.constraint_expr** %17, align 8
  %32 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %410 [
    i32 132, label %34
    i32 146, label %49
    i32 131, label %66
    i32 145, label %83
    i32 134, label %315
  ]

34:                                               ; preds = %30
  %35 = load i32, i32* %20, align 4
  %36 = icmp slt i32 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @BUG_ON(i32 %37)
  %39 = load i32, i32* %20, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %25, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = load i32, i32* %20, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %25, i64 %47
  store i32 %45, i32* %48, align 4
  br label %412

49:                                               ; preds = %30
  %50 = load i32, i32* %20, align 4
  %51 = icmp slt i32 %50, 1
  %52 = zext i1 %51 to i32
  %53 = call i32 @BUG_ON(i32 %52)
  %54 = load i32, i32* %20, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %20, align 4
  %56 = load i32, i32* %20, align 4
  %57 = add nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %25, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %20, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %25, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, %60
  store i32 %65, i32* %63, align 4
  br label %412

66:                                               ; preds = %30
  %67 = load i32, i32* %20, align 4
  %68 = icmp slt i32 %67, 1
  %69 = zext i1 %68 to i32
  %70 = call i32 @BUG_ON(i32 %69)
  %71 = load i32, i32* %20, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %20, align 4
  %73 = load i32, i32* %20, align 4
  %74 = add nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %25, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %20, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %25, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %77
  store i32 %82, i32* %80, align 4
  br label %412

83:                                               ; preds = %30
  %84 = load i32, i32* %20, align 4
  %85 = load i32, i32* @CEXPR_MAXDEPTH, align 4
  %86 = sub nsw i32 %85, 1
  %87 = icmp eq i32 %84, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  store i32 0, i32* %5, align 4
  store i32 1, i32* %21, align 4
  br label %424

89:                                               ; preds = %83
  %90 = load %struct.constraint_expr*, %struct.constraint_expr** %17, align 8
  %91 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  switch i32 %92, label %288 [
    i32 128, label %93
    i32 129, label %100
    i32 130, label %107
    i32 136, label %173
    i32 137, label %184
    i32 140, label %195
    i32 141, label %206
    i32 138, label %217
    i32 135, label %228
  ]

93:                                               ; preds = %89
  %94 = load %struct.context*, %struct.context** %6, align 8
  %95 = getelementptr inbounds %struct.context, %struct.context* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  store i32 %96, i32* %10, align 4
  %97 = load %struct.context*, %struct.context** %7, align 8
  %98 = getelementptr inbounds %struct.context, %struct.context* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  store i32 %99, i32* %11, align 4
  br label %290

100:                                              ; preds = %89
  %101 = load %struct.context*, %struct.context** %6, align 8
  %102 = getelementptr inbounds %struct.context, %struct.context* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  store i32 %103, i32* %10, align 4
  %104 = load %struct.context*, %struct.context** %7, align 8
  %105 = getelementptr inbounds %struct.context, %struct.context* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  store i32 %106, i32* %11, align 4
  br label %290

107:                                              ; preds = %89
  %108 = load %struct.context*, %struct.context** %6, align 8
  %109 = getelementptr inbounds %struct.context, %struct.context* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %10, align 4
  %111 = load %struct.context*, %struct.context** %7, align 8
  %112 = getelementptr inbounds %struct.context, %struct.context* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %11, align 4
  %114 = load %struct.role_datum**, %struct.role_datum*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @policydb, i32 0, i32 0), align 8
  %115 = load i32, i32* %10, align 4
  %116 = sub nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.role_datum*, %struct.role_datum** %114, i64 %117
  %119 = load %struct.role_datum*, %struct.role_datum** %118, align 8
  store %struct.role_datum* %119, %struct.role_datum** %13, align 8
  %120 = load %struct.role_datum**, %struct.role_datum*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @policydb, i32 0, i32 0), align 8
  %121 = load i32, i32* %11, align 4
  %122 = sub nsw i32 %121, 1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.role_datum*, %struct.role_datum** %120, i64 %123
  %125 = load %struct.role_datum*, %struct.role_datum** %124, align 8
  store %struct.role_datum* %125, %struct.role_datum** %14, align 8
  %126 = load %struct.constraint_expr*, %struct.constraint_expr** %17, align 8
  %127 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  switch i32 %128, label %171 [
    i32 144, label %129
    i32 143, label %139
    i32 139, label %149
  ]

129:                                              ; preds = %107
  %130 = load %struct.role_datum*, %struct.role_datum** %13, align 8
  %131 = getelementptr inbounds %struct.role_datum, %struct.role_datum* %130, i32 0, i32 0
  %132 = load i32, i32* %11, align 4
  %133 = sub nsw i32 %132, 1
  %134 = call i32 @ebitmap_get_bit(i32* %131, i32 %133)
  %135 = load i32, i32* %20, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %20, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %25, i64 %137
  store i32 %134, i32* %138, align 4
  br label %413

139:                                              ; preds = %107
  %140 = load %struct.role_datum*, %struct.role_datum** %14, align 8
  %141 = getelementptr inbounds %struct.role_datum, %struct.role_datum* %140, i32 0, i32 0
  %142 = load i32, i32* %10, align 4
  %143 = sub nsw i32 %142, 1
  %144 = call i32 @ebitmap_get_bit(i32* %141, i32 %143)
  %145 = load i32, i32* %20, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %20, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %25, i64 %147
  store i32 %144, i32* %148, align 4
  br label %413

149:                                              ; preds = %107
  %150 = load %struct.role_datum*, %struct.role_datum** %13, align 8
  %151 = getelementptr inbounds %struct.role_datum, %struct.role_datum* %150, i32 0, i32 0
  %152 = load i32, i32* %11, align 4
  %153 = sub nsw i32 %152, 1
  %154 = call i32 @ebitmap_get_bit(i32* %151, i32 %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %164, label %156

156:                                              ; preds = %149
  %157 = load %struct.role_datum*, %struct.role_datum** %14, align 8
  %158 = getelementptr inbounds %struct.role_datum, %struct.role_datum* %157, i32 0, i32 0
  %159 = load i32, i32* %10, align 4
  %160 = sub nsw i32 %159, 1
  %161 = call i32 @ebitmap_get_bit(i32* %158, i32 %160)
  %162 = icmp ne i32 %161, 0
  %163 = xor i1 %162, true
  br label %164

164:                                              ; preds = %156, %149
  %165 = phi i1 [ false, %149 ], [ %163, %156 ]
  %166 = zext i1 %165 to i32
  %167 = load i32, i32* %20, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %20, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %25, i64 %169
  store i32 %166, i32* %170, align 4
  br label %413

171:                                              ; preds = %107
  br label %172

172:                                              ; preds = %171
  br label %290

173:                                              ; preds = %89
  %174 = load %struct.context*, %struct.context** %6, align 8
  %175 = getelementptr inbounds %struct.context, %struct.context* %174, i32 0, i32 3
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 0
  %177 = load %struct.mls_level*, %struct.mls_level** %176, align 8
  %178 = getelementptr inbounds %struct.mls_level, %struct.mls_level* %177, i64 0
  store %struct.mls_level* %178, %struct.mls_level** %15, align 8
  %179 = load %struct.context*, %struct.context** %7, align 8
  %180 = getelementptr inbounds %struct.context, %struct.context* %179, i32 0, i32 3
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 0
  %182 = load %struct.mls_level*, %struct.mls_level** %181, align 8
  %183 = getelementptr inbounds %struct.mls_level, %struct.mls_level* %182, i64 0
  store %struct.mls_level* %183, %struct.mls_level** %16, align 8
  br label %239

184:                                              ; preds = %89
  %185 = load %struct.context*, %struct.context** %6, align 8
  %186 = getelementptr inbounds %struct.context, %struct.context* %185, i32 0, i32 3
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 0
  %188 = load %struct.mls_level*, %struct.mls_level** %187, align 8
  %189 = getelementptr inbounds %struct.mls_level, %struct.mls_level* %188, i64 0
  store %struct.mls_level* %189, %struct.mls_level** %15, align 8
  %190 = load %struct.context*, %struct.context** %7, align 8
  %191 = getelementptr inbounds %struct.context, %struct.context* %190, i32 0, i32 3
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 0
  %193 = load %struct.mls_level*, %struct.mls_level** %192, align 8
  %194 = getelementptr inbounds %struct.mls_level, %struct.mls_level* %193, i64 1
  store %struct.mls_level* %194, %struct.mls_level** %16, align 8
  br label %239

195:                                              ; preds = %89
  %196 = load %struct.context*, %struct.context** %6, align 8
  %197 = getelementptr inbounds %struct.context, %struct.context* %196, i32 0, i32 3
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 0
  %199 = load %struct.mls_level*, %struct.mls_level** %198, align 8
  %200 = getelementptr inbounds %struct.mls_level, %struct.mls_level* %199, i64 1
  store %struct.mls_level* %200, %struct.mls_level** %15, align 8
  %201 = load %struct.context*, %struct.context** %7, align 8
  %202 = getelementptr inbounds %struct.context, %struct.context* %201, i32 0, i32 3
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 0
  %204 = load %struct.mls_level*, %struct.mls_level** %203, align 8
  %205 = getelementptr inbounds %struct.mls_level, %struct.mls_level* %204, i64 0
  store %struct.mls_level* %205, %struct.mls_level** %16, align 8
  br label %239

206:                                              ; preds = %89
  %207 = load %struct.context*, %struct.context** %6, align 8
  %208 = getelementptr inbounds %struct.context, %struct.context* %207, i32 0, i32 3
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 0
  %210 = load %struct.mls_level*, %struct.mls_level** %209, align 8
  %211 = getelementptr inbounds %struct.mls_level, %struct.mls_level* %210, i64 1
  store %struct.mls_level* %211, %struct.mls_level** %15, align 8
  %212 = load %struct.context*, %struct.context** %7, align 8
  %213 = getelementptr inbounds %struct.context, %struct.context* %212, i32 0, i32 3
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 0
  %215 = load %struct.mls_level*, %struct.mls_level** %214, align 8
  %216 = getelementptr inbounds %struct.mls_level, %struct.mls_level* %215, i64 1
  store %struct.mls_level* %216, %struct.mls_level** %16, align 8
  br label %239

217:                                              ; preds = %89
  %218 = load %struct.context*, %struct.context** %6, align 8
  %219 = getelementptr inbounds %struct.context, %struct.context* %218, i32 0, i32 3
  %220 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %219, i32 0, i32 0
  %221 = load %struct.mls_level*, %struct.mls_level** %220, align 8
  %222 = getelementptr inbounds %struct.mls_level, %struct.mls_level* %221, i64 0
  store %struct.mls_level* %222, %struct.mls_level** %15, align 8
  %223 = load %struct.context*, %struct.context** %6, align 8
  %224 = getelementptr inbounds %struct.context, %struct.context* %223, i32 0, i32 3
  %225 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %224, i32 0, i32 0
  %226 = load %struct.mls_level*, %struct.mls_level** %225, align 8
  %227 = getelementptr inbounds %struct.mls_level, %struct.mls_level* %226, i64 1
  store %struct.mls_level* %227, %struct.mls_level** %16, align 8
  br label %239

228:                                              ; preds = %89
  %229 = load %struct.context*, %struct.context** %7, align 8
  %230 = getelementptr inbounds %struct.context, %struct.context* %229, i32 0, i32 3
  %231 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %230, i32 0, i32 0
  %232 = load %struct.mls_level*, %struct.mls_level** %231, align 8
  %233 = getelementptr inbounds %struct.mls_level, %struct.mls_level* %232, i64 0
  store %struct.mls_level* %233, %struct.mls_level** %15, align 8
  %234 = load %struct.context*, %struct.context** %7, align 8
  %235 = getelementptr inbounds %struct.context, %struct.context* %234, i32 0, i32 3
  %236 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %235, i32 0, i32 0
  %237 = load %struct.mls_level*, %struct.mls_level** %236, align 8
  %238 = getelementptr inbounds %struct.mls_level, %struct.mls_level* %237, i64 1
  store %struct.mls_level* %238, %struct.mls_level** %16, align 8
  br label %239

239:                                              ; preds = %228, %217, %206, %195, %184, %173
  %240 = load %struct.constraint_expr*, %struct.constraint_expr** %17, align 8
  %241 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %240, i32 0, i32 3
  %242 = load i32, i32* %241, align 4
  switch i32 %242, label %286 [
    i32 142, label %243
    i32 133, label %251
    i32 144, label %262
    i32 143, label %270
    i32 139, label %278
  ]

243:                                              ; preds = %239
  %244 = load %struct.mls_level*, %struct.mls_level** %15, align 8
  %245 = load %struct.mls_level*, %struct.mls_level** %16, align 8
  %246 = call i32 @mls_level_eq(%struct.mls_level* %244, %struct.mls_level* %245)
  %247 = load i32, i32* %20, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %20, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %25, i64 %249
  store i32 %246, i32* %250, align 4
  br label %413

251:                                              ; preds = %239
  %252 = load %struct.mls_level*, %struct.mls_level** %15, align 8
  %253 = load %struct.mls_level*, %struct.mls_level** %16, align 8
  %254 = call i32 @mls_level_eq(%struct.mls_level* %252, %struct.mls_level* %253)
  %255 = icmp ne i32 %254, 0
  %256 = xor i1 %255, true
  %257 = zext i1 %256 to i32
  %258 = load i32, i32* %20, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %20, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i32, i32* %25, i64 %260
  store i32 %257, i32* %261, align 4
  br label %413

262:                                              ; preds = %239
  %263 = load %struct.mls_level*, %struct.mls_level** %15, align 8
  %264 = load %struct.mls_level*, %struct.mls_level** %16, align 8
  %265 = call i32 @mls_level_dom(%struct.mls_level* %263, %struct.mls_level* %264)
  %266 = load i32, i32* %20, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %20, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %25, i64 %268
  store i32 %265, i32* %269, align 4
  br label %413

270:                                              ; preds = %239
  %271 = load %struct.mls_level*, %struct.mls_level** %16, align 8
  %272 = load %struct.mls_level*, %struct.mls_level** %15, align 8
  %273 = call i32 @mls_level_dom(%struct.mls_level* %271, %struct.mls_level* %272)
  %274 = load i32, i32* %20, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %20, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i32, i32* %25, i64 %276
  store i32 %273, i32* %277, align 4
  br label %413

278:                                              ; preds = %239
  %279 = load %struct.mls_level*, %struct.mls_level** %16, align 8
  %280 = load %struct.mls_level*, %struct.mls_level** %15, align 8
  %281 = call i32 @mls_level_incomp(%struct.mls_level* %279, %struct.mls_level* %280)
  %282 = load i32, i32* %20, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %20, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i32, i32* %25, i64 %284
  store i32 %281, i32* %285, align 4
  br label %413

286:                                              ; preds = %239
  %287 = call i32 (...) @BUG()
  store i32 0, i32* %5, align 4
  store i32 1, i32* %21, align 4
  br label %424

288:                                              ; preds = %89
  %289 = call i32 (...) @BUG()
  store i32 0, i32* %5, align 4
  store i32 1, i32* %21, align 4
  br label %424

290:                                              ; preds = %172, %100, %93
  %291 = load %struct.constraint_expr*, %struct.constraint_expr** %17, align 8
  %292 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %291, i32 0, i32 3
  %293 = load i32, i32* %292, align 4
  switch i32 %293, label %312 [
    i32 142, label %294
    i32 133, label %303
  ]

294:                                              ; preds = %290
  %295 = load i32, i32* %10, align 4
  %296 = load i32, i32* %11, align 4
  %297 = icmp eq i32 %295, %296
  %298 = zext i1 %297 to i32
  %299 = load i32, i32* %20, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %20, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i32, i32* %25, i64 %301
  store i32 %298, i32* %302, align 4
  br label %314

303:                                              ; preds = %290
  %304 = load i32, i32* %10, align 4
  %305 = load i32, i32* %11, align 4
  %306 = icmp ne i32 %304, %305
  %307 = zext i1 %306 to i32
  %308 = load i32, i32* %20, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %20, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i32, i32* %25, i64 %310
  store i32 %307, i32* %311, align 4
  br label %314

312:                                              ; preds = %290
  %313 = call i32 (...) @BUG()
  store i32 0, i32* %5, align 4
  store i32 1, i32* %21, align 4
  br label %424

314:                                              ; preds = %303, %294
  br label %412

315:                                              ; preds = %30
  %316 = load i32, i32* %20, align 4
  %317 = load i32, i32* @CEXPR_MAXDEPTH, align 4
  %318 = sub nsw i32 %317, 1
  %319 = icmp eq i32 %316, %318
  br i1 %319, label %320, label %321

320:                                              ; preds = %315
  store i32 0, i32* %5, align 4
  store i32 1, i32* %21, align 4
  br label %424

321:                                              ; preds = %315
  %322 = load %struct.context*, %struct.context** %6, align 8
  store %struct.context* %322, %struct.context** %12, align 8
  %323 = load %struct.constraint_expr*, %struct.constraint_expr** %17, align 8
  %324 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 4
  %326 = load i32, i32* @CEXPR_TARGET, align 4
  %327 = and i32 %325, %326
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %331

329:                                              ; preds = %321
  %330 = load %struct.context*, %struct.context** %7, align 8
  store %struct.context* %330, %struct.context** %12, align 8
  br label %346

331:                                              ; preds = %321
  %332 = load %struct.constraint_expr*, %struct.constraint_expr** %17, align 8
  %333 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %332, i32 0, i32 1
  %334 = load i32, i32* %333, align 4
  %335 = load i32, i32* @CEXPR_XTARGET, align 4
  %336 = and i32 %334, %335
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %345

338:                                              ; preds = %331
  %339 = load %struct.context*, %struct.context** %8, align 8
  store %struct.context* %339, %struct.context** %12, align 8
  %340 = load %struct.context*, %struct.context** %12, align 8
  %341 = icmp ne %struct.context* %340, null
  br i1 %341, label %344, label %342

342:                                              ; preds = %338
  %343 = call i32 (...) @BUG()
  store i32 0, i32* %5, align 4
  store i32 1, i32* %21, align 4
  br label %424

344:                                              ; preds = %338
  br label %345

345:                                              ; preds = %344, %331
  br label %346

346:                                              ; preds = %345, %329
  %347 = load %struct.constraint_expr*, %struct.constraint_expr** %17, align 8
  %348 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %347, i32 0, i32 1
  %349 = load i32, i32* %348, align 4
  %350 = and i32 %349, 128
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %356

352:                                              ; preds = %346
  %353 = load %struct.context*, %struct.context** %12, align 8
  %354 = getelementptr inbounds %struct.context, %struct.context* %353, i32 0, i32 2
  %355 = load i32, i32* %354, align 8
  store i32 %355, i32* %10, align 4
  br label %380

356:                                              ; preds = %346
  %357 = load %struct.constraint_expr*, %struct.constraint_expr** %17, align 8
  %358 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %357, i32 0, i32 1
  %359 = load i32, i32* %358, align 4
  %360 = and i32 %359, 130
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %366

362:                                              ; preds = %356
  %363 = load %struct.context*, %struct.context** %12, align 8
  %364 = getelementptr inbounds %struct.context, %struct.context* %363, i32 0, i32 1
  %365 = load i32, i32* %364, align 4
  store i32 %365, i32* %10, align 4
  br label %379

366:                                              ; preds = %356
  %367 = load %struct.constraint_expr*, %struct.constraint_expr** %17, align 8
  %368 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %367, i32 0, i32 1
  %369 = load i32, i32* %368, align 4
  %370 = and i32 %369, 129
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %372, label %376

372:                                              ; preds = %366
  %373 = load %struct.context*, %struct.context** %12, align 8
  %374 = getelementptr inbounds %struct.context, %struct.context* %373, i32 0, i32 0
  %375 = load i32, i32* %374, align 8
  store i32 %375, i32* %10, align 4
  br label %378

376:                                              ; preds = %366
  %377 = call i32 (...) @BUG()
  store i32 0, i32* %5, align 4
  store i32 1, i32* %21, align 4
  br label %424

378:                                              ; preds = %372
  br label %379

379:                                              ; preds = %378, %362
  br label %380

380:                                              ; preds = %379, %352
  %381 = load %struct.constraint_expr*, %struct.constraint_expr** %17, align 8
  %382 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %381, i32 0, i32 3
  %383 = load i32, i32* %382, align 4
  switch i32 %383, label %407 [
    i32 142, label %384
    i32 133, label %394
  ]

384:                                              ; preds = %380
  %385 = load %struct.constraint_expr*, %struct.constraint_expr** %17, align 8
  %386 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %385, i32 0, i32 2
  %387 = load i32, i32* %10, align 4
  %388 = sub nsw i32 %387, 1
  %389 = call i32 @ebitmap_get_bit(i32* %386, i32 %388)
  %390 = load i32, i32* %20, align 4
  %391 = add nsw i32 %390, 1
  store i32 %391, i32* %20, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds i32, i32* %25, i64 %392
  store i32 %389, i32* %393, align 4
  br label %409

394:                                              ; preds = %380
  %395 = load %struct.constraint_expr*, %struct.constraint_expr** %17, align 8
  %396 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %395, i32 0, i32 2
  %397 = load i32, i32* %10, align 4
  %398 = sub nsw i32 %397, 1
  %399 = call i32 @ebitmap_get_bit(i32* %396, i32 %398)
  %400 = icmp ne i32 %399, 0
  %401 = xor i1 %400, true
  %402 = zext i1 %401 to i32
  %403 = load i32, i32* %20, align 4
  %404 = add nsw i32 %403, 1
  store i32 %404, i32* %20, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds i32, i32* %25, i64 %405
  store i32 %402, i32* %406, align 4
  br label %409

407:                                              ; preds = %380
  %408 = call i32 (...) @BUG()
  store i32 0, i32* %5, align 4
  store i32 1, i32* %21, align 4
  br label %424

409:                                              ; preds = %394, %384
  br label %412

410:                                              ; preds = %30
  %411 = call i32 (...) @BUG()
  store i32 0, i32* %5, align 4
  store i32 1, i32* %21, align 4
  br label %424

412:                                              ; preds = %409, %314, %66, %49, %34
  br label %413

413:                                              ; preds = %412, %278, %270, %262, %251, %243, %164, %139, %129
  %414 = load %struct.constraint_expr*, %struct.constraint_expr** %17, align 8
  %415 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %414, i32 0, i32 4
  %416 = load %struct.constraint_expr*, %struct.constraint_expr** %415, align 8
  store %struct.constraint_expr* %416, %struct.constraint_expr** %17, align 8
  br label %27

417:                                              ; preds = %27
  %418 = load i32, i32* %20, align 4
  %419 = icmp ne i32 %418, 0
  %420 = zext i1 %419 to i32
  %421 = call i32 @BUG_ON(i32 %420)
  %422 = getelementptr inbounds i32, i32* %25, i64 0
  %423 = load i32, i32* %422, align 16
  store i32 %423, i32* %5, align 4
  store i32 1, i32* %21, align 4
  br label %424

424:                                              ; preds = %417, %410, %407, %376, %342, %320, %312, %288, %286, %88
  %425 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %425)
  %426 = load i32, i32* %5, align 4
  ret i32 %426
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @BUG_ON(i32) #2

declare dso_local i32 @ebitmap_get_bit(i32*, i32) #2

declare dso_local i32 @mls_level_eq(%struct.mls_level*, %struct.mls_level*) #2

declare dso_local i32 @mls_level_dom(%struct.mls_level*, %struct.mls_level*) #2

declare dso_local i32 @mls_level_incomp(%struct.mls_level*, %struct.mls_level*) #2

declare dso_local i32 @BUG(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
