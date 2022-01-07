; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_au1550_ac97.c_prog_dmabuf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_au1550_ac97.c_prog_dmabuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au1550_state = type { i32 }
%struct.dmabuf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"prog_dmabuf: rate=%d, samplesize=%d, channels=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"prog_dmabuf: fragsize=%d, cnt_factor=%d, dma_fragsize=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"prog_dmabuf: numfrag=%d, dmasize=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.au1550_state*, %struct.dmabuf*)* @prog_dmabuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prog_dmabuf(%struct.au1550_state* %0, %struct.dmabuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.au1550_state*, align 8
  %5 = alloca %struct.dmabuf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.au1550_state* %0, %struct.au1550_state** %4, align 8
  store %struct.dmabuf* %1, %struct.dmabuf** %5, align 8
  %9 = load %struct.dmabuf*, %struct.dmabuf** %5, align 8
  %10 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %8, align 4
  %12 = load %struct.dmabuf*, %struct.dmabuf** %5, align 8
  %13 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %12, i32 0, i32 18
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %40, label %16

16:                                               ; preds = %2
  %17 = load %struct.dmabuf*, %struct.dmabuf** %5, align 8
  %18 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %17, i32 0, i32 2
  store i32 0, i32* %18, align 8
  %19 = load %struct.dmabuf*, %struct.dmabuf** %5, align 8
  %20 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %19, i32 0, i32 1
  store i32 0, i32* %20, align 4
  %21 = load %struct.dmabuf*, %struct.dmabuf** %5, align 8
  %22 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %21, i32 0, i32 3
  store i32 5, i32* %22, align 4
  %23 = load i32, i32* @PAGE_SIZE, align 4
  %24 = load %struct.dmabuf*, %struct.dmabuf** %5, align 8
  %25 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 %23, %26
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i64 @kmalloc(i32 %27, i32 %28)
  %30 = load %struct.dmabuf*, %struct.dmabuf** %5, align 8
  %31 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %30, i32 0, i32 18
  store i64 %29, i64* %31, align 8
  %32 = load %struct.dmabuf*, %struct.dmabuf** %5, align 8
  %33 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %32, i32 0, i32 18
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %16
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %290

39:                                               ; preds = %16
  br label %40

40:                                               ; preds = %39, %2
  %41 = load %struct.dmabuf*, %struct.dmabuf** %5, align 8
  %42 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %41, i32 0, i32 4
  store i32 1, i32* %42, align 8
  %43 = load %struct.dmabuf*, %struct.dmabuf** %5, align 8
  %44 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 8
  br i1 %46, label %47, label %52

47:                                               ; preds = %40
  %48 = load %struct.dmabuf*, %struct.dmabuf** %5, align 8
  %49 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = mul nsw i32 %50, 2
  store i32 %51, i32* %49, align 8
  br label %52

52:                                               ; preds = %47, %40
  %53 = load %struct.dmabuf*, %struct.dmabuf** %5, align 8
  %54 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 8
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load %struct.dmabuf*, %struct.dmabuf** %5, align 8
  %59 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = mul nsw i32 %60, 2
  store i32 %61, i32* %59, align 8
  br label %62

62:                                               ; preds = %57, %52
  %63 = load %struct.dmabuf*, %struct.dmabuf** %5, align 8
  %64 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %63, i32 0, i32 7
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.dmabuf*, %struct.dmabuf** %5, align 8
  %67 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = mul nsw i32 %68, %65
  store i32 %69, i32* %67, align 8
  %70 = load %struct.dmabuf*, %struct.dmabuf** %5, align 8
  %71 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %70, i32 0, i32 22
  store i64 0, i64* %71, align 8
  %72 = load %struct.dmabuf*, %struct.dmabuf** %5, align 8
  %73 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %72, i32 0, i32 21
  store i64 0, i64* %73, align 8
  %74 = load %struct.dmabuf*, %struct.dmabuf** %5, align 8
  %75 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %74, i32 0, i32 18
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.dmabuf*, %struct.dmabuf** %5, align 8
  %78 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %77, i32 0, i32 19
  store i64 %76, i64* %78, align 8
  %79 = load %struct.dmabuf*, %struct.dmabuf** %5, align 8
  %80 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %79, i32 0, i32 20
  store i64 %76, i64* %80, align 8
  %81 = load %struct.dmabuf*, %struct.dmabuf** %5, align 8
  %82 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  %84 = ashr i32 %83, 3
  %85 = load %struct.dmabuf*, %struct.dmabuf** %5, align 8
  %86 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 8
  %88 = mul nsw i32 %84, %87
  %89 = load %struct.dmabuf*, %struct.dmabuf** %5, align 8
  %90 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %89, i32 0, i32 8
  store i32 %88, i32* %90, align 8
  %91 = load %struct.dmabuf*, %struct.dmabuf** %5, align 8
  %92 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %91, i32 0, i32 6
  %93 = load i32, i32* %92, align 8
  %94 = icmp eq i32 %93, 1
  br i1 %94, label %95, label %96

