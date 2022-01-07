; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_scrub.c_scrub_add_page_to_bio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_scrub.c_scrub_add_page_to_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scrub_dev = type { i32, i32, i64, %struct.TYPE_2__*, %struct.scrub_bio**, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.scrub_bio = type { i32, i32, i32, i64, %struct.bio*, %struct.scrub_page**, i64 }
%struct.bio = type { i32, i32, i32, %struct.scrub_bio* }
%struct.scrub_page = type { i32, i64, i32, %struct.scrub_block* }
%struct.scrub_block = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@scrub_bio_end_io = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scrub_dev*, %struct.scrub_page*)* @scrub_add_page_to_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scrub_add_page_to_bio(%struct.scrub_dev* %0, %struct.scrub_page* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scrub_dev*, align 8
  %5 = alloca %struct.scrub_page*, align 8
  %6 = alloca %struct.scrub_block*, align 8
  %7 = alloca %struct.scrub_bio*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.bio*, align 8
  store %struct.scrub_dev* %0, %struct.scrub_dev** %4, align 8
  store %struct.scrub_page* %1, %struct.scrub_page** %5, align 8
  %10 = load %struct.scrub_page*, %struct.scrub_page** %5, align 8
  %11 = getelementptr inbounds %struct.scrub_page, %struct.scrub_page* %10, i32 0, i32 3
  %12 = load %struct.scrub_block*, %struct.scrub_block** %11, align 8
  store %struct.scrub_block* %12, %struct.scrub_block** %6, align 8
  br label %13

13:                                               ; preds = %218, %179, %2
  br label %14

14:                                               ; preds = %82, %13
  %15 = load %struct.scrub_dev*, %struct.scrub_dev** %4, align 8
  %16 = getelementptr inbounds %struct.scrub_dev, %struct.scrub_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %83

19:                                               ; preds = %14
  %20 = load %struct.scrub_dev*, %struct.scrub_dev** %4, align 8
  %21 = getelementptr inbounds %struct.scrub_dev, %struct.scrub_dev* %20, i32 0, i32 6
  %22 = call i32 @spin_lock(i32* %21)
  %23 = load %struct.scrub_dev*, %struct.scrub_dev** %4, align 8
  %24 = getelementptr inbounds %struct.scrub_dev, %struct.scrub_dev* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.scrub_dev*, %struct.scrub_dev** %4, align 8
  %27 = getelementptr inbounds %struct.scrub_dev, %struct.scrub_dev* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.scrub_dev*, %struct.scrub_dev** %4, align 8
  %29 = getelementptr inbounds %struct.scrub_dev, %struct.scrub_dev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, -1
  br i1 %31, label %32, label %69

32:                                               ; preds = %19
  %33 = load %struct.scrub_dev*, %struct.scrub_dev** %4, align 8
  %34 = getelementptr inbounds %struct.scrub_dev, %struct.scrub_dev* %33, i32 0, i32 4
  %35 = load %struct.scrub_bio**, %struct.scrub_bio*** %34, align 8
  %36 = load %struct.scrub_dev*, %struct.scrub_dev** %4, align 8
  %37 = getelementptr inbounds %struct.scrub_dev, %struct.scrub_dev* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.scrub_bio*, %struct.scrub_bio** %35, i64 %39
  %41 = load %struct.scrub_bio*, %struct.scrub_bio** %40, align 8
  %42 = getelementptr inbounds %struct.scrub_bio, %struct.scrub_bio* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.scrub_dev*, %struct.scrub_dev** %4, align 8
  %45 = getelementptr inbounds %struct.scrub_dev, %struct.scrub_dev* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.scrub_dev*, %struct.scrub_dev** %4, align 8
  %47 = getelementptr inbounds %struct.scrub_dev, %struct.scrub_dev* %46, i32 0, i32 4
  %48 = load %struct.scrub_bio**, %struct.scrub_bio*** %47, align 8
  %49 = load %struct.scrub_dev*, %struct.scrub_dev** %4, align 8
  %50 = getelementptr inbounds %struct.scrub_dev, %struct.scrub_dev* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.scrub_bio*, %struct.scrub_bio** %48, i64 %52
  %54 = load %struct.scrub_bio*, %struct.scrub_bio** %53, align 8
  %55 = getelementptr inbounds %struct.scrub_bio, %struct.scrub_bio* %54, i32 0, i32 0
  store i32 -1, i32* %55, align 8
  %56 = load %struct.scrub_dev*, %struct.scrub_dev** %4, align 8
  %57 = getelementptr inbounds %struct.scrub_dev, %struct.scrub_dev* %56, i32 0, i32 4
  %58 = load %struct.scrub_bio**, %struct.scrub_bio*** %57, align 8
  %59 = load %struct.scrub_dev*, %struct.scrub_dev** %4, align 8
  %60 = getelementptr inbounds %struct.scrub_dev, %struct.scrub_dev* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.scrub_bio*, %struct.scrub_bio** %58, i64 %62
  %64 = load %struct.scrub_bio*, %struct.scrub_bio** %63, align 8
  %65 = getelementptr inbounds %struct.scrub_bio, %struct.scrub_bio* %64, i32 0, i32 1
  store i32 0, i32* %65, align 4
  %66 = load %struct.scrub_dev*, %struct.scrub_dev** %4, align 8
  %67 = getelementptr inbounds %struct.scrub_dev, %struct.scrub_dev* %66, i32 0, i32 6
  %68 = call i32 @spin_unlock(i32* %67)
  br label %82

69:                                               ; preds = %19
  %70 = load %struct.scrub_dev*, %struct.scrub_dev** %4, align 8
  %71 = getelementptr inbounds %struct.scrub_dev, %struct.scrub_dev* %70, i32 0, i32 6
  %72 = call i32 @spin_unlock(i32* %71)
  %73 = load %struct.scrub_dev*, %struct.scrub_dev** %4, align 8
  %74 = getelementptr inbounds %struct.scrub_dev, %struct.scrub_dev* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.scrub_dev*, %struct.scrub_dev** %4, align 8
  %77 = getelementptr inbounds %struct.scrub_dev, %struct.scrub_dev* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, -1
  %80 = zext i1 %79 to i32
  %81 = call i32 @wait_event(i32 %75, i32 %80)
  br label %82

82:                                               ; preds = %69, %32
  br label %14

83:                                               ; preds = %14
  %84 = load %struct.scrub_dev*, %struct.scrub_dev** %4, align 8
  %85 = getelementptr inbounds %struct.scrub_dev, %struct.scrub_dev* %84, i32 0, i32 4
  %86 = load %struct.scrub_bio**, %struct.scrub_bio*** %85, align 8
  %87 = load %struct.scrub_dev*, %struct.scrub_dev** %4, align 8
  %88 = getelementptr inbounds %struct.scrub_dev, %struct.scrub_dev* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.scrub_bio*, %struct.scrub_bio** %86, i64 %90
  %92 = load %struct.scrub_bio*, %struct.scrub_bio** %91, align 8
  store %struct.scrub_bio* %92, %struct.scrub_bio** %7, align 8
  %93 = load %struct.scrub_bio*, %struct.scrub_bio** %7, align 8
  %94 = getelementptr inbounds %struct.scrub_bio, %struct.scrub_bio* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %150

97:                                               ; preds = %83
  %98 = load %struct.scrub_page*, %struct.scrub_page** %5, align 8
  %99 = getelementptr inbounds %struct.scrub_page, %struct.scrub_page* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.scrub_bio*, %struct.scrub_bio** %7, align 8
  %102 = getelementptr inbounds %struct.scrub_bio, %struct.scrub_bio* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 8
  %103 = load %struct.scrub_page*, %struct.scrub_page** %5, align 8
  %104 = getelementptr inbounds %struct.scrub_page, %struct.scrub_page* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.scrub_bio*, %struct.scrub_bio** %7, align 8
  %107 = getelementptr inbounds %struct.scrub_bio, %struct.scrub_bio* %106, i32 0, i32 3
  store i64 %105, i64* %107, align 8
  %108 = load %struct.scrub_bio*, %struct.scrub_bio** %7, align 8
  %109 = getelementptr inbounds %struct.scrub_bio, %struct.scrub_bio* %108, i32 0, i32 4
  %110 = load %struct.bio*, %struct.bio** %109, align 8
  store %struct.bio* %110, %struct.bio** %9, align 8
  %111 = load %struct.bio*, %struct.bio** %9, align 8
  %112 = icmp ne %struct.bio* %111, null
  br i1 %112, label %128, label %113

113:                                              ; preds = %97
  %114 = load i32, i32* @GFP_NOFS, align 4
  %115 = load %struct.scrub_dev*, %struct.scrub_dev** %4, align 8
  %116 = getelementptr inbounds %struct.scrub_dev, %struct.scrub_dev* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = call %struct.bio* @bio_alloc(i32 %114, i64 %117)
  store %struct.bio* %118, %struct.bio** %9, align 8
  %119 = load %struct.bio*, %struct.bio** %9, align 8
  %120 = icmp ne %struct.bio* %119, null
  br i1 %120, label %124, label %121

121:                                              ; preds = %113
  %122 = load i32, i32* @ENOMEM, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %3, align 4
  br label %243

124:                                              ; preds = %113
  %125 = load %struct.bio*, %struct.bio** %9, align 8
  %126 = load %struct.scrub_bio*, %struct.scrub_bio** %7, align 8
  %127 = getelementptr inbounds %struct.scrub_bio, %struct.scrub_bio* %126, i32 0, i32 4
  store %struct.bio* %125, %struct.bio** %127, align 8
  br label %128

128:                                              ; preds = %124, %97
  %129 = load %struct.scrub_bio*, %struct.scrub_bio** %7, align 8
  %130 = load %struct.bio*, %struct.bio** %9, align 8
  %131 = getelementptr inbounds %struct.bio, %struct.bio* %130, i32 0, i32 3
  store %struct.scrub_bio* %129, %struct.scrub_bio** %131, align 8
  %132 = load i32, i32* @scrub_bio_end_io, align 4
  %133 = load %struct.bio*, %struct.bio** %9, align 8
  %134 = getelementptr inbounds %struct.bio, %struct.bio* %133, i32 0, i32 2
  store i32 %132, i32* %134, align 8
  %135 = load %struct.scrub_dev*, %struct.scrub_dev** %4, align 8
  %136 = getelementptr inbounds %struct.scrub_dev, %struct.scrub_dev* %135, i32 0, i32 3
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.bio*, %struct.bio** %9, align 8
  %141 = getelementptr inbounds %struct.bio, %struct.bio* %140, i32 0, i32 1
  store i32 %139, i32* %141, align 4
  %142 = load %struct.scrub_page*, %struct.scrub_page** %5, align 8
  %143 = getelementptr inbounds %struct.scrub_page, %struct.scrub_page* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = ashr i32 %144, 9
  %146 = load %struct.bio*, %struct.bio** %9, align 8
  %147 = getelementptr inbounds %struct.bio, %struct.bio* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 8
  %148 = load %struct.scrub_bio*, %struct.scrub_bio** %7, align 8
  %149 = getelementptr inbounds %struct.scrub_bio, %struct.scrub_bio* %148, i32 0, i32 6
  store i64 0, i64* %149, align 8
  br label %183

150:                                              ; preds = %83
  %151 = load %struct.scrub_bio*, %struct.scrub_bio** %7, align 8
  %152 = getelementptr inbounds %struct.scrub_bio, %struct.scrub_bio* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.scrub_bio*, %struct.scrub_bio** %7, align 8
  %155 = getelementptr inbounds %struct.scrub_bio, %struct.scrub_bio* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @PAGE_SIZE, align 4
  %158 = mul nsw i32 %156, %157
  %159 = add nsw i32 %153, %158
  %160 = load %struct.scrub_page*, %struct.scrub_page** %5, align 8
  %161 = getelementptr inbounds %struct.scrub_page, %struct.scrub_page* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = icmp ne i32 %159, %162
  br i1 %163, label %179, label %164

164:                                              ; preds = %150
  %165 = load %struct.scrub_bio*, %struct.scrub_bio** %7, align 8
  %166 = getelementptr inbounds %struct.scrub_bio, %struct.scrub_bio* %165, i32 0, i32 3
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.scrub_bio*, %struct.scrub_bio** %7, align 8
  %169 = getelementptr inbounds %struct.scrub_bio, %struct.scrub_bio* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @PAGE_SIZE, align 4
  %172 = mul nsw i32 %170, %171
  %173 = sext i32 %172 to i64
  %174 = add nsw i64 %167, %173
  %175 = load %struct.scrub_page*, %struct.scrub_page** %5, align 8
  %176 = getelementptr inbounds %struct.scrub_page, %struct.scrub_page* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %174, %177
  br i1 %178, label %179, label %182

179:                                              ; preds = %164, %150
  %180 = load %struct.scrub_dev*, %struct.scrub_dev** %4, align 8
  %181 = call i32 @scrub_submit(%struct.scrub_dev* %180)
  br label %13

182:                                              ; preds = %164
  br label %183

183:                                              ; preds = %182, %128
  %184 = load %struct.scrub_page*, %struct.scrub_page** %5, align 8
  %185 = load %struct.scrub_bio*, %struct.scrub_bio** %7, align 8
  %186 = getelementptr inbounds %struct.scrub_bio, %struct.scrub_bio* %185, i32 0, i32 5
  %187 = load %struct.scrub_page**, %struct.scrub_page*** %186, align 8
  %188 = load %struct.scrub_bio*, %struct.scrub_bio** %7, align 8
  %189 = getelementptr inbounds %struct.scrub_bio, %struct.scrub_bio* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.scrub_page*, %struct.scrub_page** %187, i64 %191
  store %struct.scrub_page* %184, %struct.scrub_page** %192, align 8
  %193 = load %struct.scrub_bio*, %struct.scrub_bio** %7, align 8
  %194 = getelementptr inbounds %struct.scrub_bio, %struct.scrub_bio* %193, i32 0, i32 4
  %195 = load %struct.bio*, %struct.bio** %194, align 8
  %196 = load %struct.scrub_page*, %struct.scrub_page** %5, align 8
  %197 = getelementptr inbounds %struct.scrub_page, %struct.scrub_page* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* @PAGE_SIZE, align 4
  %200 = call i32 @bio_add_page(%struct.bio* %195, i32 %198, i32 %199, i32 0)
  store i32 %200, i32* %8, align 4
  %201 = load i32, i32* %8, align 4
  %202 = load i32, i32* @PAGE_SIZE, align 4
  %203 = icmp ne i32 %201, %202
  br i1 %203, label %204, label %221

204:                                              ; preds = %183
  %205 = load %struct.scrub_bio*, %struct.scrub_bio** %7, align 8
  %206 = getelementptr inbounds %struct.scrub_bio, %struct.scrub_bio* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = icmp slt i32 %207, 1
  br i1 %208, label %209, label %218

209:                                              ; preds = %204
  %210 = load %struct.scrub_bio*, %struct.scrub_bio** %7, align 8
  %211 = getelementptr inbounds %struct.scrub_bio, %struct.scrub_bio* %210, i32 0, i32 4
  %212 = load %struct.bio*, %struct.bio** %211, align 8
  %213 = call i32 @bio_put(%struct.bio* %212)
  %214 = load %struct.scrub_bio*, %struct.scrub_bio** %7, align 8
  %215 = getelementptr inbounds %struct.scrub_bio, %struct.scrub_bio* %214, i32 0, i32 4
  store %struct.bio* null, %struct.bio** %215, align 8
  %216 = load i32, i32* @EIO, align 4
  %217 = sub nsw i32 0, %216
  store i32 %217, i32* %3, align 4
  br label %243

218:                                              ; preds = %204
  %219 = load %struct.scrub_dev*, %struct.scrub_dev** %4, align 8
  %220 = call i32 @scrub_submit(%struct.scrub_dev* %219)
  br label %13

221:                                              ; preds = %183
  %222 = load %struct.scrub_block*, %struct.scrub_block** %6, align 8
  %223 = call i32 @scrub_block_get(%struct.scrub_block* %222)
  %224 = load %struct.scrub_block*, %struct.scrub_block** %6, align 8
  %225 = getelementptr inbounds %struct.scrub_block, %struct.scrub_block* %224, i32 0, i32 0
  %226 = call i32 @atomic_inc(i32* %225)
  %227 = load %struct.scrub_bio*, %struct.scrub_bio** %7, align 8
  %228 = getelementptr inbounds %struct.scrub_bio, %struct.scrub_bio* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %228, align 4
  %231 = load %struct.scrub_bio*, %struct.scrub_bio** %7, align 8
  %232 = getelementptr inbounds %struct.scrub_bio, %struct.scrub_bio* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = sext i32 %233 to i64
  %235 = load %struct.scrub_dev*, %struct.scrub_dev** %4, align 8
  %236 = getelementptr inbounds %struct.scrub_dev, %struct.scrub_dev* %235, i32 0, i32 2
  %237 = load i64, i64* %236, align 8
  %238 = icmp eq i64 %234, %237
  br i1 %238, label %239, label %242

239:                                              ; preds = %221
  %240 = load %struct.scrub_dev*, %struct.scrub_dev** %4, align 8
  %241 = call i32 @scrub_submit(%struct.scrub_dev* %240)
  br label %242

242:                                              ; preds = %239, %221
  store i32 0, i32* %3, align 4
  br label %243

243:                                              ; preds = %242, %209, %121
  %244 = load i32, i32* %3, align 4
  ret i32 %244
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local %struct.bio* @bio_alloc(i32, i64) #1

declare dso_local i32 @scrub_submit(%struct.scrub_dev*) #1

declare dso_local i32 @bio_add_page(%struct.bio*, i32, i32, i32) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

declare dso_local i32 @scrub_block_get(%struct.scrub_block*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
