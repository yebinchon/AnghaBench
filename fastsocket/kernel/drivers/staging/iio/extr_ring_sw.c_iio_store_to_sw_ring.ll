; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/extr_ring_sw.c_iio_store_to_sw_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/extr_ring_sw.c_iio_store_to_sw_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_sw_ring_buffer = type { i8*, i8*, i8*, i8*, i8*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@IIO_EVENT_CODE_RING_100_FULL = common dso_local global i32 0, align 4
@IIO_EVENT_CODE_RING_50_FULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iio_store_to_sw_ring(%struct.iio_sw_ring_buffer* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.iio_sw_ring_buffer*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.iio_sw_ring_buffer* %0, %struct.iio_sw_ring_buffer** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load %struct.iio_sw_ring_buffer*, %struct.iio_sw_ring_buffer** %4, align 8
  %12 = getelementptr inbounds %struct.iio_sw_ring_buffer, %struct.iio_sw_ring_buffer* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = icmp eq i8* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %42

18:                                               ; preds = %3
  %19 = load %struct.iio_sw_ring_buffer*, %struct.iio_sw_ring_buffer** %4, align 8
  %20 = getelementptr inbounds %struct.iio_sw_ring_buffer, %struct.iio_sw_ring_buffer* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  %22 = load %struct.iio_sw_ring_buffer*, %struct.iio_sw_ring_buffer** %4, align 8
  %23 = getelementptr inbounds %struct.iio_sw_ring_buffer, %struct.iio_sw_ring_buffer* %22, i32 0, i32 0
  store i8* %21, i8** %23, align 8
  %24 = load %struct.iio_sw_ring_buffer*, %struct.iio_sw_ring_buffer** %4, align 8
  %25 = getelementptr inbounds %struct.iio_sw_ring_buffer, %struct.iio_sw_ring_buffer* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  %27 = load %struct.iio_sw_ring_buffer*, %struct.iio_sw_ring_buffer** %4, align 8
  %28 = getelementptr inbounds %struct.iio_sw_ring_buffer, %struct.iio_sw_ring_buffer* %27, i32 0, i32 5
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.iio_sw_ring_buffer*, %struct.iio_sw_ring_buffer** %4, align 8
  %32 = getelementptr inbounds %struct.iio_sw_ring_buffer, %struct.iio_sw_ring_buffer* %31, i32 0, i32 5
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %30, %34
  %36 = sdiv i32 %35, 2
  %37 = sext i32 %36 to i64
  %38 = sub i64 0, %37
  %39 = getelementptr inbounds i8, i8* %26, i64 %38
  %40 = load %struct.iio_sw_ring_buffer*, %struct.iio_sw_ring_buffer** %4, align 8
  %41 = getelementptr inbounds %struct.iio_sw_ring_buffer, %struct.iio_sw_ring_buffer* %40, i32 0, i32 2
  store i8* %39, i8** %41, align 8
  br label %42

42:                                               ; preds = %18, %3
  %43 = load %struct.iio_sw_ring_buffer*, %struct.iio_sw_ring_buffer** %4, align 8
  %44 = getelementptr inbounds %struct.iio_sw_ring_buffer, %struct.iio_sw_ring_buffer* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = load %struct.iio_sw_ring_buffer*, %struct.iio_sw_ring_buffer** %4, align 8
  %48 = getelementptr inbounds %struct.iio_sw_ring_buffer, %struct.iio_sw_ring_buffer* %47, i32 0, i32 5
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @memcpy(i8* %45, i8* %46, i32 %50)
  %52 = call i32 (...) @barrier()
  %53 = load %struct.iio_sw_ring_buffer*, %struct.iio_sw_ring_buffer** %4, align 8
  %54 = getelementptr inbounds %struct.iio_sw_ring_buffer, %struct.iio_sw_ring_buffer* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = load %struct.iio_sw_ring_buffer*, %struct.iio_sw_ring_buffer** %4, align 8
  %57 = getelementptr inbounds %struct.iio_sw_ring_buffer, %struct.iio_sw_ring_buffer* %56, i32 0, i32 3
  store i8* %55, i8** %57, align 8
  %58 = call i32 (...) @barrier()
  %59 = load %struct.iio_sw_ring_buffer*, %struct.iio_sw_ring_buffer** %4, align 8
  %60 = getelementptr inbounds %struct.iio_sw_ring_buffer, %struct.iio_sw_ring_buffer* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = load %struct.iio_sw_ring_buffer*, %struct.iio_sw_ring_buffer** %4, align 8
  %63 = getelementptr inbounds %struct.iio_sw_ring_buffer, %struct.iio_sw_ring_buffer* %62, i32 0, i32 5
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %61, i64 %66
  store i8* %67, i8** %9, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = load %struct.iio_sw_ring_buffer*, %struct.iio_sw_ring_buffer** %4, align 8
  %70 = getelementptr inbounds %struct.iio_sw_ring_buffer, %struct.iio_sw_ring_buffer* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = load %struct.iio_sw_ring_buffer*, %struct.iio_sw_ring_buffer** %4, align 8
  %73 = getelementptr inbounds %struct.iio_sw_ring_buffer, %struct.iio_sw_ring_buffer* %72, i32 0, i32 5
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.iio_sw_ring_buffer*, %struct.iio_sw_ring_buffer** %4, align 8
  %77 = getelementptr inbounds %struct.iio_sw_ring_buffer, %struct.iio_sw_ring_buffer* %76, i32 0, i32 5
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = mul nsw i32 %75, %79
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %71, i64 %81
  %83 = icmp eq i8* %68, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %42
  %85 = load %struct.iio_sw_ring_buffer*, %struct.iio_sw_ring_buffer** %4, align 8
  %86 = getelementptr inbounds %struct.iio_sw_ring_buffer, %struct.iio_sw_ring_buffer* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  store i8* %87, i8** %9, align 8
  br label %88

88:                                               ; preds = %84, %42
  %89 = load i8*, i8** %9, align 8
  %90 = load %struct.iio_sw_ring_buffer*, %struct.iio_sw_ring_buffer** %4, align 8
  %91 = getelementptr inbounds %struct.iio_sw_ring_buffer, %struct.iio_sw_ring_buffer* %90, i32 0, i32 0
  store i8* %89, i8** %91, align 8
  %92 = load %struct.iio_sw_ring_buffer*, %struct.iio_sw_ring_buffer** %4, align 8
  %93 = getelementptr inbounds %struct.iio_sw_ring_buffer, %struct.iio_sw_ring_buffer* %92, i32 0, i32 4
  %94 = load i8*, i8** %93, align 8
  %95 = icmp eq i8* %94, null
  br i1 %95, label %96, label %102

96:                                               ; preds = %88
  %97 = load %struct.iio_sw_ring_buffer*, %struct.iio_sw_ring_buffer** %4, align 8
  %98 = getelementptr inbounds %struct.iio_sw_ring_buffer, %struct.iio_sw_ring_buffer* %97, i32 0, i32 1
  %99 = load i8*, i8** %98, align 8
  %100 = load %struct.iio_sw_ring_buffer*, %struct.iio_sw_ring_buffer** %4, align 8
  %101 = getelementptr inbounds %struct.iio_sw_ring_buffer, %struct.iio_sw_ring_buffer* %100, i32 0, i32 4
  store i8* %99, i8** %101, align 8
  br label %172

102:                                              ; preds = %88
  %103 = load %struct.iio_sw_ring_buffer*, %struct.iio_sw_ring_buffer** %4, align 8
  %104 = getelementptr inbounds %struct.iio_sw_ring_buffer, %struct.iio_sw_ring_buffer* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = load %struct.iio_sw_ring_buffer*, %struct.iio_sw_ring_buffer** %4, align 8
  %107 = getelementptr inbounds %struct.iio_sw_ring_buffer, %struct.iio_sw_ring_buffer* %106, i32 0, i32 4
  %108 = load i8*, i8** %107, align 8
  %109 = icmp eq i8* %105, %108
  br i1 %109, label %110, label %171

110:                                              ; preds = %102
  %111 = load %struct.iio_sw_ring_buffer*, %struct.iio_sw_ring_buffer** %4, align 8
  %112 = getelementptr inbounds %struct.iio_sw_ring_buffer, %struct.iio_sw_ring_buffer* %111, i32 0, i32 4
  %113 = load i8*, i8** %112, align 8
  store i8* %113, i8** %10, align 8
  %114 = load i8*, i8** %10, align 8
  %115 = load %struct.iio_sw_ring_buffer*, %struct.iio_sw_ring_buffer** %4, align 8
  %116 = getelementptr inbounds %struct.iio_sw_ring_buffer, %struct.iio_sw_ring_buffer* %115, i32 0, i32 5
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %114, i64 %119
  store i8* %120, i8** %9, align 8
  %121 = load i8*, i8** %9, align 8
  %122 = load %struct.iio_sw_ring_buffer*, %struct.iio_sw_ring_buffer** %4, align 8
  %123 = getelementptr inbounds %struct.iio_sw_ring_buffer, %struct.iio_sw_ring_buffer* %122, i32 0, i32 1
  %124 = load i8*, i8** %123, align 8
  %125 = load %struct.iio_sw_ring_buffer*, %struct.iio_sw_ring_buffer** %4, align 8
  %126 = getelementptr inbounds %struct.iio_sw_ring_buffer, %struct.iio_sw_ring_buffer* %125, i32 0, i32 5
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.iio_sw_ring_buffer*, %struct.iio_sw_ring_buffer** %4, align 8
  %130 = getelementptr inbounds %struct.iio_sw_ring_buffer, %struct.iio_sw_ring_buffer* %129, i32 0, i32 5
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = mul nsw i32 %128, %132
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8, i8* %124, i64 %134
  %136 = icmp eq i8* %121, %135
  br i1 %136, label %137, label %141

137:                                              ; preds = %110
  %138 = load %struct.iio_sw_ring_buffer*, %struct.iio_sw_ring_buffer** %4, align 8
  %139 = getelementptr inbounds %struct.iio_sw_ring_buffer, %struct.iio_sw_ring_buffer* %138, i32 0, i32 1
  %140 = load i8*, i8** %139, align 8
  store i8* %140, i8** %9, align 8
  br label %141

141:                                              ; preds = %137, %110
  %142 = load i8*, i8** %10, align 8
  %143 = load %struct.iio_sw_ring_buffer*, %struct.iio_sw_ring_buffer** %4, align 8
  %144 = getelementptr inbounds %struct.iio_sw_ring_buffer, %struct.iio_sw_ring_buffer* %143, i32 0, i32 4
  %145 = load i8*, i8** %144, align 8
  %146 = icmp eq i8* %142, %145
  br i1 %146, label %147, label %151

147:                                              ; preds = %141
  %148 = load i8*, i8** %9, align 8
  %149 = load %struct.iio_sw_ring_buffer*, %struct.iio_sw_ring_buffer** %4, align 8
  %150 = getelementptr inbounds %struct.iio_sw_ring_buffer, %struct.iio_sw_ring_buffer* %149, i32 0, i32 4
  store i8* %148, i8** %150, align 8
  br label %151

151:                                              ; preds = %147, %141
  %152 = load %struct.iio_sw_ring_buffer*, %struct.iio_sw_ring_buffer** %4, align 8
  %153 = getelementptr inbounds %struct.iio_sw_ring_buffer, %struct.iio_sw_ring_buffer* %152, i32 0, i32 5
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = call i32 @spin_lock(i32* %155)
  %157 = load %struct.iio_sw_ring_buffer*, %struct.iio_sw_ring_buffer** %4, align 8
  %158 = getelementptr inbounds %struct.iio_sw_ring_buffer, %struct.iio_sw_ring_buffer* %157, i32 0, i32 5
  %159 = load i32, i32* @IIO_EVENT_CODE_RING_100_FULL, align 4
  %160 = load i32, i32* %6, align 4
  %161 = call i32 @iio_push_or_escallate_ring_event(%struct.TYPE_3__* %158, i32 %159, i32 %160)
  store i32 %161, i32* %7, align 4
  %162 = load %struct.iio_sw_ring_buffer*, %struct.iio_sw_ring_buffer** %4, align 8
  %163 = getelementptr inbounds %struct.iio_sw_ring_buffer, %struct.iio_sw_ring_buffer* %162, i32 0, i32 5
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  %166 = call i32 @spin_unlock(i32* %165)
  %167 = load i32, i32* %7, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %151
  br label %236

170:                                              ; preds = %151
  br label %171

171:                                              ; preds = %170, %102
  br label %172

172:                                              ; preds = %171, %96
  %173 = load %struct.iio_sw_ring_buffer*, %struct.iio_sw_ring_buffer** %4, align 8
  %174 = getelementptr inbounds %struct.iio_sw_ring_buffer, %struct.iio_sw_ring_buffer* %173, i32 0, i32 5
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.iio_sw_ring_buffer*, %struct.iio_sw_ring_buffer** %4, align 8
  %178 = getelementptr inbounds %struct.iio_sw_ring_buffer, %struct.iio_sw_ring_buffer* %177, i32 0, i32 2
  %179 = load i8*, i8** %178, align 8
  %180 = sext i32 %176 to i64
  %181 = getelementptr inbounds i8, i8* %179, i64 %180
  store i8* %181, i8** %178, align 8
  %182 = load %struct.iio_sw_ring_buffer*, %struct.iio_sw_ring_buffer** %4, align 8
  %183 = getelementptr inbounds %struct.iio_sw_ring_buffer, %struct.iio_sw_ring_buffer* %182, i32 0, i32 2
  %184 = load i8*, i8** %183, align 8
  %185 = load %struct.iio_sw_ring_buffer*, %struct.iio_sw_ring_buffer** %4, align 8
  %186 = getelementptr inbounds %struct.iio_sw_ring_buffer, %struct.iio_sw_ring_buffer* %185, i32 0, i32 1
  %187 = load i8*, i8** %186, align 8
  %188 = load %struct.iio_sw_ring_buffer*, %struct.iio_sw_ring_buffer** %4, align 8
  %189 = getelementptr inbounds %struct.iio_sw_ring_buffer, %struct.iio_sw_ring_buffer* %188, i32 0, i32 5
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.iio_sw_ring_buffer*, %struct.iio_sw_ring_buffer** %4, align 8
  %193 = getelementptr inbounds %struct.iio_sw_ring_buffer, %struct.iio_sw_ring_buffer* %192, i32 0, i32 5
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = mul nsw i32 %191, %195
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i8, i8* %187, i64 %197
  %199 = icmp eq i8* %184, %198
  br i1 %199, label %200, label %206

200:                                              ; preds = %172
  %201 = load %struct.iio_sw_ring_buffer*, %struct.iio_sw_ring_buffer** %4, align 8
  %202 = getelementptr inbounds %struct.iio_sw_ring_buffer, %struct.iio_sw_ring_buffer* %201, i32 0, i32 1
  %203 = load i8*, i8** %202, align 8
  %204 = load %struct.iio_sw_ring_buffer*, %struct.iio_sw_ring_buffer** %4, align 8
  %205 = getelementptr inbounds %struct.iio_sw_ring_buffer, %struct.iio_sw_ring_buffer* %204, i32 0, i32 2
  store i8* %203, i8** %205, align 8
  br label %206

206:                                              ; preds = %200, %172
  %207 = load %struct.iio_sw_ring_buffer*, %struct.iio_sw_ring_buffer** %4, align 8
  %208 = getelementptr inbounds %struct.iio_sw_ring_buffer, %struct.iio_sw_ring_buffer* %207, i32 0, i32 2
  %209 = load i8*, i8** %208, align 8
  %210 = load %struct.iio_sw_ring_buffer*, %struct.iio_sw_ring_buffer** %4, align 8
  %211 = getelementptr inbounds %struct.iio_sw_ring_buffer, %struct.iio_sw_ring_buffer* %210, i32 0, i32 4
  %212 = load i8*, i8** %211, align 8
  %213 = icmp eq i8* %209, %212
  br i1 %213, label %214, label %235

214:                                              ; preds = %206
  %215 = load %struct.iio_sw_ring_buffer*, %struct.iio_sw_ring_buffer** %4, align 8
  %216 = getelementptr inbounds %struct.iio_sw_ring_buffer, %struct.iio_sw_ring_buffer* %215, i32 0, i32 5
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i32 0, i32 2
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 0
  %219 = call i32 @spin_lock(i32* %218)
  %220 = load i32, i32* @IIO_EVENT_CODE_RING_50_FULL, align 4
  store i32 %220, i32* %8, align 4
  %221 = load %struct.iio_sw_ring_buffer*, %struct.iio_sw_ring_buffer** %4, align 8
  %222 = getelementptr inbounds %struct.iio_sw_ring_buffer, %struct.iio_sw_ring_buffer* %221, i32 0, i32 5
  %223 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %222, i32 0, i32 3
  %224 = load i32, i32* %8, align 4
  %225 = load i32, i32* %6, align 4
  %226 = load %struct.iio_sw_ring_buffer*, %struct.iio_sw_ring_buffer** %4, align 8
  %227 = getelementptr inbounds %struct.iio_sw_ring_buffer, %struct.iio_sw_ring_buffer* %226, i32 0, i32 5
  %228 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %227, i32 0, i32 2
  %229 = call i32 @__iio_push_event(i32* %223, i32 %224, i32 %225, %struct.TYPE_4__* %228)
  store i32 %229, i32* %7, align 4
  %230 = load %struct.iio_sw_ring_buffer*, %struct.iio_sw_ring_buffer** %4, align 8
  %231 = getelementptr inbounds %struct.iio_sw_ring_buffer, %struct.iio_sw_ring_buffer* %230, i32 0, i32 5
  %232 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %231, i32 0, i32 2
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i32 0, i32 0
  %234 = call i32 @spin_unlock(i32* %233)
  br label %235

235:                                              ; preds = %214, %206
  br label %236

236:                                              ; preds = %235, %169
  %237 = load i32, i32* %7, align 4
  ret i32 %237
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @iio_push_or_escallate_ring_event(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @__iio_push_event(i32*, i32, i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
