; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/telephony/extr_ixj.c_ixj_write_cidcw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/telephony/extr_ixj.c_ixj_write_cidcw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i32, i32, i32, i32, %struct.TYPE_21__, %struct.TYPE_20__, i32, i64, i64, i32, i64, i64, i64, %struct.TYPE_19__ }
%struct.TYPE_21__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_20__ = type { i64, i64 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_22__ = type { i32, i32, i64, i64, i32 }

@hz440 = common dso_local global i32 0, align 4
@ixjdebug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"IXJ cidcw phone%d first tone start at %ld\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"IXJ cidcw phone%d first tone end at %ld\0A\00", align 1
@hz2130 = common dso_local global i32 0, align 4
@hz2750 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [44 x i8] c"IXJ cidcw phone%d second tone start at %ld\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"IXJ cidcw phone%d sent second tone at %ld\0A\00", align 1
@hertz = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [56 x i8] c"IXJ cidcw phone%d did not receive ACK from display %ld\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"IXJ cidcw phone%d sent FSK data at %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_23__*)* @ixj_write_cidcw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixj_write_cidcw(%struct.TYPE_23__* %0) #0 {
  %2 = alloca %struct.TYPE_23__*, align 8
  %3 = alloca %struct.TYPE_22__, align 8
  %4 = alloca [50 x i8], align 16
  %5 = alloca [50 x i8], align 16
  %6 = alloca [80 x i8], align 16
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %2, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 14
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 32
  br i1 %17, label %24, label %18

18:                                               ; preds = %1
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 6
  %21 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18, %1
  br label %384

25:                                               ; preds = %18
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %26, i32 0, i32 3
  store i32 0, i32* %27, align 4
  %28 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %28, i32 0, i32 2
  store i32 0, i32* %29, align 8
  %30 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %30, i32 0, i32 1
  store i32 0, i32* %31, align 4
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  %34 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %34, i32 0, i32 12
  store i64 0, i64* %35, align 8
  %36 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %36, i32 0, i32 13
  store i64 0, i64* %37, align 8
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %39 = call i32 @ixj_fsk_alloc(%struct.TYPE_23__* %38)
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %40, i32 0, i32 6
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 0
  store i64 0, i64* %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %3, i32 0, i32 0
  store i32 23, i32* %43, align 8
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %3, i32 0, i32 1
  store i32 1, i32* %44, align 4
  %45 = load i32, i32* @hz440, align 4
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %3, i32 0, i32 4
  store i32 %45, i32* %46, align 8
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %3, i32 0, i32 3
  store i64 0, i64* %47, align 8
  %48 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %3, i32 0, i32 2
  store i64 0, i64* %48, align 8
  %49 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %50 = call i32 @ixj_init_tone(%struct.TYPE_23__* %49, %struct.TYPE_22__* %3)
  %51 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %52 = call i32 @ixj_set_tone_on(i32 1500, %struct.TYPE_23__* %51)
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %54 = call i32 @ixj_set_tone_off(i32 32, %struct.TYPE_23__* %53)
  %55 = load i32, i32* @ixjdebug, align 4
  %56 = and i32 %55, 512
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %25
  %59 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = load i64, i64* @jiffies, align 8
  %63 = call i32 @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %61, i64 %62)
  br label %64

64:                                               ; preds = %58, %25
  %65 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %66 = call i32 @ixj_play_tone(%struct.TYPE_23__* %65, i32 23)
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %70, i32 0, i32 10
  %72 = call i32 @clear_bit(i32 %69, i32* %71)
  br label %73

73:                                               ; preds = %78, %64
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %74, i32 0, i32 11
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = call i32 @schedule_timeout_interruptible(i32 1)
  br label %73

80:                                               ; preds = %73
  br label %81

81:                                               ; preds = %90, %80
  %82 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %85, i32 0, i32 10
  %87 = bitcast i32* %86 to i8*
  %88 = call i64 @test_and_set_bit(i32 %84, i8* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %81
  %91 = call i32 @schedule_timeout_interruptible(i32 1)
  br label %81

92:                                               ; preds = %81
  %93 = load i32, i32* @ixjdebug, align 4
  %94 = and i32 %93, 512
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %92
  %97 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = load i64, i64* @jiffies, align 8
  %101 = call i32 @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %99, i64 %100)
  br label %102