95:                                               ; preds = %62
  br label %100

96:                                               ; preds = %62
  %97 = load %struct.dmabuf*, %struct.dmabuf** %5, align 8
  %98 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %97, i32 0, i32 6
  %99 = load i32, i32* %98, align 8
  br label %100

100:                                              ; preds = %96, %95
  %101 = phi i32 [ 2, %95 ], [ %99, %96 ]
  %102 = mul nsw i32 2, %101
  %103 = load %struct.dmabuf*, %struct.dmabuf** %5, align 8
  %104 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %103, i32 0, i32 9
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* %8, align 4
  %106 = load %struct.dmabuf*, %struct.dmabuf** %5, align 8
  %107 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %106, i32 0, i32 8
  %108 = load i32, i32* %107, align 8
  %109 = mul i32 %105, %108
  store i32 %109, i32* %6, align 4
  %110 = load i32, i32* @PAGE_SIZE, align 4
  %111 = load %struct.dmabuf*, %struct.dmabuf** %5, align 8
  %112 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = shl i32 %110, %113
  store i32 %114, i32* %7, align 4
  %115 = load %struct.dmabuf*, %struct.dmabuf** %5, align 8
  %116 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %115, i32 0, i32 10
  %117 = load i32, i32* %116, align 8
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %140

119:                                              ; preds = %100
  %120 = load %struct.dmabuf*, %struct.dmabuf** %5, align 8
  %121 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %120, i32 0, i32 10
  %122 = load i32, i32* %121, align 8
  %123 = shl i32 1000, %122
  %124 = load i32, i32* %6, align 4
  %125 = icmp ult i32 %123, %124
  br i1 %125, label %126, label %133

126:                                              ; preds = %119
  %127 = load i32, i32* %6, align 4
  %128 = udiv i32 %127, 1000
  %129 = call i8* @ld2(i32 %128)
  %130 = ptrtoint i8* %129 to i32
  %131 = load %struct.dmabuf*, %struct.dmabuf** %5, align 8
  %132 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %131, i32 0, i32 11
  store i32 %130, i32* %132, align 4
  br label %139

133:                                              ; preds = %119
  %134 = load %struct.dmabuf*, %struct.dmabuf** %5, align 8
  %135 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %134, i32 0, i32 10
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.dmabuf*, %struct.dmabuf** %5, align 8
  %138 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %137, i32 0, i32 11
  store i32 %136, i32* %138, align 4
  br label %139

139:                                              ; preds = %133, %126
  br label %167

140:                                              ; preds = %100
  %141 = load i32, i32* %6, align 4
  %142 = udiv i32 %141, 100
  %143 = load %struct.dmabuf*, %struct.dmabuf** %5, align 8
  %144 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %143, i32 0, i32 12
  %145 = load i32, i32* %144, align 8
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %140
  %148 = load %struct.dmabuf*, %struct.dmabuf** %5, align 8
  %149 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %148, i32 0, i32 12
  %150 = load i32, i32* %149, align 8
  br label %152

151:                                              ; preds = %140
  br label %152

