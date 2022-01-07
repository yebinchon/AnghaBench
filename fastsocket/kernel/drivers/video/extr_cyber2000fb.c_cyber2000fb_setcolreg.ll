; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_cyber2000fb.c_cyber2000fb_setcolreg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_cyber2000fb.c_cyber2000fb_setcolreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }
%struct.cfb_info = type { %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i64, %struct.TYPE_5__, %struct.fb_var_screeninfo }
%struct.TYPE_5__ = type { i32 }
%struct.fb_var_screeninfo = type { %struct.TYPE_8__, %struct.TYPE_8__, %struct.TYPE_8__, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@NR_PALETTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, %struct.fb_info*)* @cyber2000fb_setcolreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cyber2000fb_setcolreg(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.fb_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fb_info*, align 8
  %14 = alloca %struct.cfb_info*, align 8
  %15 = alloca %struct.fb_var_screeninfo*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.fb_info* %5, %struct.fb_info** %13, align 8
  %18 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %19 = bitcast %struct.fb_info* %18 to %struct.cfb_info*
  store %struct.cfb_info* %19, %struct.cfb_info** %14, align 8
  %20 = load %struct.cfb_info*, %struct.cfb_info** %14, align 8
  %21 = getelementptr inbounds %struct.cfb_info, %struct.cfb_info* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 2
  store %struct.fb_var_screeninfo* %22, %struct.fb_var_screeninfo** %15, align 8
  store i32 1, i32* %17, align 4
  %23 = load %struct.cfb_info*, %struct.cfb_info** %14, align 8
  %24 = getelementptr inbounds %struct.cfb_info, %struct.cfb_info* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %28 [
    i32 129, label %29
    i32 130, label %77
    i32 128, label %261
  ]

28:                                               ; preds = %6
  store i32 1, i32* %7, align 4
  br label %300

29:                                               ; preds = %6
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @NR_PALETTE, align 4
  %32 = icmp sge i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32 1, i32* %7, align 4
  br label %300

34:                                               ; preds = %29
  %35 = load i32, i32* %9, align 4
  %36 = ashr i32 %35, 8
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %10, align 4
  %38 = ashr i32 %37, 8
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %11, align 4
  %40 = ashr i32 %39, 8
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.cfb_info*, %struct.cfb_info** %14, align 8
  %43 = getelementptr inbounds %struct.cfb_info, %struct.cfb_info* %42, i32 0, i32 1
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  store i32 %41, i32* %48, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.cfb_info*, %struct.cfb_info** %14, align 8
  %51 = getelementptr inbounds %struct.cfb_info, %struct.cfb_info* %50, i32 0, i32 1
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  store i32 %49, i32* %56, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load %struct.cfb_info*, %struct.cfb_info** %14, align 8
  %59 = getelementptr inbounds %struct.cfb_info, %struct.cfb_info* %58, i32 0, i32 1
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 2
  store i32 %57, i32* %64, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.cfb_info*, %struct.cfb_info** %14, align 8
  %67 = call i32 @cyber2000fb_writeb(i32 %65, i32 968, %struct.cfb_info* %66)
  %68 = load i32, i32* %9, align 4
  %69 = load %struct.cfb_info*, %struct.cfb_info** %14, align 8
  %70 = call i32 @cyber2000fb_writeb(i32 %68, i32 969, %struct.cfb_info* %69)
  %71 = load i32, i32* %10, align 4
  %72 = load %struct.cfb_info*, %struct.cfb_info** %14, align 8
  %73 = call i32 @cyber2000fb_writeb(i32 %71, i32 969, %struct.cfb_info* %72)
  %74 = load i32, i32* %11, align 4
  %75 = load %struct.cfb_info*, %struct.cfb_info** %14, align 8
  %76 = call i32 @cyber2000fb_writeb(i32 %74, i32 969, %struct.cfb_info* %75)
  store i32 0, i32* %7, align 4
  br label %300

77:                                               ; preds = %6
  %78 = load i32, i32* %9, align 4
  %79 = ashr i32 %78, 8
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %10, align 4
  %81 = ashr i32 %80, 8
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %11, align 4
  %83 = ashr i32 %82, 8
  store i32 %83, i32* %11, align 4
  %84 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %15, align 8
  %85 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp eq i32 %87, 6
  br i1 %88, label %89, label %140

89:                                               ; preds = %77
  %90 = load i32, i32* %8, align 4
  %91 = icmp slt i32 %90, 64
  br i1 %91, label %92, label %140

92:                                               ; preds = %89
  %93 = load i32, i32* %10, align 4
  %94 = load %struct.cfb_info*, %struct.cfb_info** %14, align 8
  %95 = getelementptr inbounds %struct.cfb_info, %struct.cfb_info* %94, i32 0, i32 1
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = load i32, i32* %8, align 4
  %98 = shl i32 %97, 2
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  store i32 %93, i32* %101, align 4
  %102 = load i32, i32* %8, align 4
  %103 = shl i32 %102, 2
  %104 = load %struct.cfb_info*, %struct.cfb_info** %14, align 8
  %105 = call i32 @cyber2000fb_writeb(i32 %103, i32 968, %struct.cfb_info* %104)
  %106 = load %struct.cfb_info*, %struct.cfb_info** %14, align 8
  %107 = getelementptr inbounds %struct.cfb_info, %struct.cfb_info* %106, i32 0, i32 1
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = load i32, i32* %8, align 4
  %110 = ashr i32 %109, 1
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.cfb_info*, %struct.cfb_info** %14, align 8
  %116 = call i32 @cyber2000fb_writeb(i32 %114, i32 969, %struct.cfb_info* %115)
  %117 = load i32, i32* %10, align 4
  %118 = load %struct.cfb_info*, %struct.cfb_info** %14, align 8
  %119 = call i32 @cyber2000fb_writeb(i32 %117, i32 969, %struct.cfb_info* %118)
  %120 = load %struct.cfb_info*, %struct.cfb_info** %14, align 8
  %121 = getelementptr inbounds %struct.cfb_info, %struct.cfb_info* %120, i32 0, i32 1
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %121, align 8
  %123 = load i32, i32* %8, align 4
  %124 = ashr i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.cfb_info*, %struct.cfb_info** %14, align 8
  %130 = call i32 @cyber2000fb_writeb(i32 %128, i32 969, %struct.cfb_info* %129)
  %131 = load %struct.cfb_info*, %struct.cfb_info** %14, align 8
  %132 = getelementptr inbounds %struct.cfb_info, %struct.cfb_info* %131, i32 0, i32 1
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %132, align 8
  %134 = load i32, i32* %8, align 4
  %135 = shl i32 %134, 3
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  store i32 %139, i32* %10, align 4
  store i32 0, i32* %17, align 4
  br label %140

140:                                              ; preds = %92, %89, %77
  %141 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %15, align 8
  %142 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = icmp sge i32 %144, 5
  br i1 %145, label %146, label %190

146:                                              ; preds = %140
  %147 = load i32, i32* %8, align 4
  %148 = icmp slt i32 %147, 32
  br i1 %148, label %149, label %190

149:                                              ; preds = %146
  %150 = load i32, i32* %9, align 4
  %151 = load %struct.cfb_info*, %struct.cfb_info** %14, align 8
  %152 = getelementptr inbounds %struct.cfb_info, %struct.cfb_info* %151, i32 0, i32 1
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %152, align 8
  %154 = load i32, i32* %8, align 4
  %155 = shl i32 %154, 3
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 0
  store i32 %150, i32* %158, align 4
  %159 = load i32, i32* %10, align 4
  %160 = load %struct.cfb_info*, %struct.cfb_info** %14, align 8
  %161 = getelementptr inbounds %struct.cfb_info, %struct.cfb_info* %160, i32 0, i32 1
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %161, align 8
  %163 = load i32, i32* %8, align 4
  %164 = shl i32 %163, 3
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 1
  store i32 %159, i32* %167, align 4
  %168 = load i32, i32* %11, align 4
  %169 = load %struct.cfb_info*, %struct.cfb_info** %14, align 8
  %170 = getelementptr inbounds %struct.cfb_info, %struct.cfb_info* %169, i32 0, i32 1
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %170, align 8
  %172 = load i32, i32* %8, align 4
  %173 = shl i32 %172, 3
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 2
  store i32 %168, i32* %176, align 4
  %177 = load i32, i32* %8, align 4
  %178 = shl i32 %177, 3
  %179 = load %struct.cfb_info*, %struct.cfb_info** %14, align 8
  %180 = call i32 @cyber2000fb_writeb(i32 %178, i32 968, %struct.cfb_info* %179)
  %181 = load i32, i32* %9, align 4
  %182 = load %struct.cfb_info*, %struct.cfb_info** %14, align 8
  %183 = call i32 @cyber2000fb_writeb(i32 %181, i32 969, %struct.cfb_info* %182)
  %184 = load i32, i32* %10, align 4
  %185 = load %struct.cfb_info*, %struct.cfb_info** %14, align 8
  %186 = call i32 @cyber2000fb_writeb(i32 %184, i32 969, %struct.cfb_info* %185)
  %187 = load i32, i32* %11, align 4
  %188 = load %struct.cfb_info*, %struct.cfb_info** %14, align 8
  %189 = call i32 @cyber2000fb_writeb(i32 %187, i32 969, %struct.cfb_info* %188)
  store i32 0, i32* %17, align 4
  br label %190

190:                                              ; preds = %149, %146, %140
  %191 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %15, align 8
  %192 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = icmp eq i32 %194, 4
  br i1 %195, label %196, label %240

196:                                              ; preds = %190
  %197 = load i32, i32* %8, align 4
  %198 = icmp slt i32 %197, 16
  br i1 %198, label %199, label %240

199:                                              ; preds = %196
  %200 = load i32, i32* %9, align 4
  %201 = load %struct.cfb_info*, %struct.cfb_info** %14, align 8
  %202 = getelementptr inbounds %struct.cfb_info, %struct.cfb_info* %201, i32 0, i32 1
  %203 = load %struct.TYPE_6__*, %struct.TYPE_6__** %202, align 8
  %204 = load i32, i32* %8, align 4
  %205 = shl i32 %204, 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 0
  store i32 %200, i32* %208, align 4
  %209 = load i32, i32* %10, align 4
  %210 = load %struct.cfb_info*, %struct.cfb_info** %14, align 8
  %211 = getelementptr inbounds %struct.cfb_info, %struct.cfb_info* %210, i32 0, i32 1
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** %211, align 8
  %213 = load i32, i32* %8, align 4
  %214 = shl i32 %213, 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 1
  store i32 %209, i32* %217, align 4
  %218 = load i32, i32* %11, align 4
  %219 = load %struct.cfb_info*, %struct.cfb_info** %14, align 8
  %220 = getelementptr inbounds %struct.cfb_info, %struct.cfb_info* %219, i32 0, i32 1
  %221 = load %struct.TYPE_6__*, %struct.TYPE_6__** %220, align 8
  %222 = load i32, i32* %8, align 4
  %223 = shl i32 %222, 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 2
  store i32 %218, i32* %226, align 4
  %227 = load i32, i32* %8, align 4
  %228 = shl i32 %227, 4
  %229 = load %struct.cfb_info*, %struct.cfb_info** %14, align 8
  %230 = call i32 @cyber2000fb_writeb(i32 %228, i32 968, %struct.cfb_info* %229)
  %231 = load i32, i32* %9, align 4
  %232 = load %struct.cfb_info*, %struct.cfb_info** %14, align 8
  %233 = call i32 @cyber2000fb_writeb(i32 %231, i32 969, %struct.cfb_info* %232)
  %234 = load i32, i32* %10, align 4
  %235 = load %struct.cfb_info*, %struct.cfb_info** %14, align 8
  %236 = call i32 @cyber2000fb_writeb(i32 %234, i32 969, %struct.cfb_info* %235)
  %237 = load i32, i32* %11, align 4
  %238 = load %struct.cfb_info*, %struct.cfb_info** %14, align 8
  %239 = call i32 @cyber2000fb_writeb(i32 %237, i32 969, %struct.cfb_info* %238)
  store i32 0, i32* %17, align 4
  br label %240

240:                                              ; preds = %199, %196, %190
  %241 = load i32, i32* %8, align 4
  %242 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %15, align 8
  %243 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %242, i32 0, i32 2
  %244 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = shl i32 %241, %245
  %247 = load i32, i32* %8, align 4
  %248 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %15, align 8
  %249 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = shl i32 %247, %251
  %253 = or i32 %246, %252
  %254 = load i32, i32* %8, align 4
  %255 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %15, align 8
  %256 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = shl i32 %254, %258
  %260 = or i32 %253, %259
  store i32 %260, i32* %16, align 4
  br label %285

261:                                              ; preds = %6
  %262 = load i32, i32* %12, align 4
  %263 = xor i32 %262, 65535
  %264 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %15, align 8
  %265 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %264, i32 0, i32 3
  %266 = call i32 @convert_bitfield(i32 %263, %struct.TYPE_8__* %265)
  store i32 %266, i32* %16, align 4
  %267 = load i32, i32* %9, align 4
  %268 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %15, align 8
  %269 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %268, i32 0, i32 2
  %270 = call i32 @convert_bitfield(i32 %267, %struct.TYPE_8__* %269)
  %271 = load i32, i32* %16, align 4
  %272 = or i32 %271, %270
  store i32 %272, i32* %16, align 4
  %273 = load i32, i32* %10, align 4
  %274 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %15, align 8
  %275 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %274, i32 0, i32 1
  %276 = call i32 @convert_bitfield(i32 %273, %struct.TYPE_8__* %275)
  %277 = load i32, i32* %16, align 4
  %278 = or i32 %277, %276
  store i32 %278, i32* %16, align 4
  %279 = load i32, i32* %11, align 4
  %280 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %15, align 8
  %281 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %280, i32 0, i32 0
  %282 = call i32 @convert_bitfield(i32 %279, %struct.TYPE_8__* %281)
  %283 = load i32, i32* %16, align 4
  %284 = or i32 %283, %282
  store i32 %284, i32* %16, align 4
  br label %285

285:                                              ; preds = %261, %240
  %286 = load i32, i32* %8, align 4
  %287 = icmp slt i32 %286, 16
  br i1 %287, label %288, label %298

288:                                              ; preds = %285
  %289 = load i32, i32* %16, align 4
  %290 = load %struct.cfb_info*, %struct.cfb_info** %14, align 8
  %291 = getelementptr inbounds %struct.cfb_info, %struct.cfb_info* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %291, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = inttoptr i64 %293 to i32*
  %295 = load i32, i32* %8, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i32, i32* %294, i64 %296
  store i32 %289, i32* %297, align 4
  br label %298

298:                                              ; preds = %288, %285
  %299 = load i32, i32* %17, align 4
  store i32 %299, i32* %7, align 4
  br label %300

300:                                              ; preds = %298, %34, %33, %28
  %301 = load i32, i32* %7, align 4
  ret i32 %301
}

declare dso_local i32 @cyber2000fb_writeb(i32, i32, %struct.cfb_info*) #1

declare dso_local i32 @convert_bitfield(i32, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