102:                                              ; preds = %96, %92
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %3, i32 0, i32 0
  store i32 24, i32* %103, align 8
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %3, i32 0, i32 1
  store i32 1, i32* %104, align 4
  %105 = load i32, i32* @hz2130, align 4
  %106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %3, i32 0, i32 4
  store i32 %105, i32* %106, align 8
  %107 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %3, i32 0, i32 3
  store i64 0, i64* %107, align 8
  %108 = load i64, i64* @hz2750, align 8
  %109 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %3, i32 0, i32 2
  store i64 %108, i64* %109, align 8
  %110 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %111 = call i32 @ixj_init_tone(%struct.TYPE_23__* %110, %struct.TYPE_22__* %3)
  %112 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %113 = call i32 @ixj_set_tone_off(i32 10, %struct.TYPE_23__* %112)
  %114 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %115 = call i32 @ixj_set_tone_on(i32 600, %struct.TYPE_23__* %114)
  %116 = load i32, i32* @ixjdebug, align 4
  %117 = and i32 %116, 512
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %102
  %120 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 8
  %123 = load i64, i64* @jiffies, align 8
  %124 = call i32 @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %122, i64 %123)
  br label %125

125:                                              ; preds = %119, %102
  %126 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %127 = call i32 @ixj_play_tone(%struct.TYPE_23__* %126, i32 24)
  %128 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %131, i32 0, i32 10
  %133 = call i32 @clear_bit(i32 %130, i32* %132)
  br label %134

134:                                              ; preds = %139, %125
  %135 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %135, i32 0, i32 11
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %134
  %140 = call i32 @schedule_timeout_interruptible(i32 1)
  br label %134

141:                                              ; preds = %134
  br label %142

142:                                              ; preds = %151, %141
  %143 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %146, i32 0, i32 10
  %148 = bitcast i32* %147 to i8*
  %149 = call i64 @test_and_set_bit(i32 %145, i8* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %142
  %152 = call i32 @schedule_timeout_interruptible(i32 1)
  br label %142

153:                                              ; preds = %142
  %154 = load i32, i32* @ixjdebug, align 4
  %155 = and i32 %154, 512
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %153
  %158 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %159 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 8
  %161 = load i64, i64* @jiffies, align 8
  %162 = call i32 @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %160, i64 %161)
  br label %163

163:                                              ; preds = %157, %153
  %164 = load i64, i64* @jiffies, align 8
  %165 = load i32, i32* @hertz, align 4
  %166 = mul nsw i32 50, %165
  %167 = sdiv i32 %166, 100
  %168 = sext i32 %167 to i64
  %169 = add nsw i64 %164, %168
  %170 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %171 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %170, i32 0, i32 9
  store i64 %169, i64* %171, align 8
  %172 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %173 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %172, i32 0, i32 4
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %176 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %175, i32 0, i32 10
  %177 = call i32 @clear_bit(i32 %174, i32* %176)
  br label %178

178:                                              ; preds = %193, %163
  %179 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %180 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %179, i32 0, i32 6
  %181 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %191, label %184

184:                                              ; preds = %178
  %185 = load i64, i64* @jiffies, align 8
  %186 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %187 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %186, i32 0, i32 9
  %188 = load i64, i64* %187, align 8
  %189 = call i64 @time_before(i64 %185, i64 %188)
  %190 = icmp ne i64 %189, 0
  br label %191

191:                                              ; preds = %184, %178
  %192 = phi i1 [ false, %178 ], [ %190, %184 ]
  br i1 %192, label %193, label %195

193:                                              ; preds = %191
  %194 = call i32 @schedule_timeout_interruptible(i32 1)
  br label %178

195:                                              ; preds = %191
  br label %196

196:                                              ; preds = %205, %195
  %197 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %198 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %197, i32 0, i32 4
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %201 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %200, i32 0, i32 10
  %202 = bitcast i32* %201 to i8*
  %203 = call i64 @test_and_set_bit(i32 %199, i8* %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %196
  %206 = call i32 @schedule_timeout_interruptible(i32 1)
  br label %196

207:                                              ; preds = %196
  %208 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %209 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %208, i32 0, i32 9
  store i64 0, i64* %209, align 8
  %210 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %211 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %210, i32 0, i32 6
  %212 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %237, label %215

215:                                              ; preds = %207
  %216 = load i32, i32* @ixjdebug, align 4
  %217 = and i32 %216, 512
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %225

219:                                              ; preds = %215
  %220 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %221 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %220, i32 0, i32 4
  %222 = load i32, i32* %221, align 8
  %223 = load i64, i64* @jiffies, align 8
  %224 = call i32 @printk(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0), i32 %222, i64 %223)
  br label %225

225:                                              ; preds = %219, %215
  %226 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %227 = call i32 @ixj_post_cid(%struct.TYPE_23__* %226)
  %228 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %229 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %228, i32 0, i32 8
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %236

232:                                              ; preds = %225
  %233 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %234 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %233, i32 0, i32 7
  %235 = call i32 @wake_up_interruptible(i32* %234)
  br label %236