152:                                              ; preds = %151, %147
  %153 = phi i32 [ %150, %147 ], [ 1, %151 ]
  %154 = udiv i32 %142, %153
  %155 = call i8* @ld2(i32 %154)
  %156 = ptrtoint i8* %155 to i32
  %157 = load %struct.dmabuf*, %struct.dmabuf** %5, align 8
  %158 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %157, i32 0, i32 11
  store i32 %156, i32* %158, align 4
  %159 = load %struct.dmabuf*, %struct.dmabuf** %5, align 8
  %160 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %159, i32 0, i32 11
  %161 = load i32, i32* %160, align 4
  %162 = icmp slt i32 %161, 3
  br i1 %162, label %163, label %166

163:                                              ; preds = %152
  %164 = load %struct.dmabuf*, %struct.dmabuf** %5, align 8
  %165 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %164, i32 0, i32 11
  store i32 3, i32* %165, align 4
  br label %166

166:                                              ; preds = %163, %152
  br label %167

167:                                              ; preds = %166, %139
  %168 = load %struct.dmabuf*, %struct.dmabuf** %5, align 8
  %169 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %168, i32 0, i32 11
  %170 = load i32, i32* %169, align 4
  %171 = shl i32 1, %170
  %172 = load %struct.dmabuf*, %struct.dmabuf** %5, align 8
  %173 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %172, i32 0, i32 13
  store i32 %171, i32* %173, align 4
  %174 = load %struct.dmabuf*, %struct.dmabuf** %5, align 8
  %175 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %174, i32 0, i32 13
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.dmabuf*, %struct.dmabuf** %5, align 8
  %178 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %177, i32 0, i32 4
  %179 = load i32, i32* %178, align 8
  %180 = mul nsw i32 %176, %179
  %181 = load %struct.dmabuf*, %struct.dmabuf** %5, align 8
  %182 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %181, i32 0, i32 14
  store i32 %180, i32* %182, align 8
  %183 = load i32, i32* %7, align 4
  %184 = load %struct.dmabuf*, %struct.dmabuf** %5, align 8
  %185 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %184, i32 0, i32 14
  %186 = load i32, i32* %185, align 8
  %187 = udiv i32 %183, %186
  %188 = load %struct.dmabuf*, %struct.dmabuf** %5, align 8
  %189 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %188, i32 0, i32 15
  store i32 %187, i32* %189, align 4
  br label %190

190:                                              ; preds = %202, %167
  %191 = load %struct.dmabuf*, %struct.dmabuf** %5, align 8
  %192 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %191, i32 0, i32 15
  %193 = load i32, i32* %192, align 4
  %194 = icmp ult i32 %193, 4
  br i1 %194, label %195, label %200

195:                                              ; preds = %190
  %196 = load %struct.dmabuf*, %struct.dmabuf** %5, align 8
  %197 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %196, i32 0, i32 11
  %198 = load i32, i32* %197, align 4
  %199 = icmp sgt i32 %198, 3
  br label %200

200:                                              ; preds = %195, %190
  %201 = phi i1 [ false, %190 ], [ %199, %195 ]
  br i1 %201, label %202, label %229

202:                                              ; preds = %200
  %203 = load %struct.dmabuf*, %struct.dmabuf** %5, align 8
  %204 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %203, i32 0, i32 11
  %205 = load i32, i32* %204, align 4
  %206 = add nsw i32 %205, -1
  store i32 %206, i32* %204, align 4
  %207 = load %struct.dmabuf*, %struct.dmabuf** %5, align 8
  %208 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %207, i32 0, i32 11
  %209 = load i32, i32* %208, align 4
  %210 = shl i32 1, %209
  %211 = load %struct.dmabuf*, %struct.dmabuf** %5, align 8
  %212 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %211, i32 0, i32 13
  store i32 %210, i32* %212, align 4
  %213 = load %struct.dmabuf*, %struct.dmabuf** %5, align 8
  %214 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %213, i32 0, i32 13
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.dmabuf*, %struct.dmabuf** %5, align 8
  %217 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %216, i32 0, i32 4
  %218 = load i32, i32* %217, align 8
  %219 = mul nsw i32 %215, %218
  %220 = load %struct.dmabuf*, %struct.dmabuf** %5, align 8
  %221 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %220, i32 0, i32 14
  store i32 %219, i32* %221, align 8
  %222 = load i32, i32* %7, align 4
  %223 = load %struct.dmabuf*, %struct.dmabuf** %5, align 8
  %224 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %223, i32 0, i32 14
  %225 = load i32, i32* %224, align 8
  %226 = udiv i32 %222, %225
  %227 = load %struct.dmabuf*, %struct.dmabuf** %5, align 8
  %228 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %227, i32 0, i32 15
  store i32 %226, i32* %228, align 4
  br label %190