236:                                              ; preds = %232, %225
  br label %384

237:                                              ; preds = %207
  %238 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %239 = call i32 @ixj_pre_cid(%struct.TYPE_23__* %238)
  br label %240

240:                                              ; preds = %237
  %241 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %242 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %241, i32 0, i32 6
  %243 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %242, i32 0, i32 0
  store i64 0, i64* %243, align 8
  %244 = getelementptr inbounds [50 x i8], [50 x i8]* %4, i64 0, i64 0
  %245 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %246 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %245, i32 0, i32 5
  %247 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %246, i32 0, i32 5
  %248 = load i32, i32* %247, align 4
  %249 = call i32 @strcpy(i8* %244, i32 %248)
  %250 = getelementptr inbounds [50 x i8], [50 x i8]* %4, i64 0, i64 0
  %251 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %252 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %251, i32 0, i32 5
  %253 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %252, i32 0, i32 4
  %254 = load i32, i32* %253, align 4
  %255 = call i32 @strcat(i8* %250, i32 %254)
  %256 = getelementptr inbounds [50 x i8], [50 x i8]* %4, i64 0, i64 0
  %257 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %258 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %257, i32 0, i32 5
  %259 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %258, i32 0, i32 3
  %260 = load i32, i32* %259, align 4
  %261 = call i32 @strcat(i8* %256, i32 %260)
  %262 = getelementptr inbounds [50 x i8], [50 x i8]* %4, i64 0, i64 0
  %263 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %264 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %263, i32 0, i32 5
  %265 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 4
  %267 = call i32 @strcat(i8* %262, i32 %266)
  %268 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %269 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %270 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %269, i32 0, i32 5
  %271 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = call i32 @strcpy(i8* %268, i32 %272)
  %274 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 0
  %275 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %276 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %275, i32 0, i32 5
  %277 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = call i32 @strcpy(i8* %274, i32 %278)
  %280 = getelementptr inbounds [50 x i8], [50 x i8]* %4, i64 0, i64 0
  %281 = call signext i8 @strlen(i8* %280)
  store i8 %281, i8* %8, align 1
  %282 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %283 = call signext i8 @strlen(i8* %282)
  store i8 %283, i8* %9, align 1
  %284 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 0
  %285 = call signext i8 @strlen(i8* %284)
  store i8 %285, i8* %10, align 1
  %286 = load i8, i8* %8, align 1
  %287 = sext i8 %286 to i32
  %288 = load i8, i8* %9, align 1
  %289 = sext i8 %288 to i32
  %290 = add nsw i32 %287, %289
  %291 = load i8, i8* %10, align 1
  %292 = sext i8 %291 to i32
  %293 = add nsw i32 %290, %292
  %294 = add nsw i32 %293, 6
  %295 = trunc i32 %294 to i8
  store i8 %295, i8* %7, align 1
  %296 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %297 = call i32 @ixj_write_cidcw_seize(%struct.TYPE_23__* %296)
  %298 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %299 = call i32 @ixj_write_cid_byte(%struct.TYPE_23__* %298, i8 signext -128)
  store i32 128, i32* %12, align 4
  %300 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %301 = load i8, i8* %7, align 1
  %302 = call i32 @ixj_write_cid_byte(%struct.TYPE_23__* %300, i8 signext %301)
  %303 = load i32, i32* %12, align 4
  %304 = load i8, i8* %7, align 1
  %305 = sext i8 %304 to i32
  %306 = add nsw i32 %303, %305
  store i32 %306, i32* %12, align 4
  %307 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %308 = call i32 @ixj_write_cid_byte(%struct.TYPE_23__* %307, i8 signext 1)
  %309 = load i32, i32* %12, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %12, align 4
  %311 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %312 = load i8, i8* %8, align 1
  %313 = call i32 @ixj_write_cid_byte(%struct.TYPE_23__* %311, i8 signext %312)
  %314 = load i32, i32* %12, align 4
  %315 = load i8, i8* %8, align 1
  %316 = sext i8 %315 to i32
  %317 = add nsw i32 %314, %316
  store i32 %317, i32* %12, align 4
  %318 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %319 = getelementptr inbounds [50 x i8], [50 x i8]* %4, i64 0, i64 0
  %320 = load i32, i32* %12, align 4
  %321 = call i32 @ixj_write_cid_string(%struct.TYPE_23__* %318, i8* %319, i32 %320)
  store i32 %321, i32* %12, align 4
  %322 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %323 = call i32 @ixj_write_cid_byte(%struct.TYPE_23__* %322, i8 signext 2)
  %324 = load i32, i32* %12, align 4
  %325 = add nsw i32 %324, 2
  store i32 %325, i32* %12, align 4
  %326 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %327 = load i8, i8* %9, align 1
  %328 = call i32 @ixj_write_cid_byte(%struct.TYPE_23__* %326, i8 signext %327)
  %329 = load i32, i32* %12, align 4
  %330 = load i8, i8* %9, align 1
  %331 = sext i8 %330 to i32
  %332 = add nsw i32 %329, %331
  store i32 %332, i32* %12, align 4
  %333 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %334 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %335 = load i32, i32* %12, align 4
  %336 = call i32 @ixj_write_cid_string(%struct.TYPE_23__* %333, i8* %334, i32 %335)
  store i32 %336, i32* %12, align 4
  %337 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %338 = call i32 @ixj_write_cid_byte(%struct.TYPE_23__* %337, i8 signext 7)
  %339 = load i32, i32* %12, align 4
  %340 = add nsw i32 %339, 7
  store i32 %340, i32* %12, align 4
  %341 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %342 = load i8, i8* %10, align 1
  %343 = call i32 @ixj_write_cid_byte(%struct.TYPE_23__* %341, i8 signext %342)
  %344 = load i32, i32* %12, align 4
  %345 = load i8, i8* %10, align 1
  %346 = sext i8 %345 to i32
  %347 = add nsw i32 %344, %346
  store i32 %347, i32* %12, align 4
  %348 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %349 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 0
  %350 = load i32, i32* %12, align 4
  %351 = call i32 @ixj_write_cid_string(%struct.TYPE_23__* %348, i8* %349, i32 %350)
  store i32 %351, i32* %12, align 4
  %352 = load i32, i32* %12, align 4
  %353 = srem i32 %352, 256
  store i32 %353, i32* %12, align 4
  %354 = load i32, i32* %12, align 4
  %355 = xor i32 %354, 255
  store i32 %355, i32* %12, align 4
  %356 = load i32, i32* %12, align 4
  %357 = add nsw i32 %356, 1
  store i32 %357, i32* %12, align 4
  %358 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %359 = load i32, i32* %12, align 4
  %360 = trunc i32 %359 to i8
  %361 = call i32 @ixj_write_cid_byte(%struct.TYPE_23__* %358, i8 signext %360)
  %362 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %363 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %362, i32 0, i32 3
  %364 = load i32, i32* %363, align 4
  %365 = srem i32 %364, 240
  store i32 %365, i32* %11, align 4
  %366 = load i32, i32* %11, align 4
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %371

368:                                              ; preds = %240
  %369 = load i32, i32* %11, align 4
  %370 = sub nsw i32 240, %369
  store i32 %370, i32* %11, align 4
  br label %371

371:                                              ; preds = %368, %240
  %372 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %373 = load i32, i32* %11, align 4
  %374 = call i32 @ixj_pad_fsk(%struct.TYPE_23__* %372, i32 %373)
  %375 = load i32, i32* @ixjdebug, align 4
  %376 = and i32 %375, 512
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %384

378:                                              ; preds = %371
  %379 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %380 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %379, i32 0, i32 4
  %381 = load i32, i32* %380, align 8
  %382 = load i64, i64* @jiffies, align 8
  %383 = call i32 @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %381, i64 %382)
  br label %384

384:                                              ; preds = %24, %236, %378, %371
  ret void
}

declare dso_local i32 @ixj_fsk_alloc(%struct.TYPE_23__*) #1

declare dso_local i32 @ixj_init_tone(%struct.TYPE_23__*, %struct.TYPE_22__*) #1

declare dso_local i32 @ixj_set_tone_on(i32, %struct.TYPE_23__*) #1

declare dso_local i32 @ixj_set_tone_off(i32, %struct.TYPE_23__*) #1

declare dso_local i32 @printk(i8*, i32, i64) #1

declare dso_local i32 @ixj_play_tone(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @schedule_timeout_interruptible(i32) #1

declare dso_local i64 @test_and_set_bit(i32, i8*) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @ixj_post_cid(%struct.TYPE_23__*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @ixj_pre_cid(%struct.TYPE_23__*) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @strcat(i8*, i32) #1

declare dso_local signext i8 @strlen(i8*) #1

declare dso_local i32 @ixj_write_cidcw_seize(%struct.TYPE_23__*) #1

declare dso_local i32 @ixj_write_cid_byte(%struct.TYPE_23__*, i8 signext) #1

declare dso_local i32 @ixj_write_cid_string(%struct.TYPE_23__*, i8*, i32) #1

declare dso_local i32 @ixj_pad_fsk(%struct.TYPE_23__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