229:                                              ; preds = %200
  %230 = load %struct.dmabuf*, %struct.dmabuf** %5, align 8
  %231 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %230, i32 0, i32 16
  %232 = load i32, i32* %231, align 8
  %233 = icmp sge i32 %232, 4
  br i1 %233, label %234, label %248

234:                                              ; preds = %229
  %235 = load %struct.dmabuf*, %struct.dmabuf** %5, align 8
  %236 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %235, i32 0, i32 16
  %237 = load i32, i32* %236, align 8
  %238 = load %struct.dmabuf*, %struct.dmabuf** %5, align 8
  %239 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %238, i32 0, i32 15
  %240 = load i32, i32* %239, align 4
  %241 = icmp ult i32 %237, %240
  br i1 %241, label %242, label %248

242:                                              ; preds = %234
  %243 = load %struct.dmabuf*, %struct.dmabuf** %5, align 8
  %244 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %243, i32 0, i32 16
  %245 = load i32, i32* %244, align 8
  %246 = load %struct.dmabuf*, %struct.dmabuf** %5, align 8
  %247 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %246, i32 0, i32 15
  store i32 %245, i32* %247, align 4
  br label %248

248:                                              ; preds = %242, %234, %229
  %249 = load %struct.dmabuf*, %struct.dmabuf** %5, align 8
  %250 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %249, i32 0, i32 14
  %251 = load i32, i32* %250, align 8
  %252 = load %struct.dmabuf*, %struct.dmabuf** %5, align 8
  %253 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %252, i32 0, i32 15
  %254 = load i32, i32* %253, align 4
  %255 = mul i32 %251, %254
  %256 = load %struct.dmabuf*, %struct.dmabuf** %5, align 8
  %257 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %256, i32 0, i32 17
  store i32 %255, i32* %257, align 4
  %258 = load %struct.dmabuf*, %struct.dmabuf** %5, align 8
  %259 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %258, i32 0, i32 18
  %260 = load i64, i64* %259, align 8
  %261 = load i32, i32* %7, align 4
  %262 = call i32 @memset(i64 %260, i32 0, i32 %261)
  %263 = load i32, i32* %8, align 4
  %264 = load %struct.dmabuf*, %struct.dmabuf** %5, align 8
  %265 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %264, i32 0, i32 5
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.dmabuf*, %struct.dmabuf** %5, align 8
  %268 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %267, i32 0, i32 6
  %269 = load i32, i32* %268, align 8
  %270 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %263, i32 %266, i32 %269)
  %271 = load %struct.dmabuf*, %struct.dmabuf** %5, align 8
  %272 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %271, i32 0, i32 13
  %273 = load i32, i32* %272, align 4
  %274 = load %struct.dmabuf*, %struct.dmabuf** %5, align 8
  %275 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %274, i32 0, i32 4
  %276 = load i32, i32* %275, align 8
  %277 = load %struct.dmabuf*, %struct.dmabuf** %5, align 8
  %278 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %277, i32 0, i32 14
  %279 = load i32, i32* %278, align 8
  %280 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %273, i32 %276, i32 %279)
  %281 = load %struct.dmabuf*, %struct.dmabuf** %5, align 8
  %282 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %281, i32 0, i32 15
  %283 = load i32, i32* %282, align 4
  %284 = load %struct.dmabuf*, %struct.dmabuf** %5, align 8
  %285 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %284, i32 0, i32 17
  %286 = load i32, i32* %285, align 4
  %287 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %283, i32 %286)
  %288 = load %struct.dmabuf*, %struct.dmabuf** %5, align 8
  %289 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %288, i32 0, i32 1
  store i32 1, i32* %289, align 4
  store i32 0, i32* %3, align 4
  br label %290

290:                                              ; preds = %248, %36
  %291 = load i32, i32* %3, align 4
  ret i32 %291
}

declare dso_local i64 @kmalloc(i32, i32) #1

declare dso_local i8* @ld2(i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
