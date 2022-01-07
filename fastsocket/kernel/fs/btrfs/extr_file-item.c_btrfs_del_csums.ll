; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_file-item.c_btrfs_del_csums.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_file-item.c_btrfs_del_csums.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_root = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.btrfs_root*, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.btrfs_path = type { i32, i64*, %struct.extent_buffer** }
%struct.extent_buffer = type { i32 }
%struct.btrfs_key = type { i64, i32, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@BTRFS_EXTENT_CSUM_OBJECTID = common dso_local global i64 0, align 8
@BTRFS_EXTENT_CSUM_KEY = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_del_csums(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.btrfs_trans_handle*, align 8
  %7 = alloca %struct.btrfs_root*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.btrfs_path*, align 8
  %11 = alloca %struct.btrfs_key, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.extent_buffer*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %6, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  %23 = add nsw i32 %21, %22
  store i32 %23, i32* %12, align 4
  %24 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %25 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @btrfs_super_csum_size(i32 %28)
  store i64 %29, i64* %16, align 8
  %30 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %31 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %17, align 4
  %37 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %38 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load %struct.btrfs_root*, %struct.btrfs_root** %40, align 8
  store %struct.btrfs_root* %41, %struct.btrfs_root** %7, align 8
  %42 = call %struct.btrfs_path* (...) @btrfs_alloc_path()
  store %struct.btrfs_path* %42, %struct.btrfs_path** %10, align 8
  %43 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %44 = icmp ne %struct.btrfs_path* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %4
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %244

48:                                               ; preds = %4
  br label %49

49:                                               ; preds = %48, %236
  %50 = load i64, i64* @BTRFS_EXTENT_CSUM_OBJECTID, align 8
  %51 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %11, i32 0, i32 0
  store i64 %50, i64* %51, align 8
  %52 = load i32, i32* %12, align 4
  %53 = sub nsw i32 %52, 1
  %54 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %11, i32 0, i32 1
  store i32 %53, i32* %54, align 8
  %55 = load i64, i64* @BTRFS_EXTENT_CSUM_KEY, align 8
  %56 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %11, i32 0, i32 2
  store i64 %55, i64* %56, align 8
  %57 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %58 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  %59 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %60 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %61 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %62 = call i32 @btrfs_search_slot(%struct.btrfs_trans_handle* %59, %struct.btrfs_root* %60, %struct.btrfs_key* %11, %struct.btrfs_path* %61, i32 -1, i32 1)
  store i32 %62, i32* %15, align 4
  %63 = load i32, i32* %15, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %80

65:                                               ; preds = %49
  %66 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %67 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %66, i32 0, i32 1
  %68 = load i64*, i64** %67, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  br label %239

73:                                               ; preds = %65
  %74 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %75 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %74, i32 0, i32 1
  %76 = load i64*, i64** %75, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 0
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %78, -1
  store i64 %79, i64* %77, align 8
  br label %85

80:                                               ; preds = %49
  %81 = load i32, i32* %15, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  br label %239

84:                                               ; preds = %80
  br label %85

85:                                               ; preds = %84, %73
  %86 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %87 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %86, i32 0, i32 2
  %88 = load %struct.extent_buffer**, %struct.extent_buffer*** %87, align 8
  %89 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %88, i64 0
  %90 = load %struct.extent_buffer*, %struct.extent_buffer** %89, align 8
  store %struct.extent_buffer* %90, %struct.extent_buffer** %14, align 8
  %91 = load %struct.extent_buffer*, %struct.extent_buffer** %14, align 8
  %92 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %93 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %92, i32 0, i32 1
  %94 = load i64*, i64** %93, align 8
  %95 = getelementptr inbounds i64, i64* %94, i64 0
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @btrfs_item_key_to_cpu(%struct.extent_buffer* %91, %struct.btrfs_key* %11, i64 %96)
  %98 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %11, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @BTRFS_EXTENT_CSUM_OBJECTID, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %107, label %102

102:                                              ; preds = %85
  %103 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %11, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @BTRFS_EXTENT_CSUM_KEY, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %102, %85
  br label %239

108:                                              ; preds = %102
  %109 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %11, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* %12, align 4
  %112 = icmp sge i32 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %108
  br label %239

114:                                              ; preds = %108
  %115 = load %struct.extent_buffer*, %struct.extent_buffer** %14, align 8
  %116 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %117 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %116, i32 0, i32 1
  %118 = load i64*, i64** %117, align 8
  %119 = getelementptr inbounds i64, i64* %118, i64 0
  %120 = load i64, i64* %119, align 8
  %121 = call i64 @btrfs_item_size_nr(%struct.extent_buffer* %115, i64 %120)
  %122 = load i64, i64* %16, align 8
  %123 = udiv i64 %121, %122
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %13, align 4
  %125 = load i32, i32* %17, align 4
  %126 = load i32, i32* %13, align 4
  %127 = shl i32 %126, %125
  store i32 %127, i32* %13, align 4
  %128 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %11, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* %13, align 4
  %131 = add nsw i32 %130, %129
  store i32 %131, i32* %13, align 4
  %132 = load i32, i32* %13, align 4
  %133 = load i32, i32* %8, align 4
  %134 = icmp sle i32 %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %114
  br label %239

136:                                              ; preds = %114
  %137 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %11, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* %8, align 4
  %140 = icmp sge i32 %138, %139
  br i1 %140, label %141, label %160

141:                                              ; preds = %136
  %142 = load i32, i32* %13, align 4
  %143 = load i32, i32* %12, align 4
  %144 = icmp sle i32 %142, %143
  br i1 %144, label %145, label %160

145:                                              ; preds = %141
  %146 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %147 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %148 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %149 = call i32 @btrfs_del_item(%struct.btrfs_trans_handle* %146, %struct.btrfs_root* %147, %struct.btrfs_path* %148)
  store i32 %149, i32* %15, align 4
  %150 = load i32, i32* %15, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %145
  br label %240

153:                                              ; preds = %145
  %154 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %11, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* %8, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %159

158:                                              ; preds = %153
  br label %239

159:                                              ; preds = %153
  br label %236

160:                                              ; preds = %141, %136
  %161 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %11, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* %8, align 4
  %164 = icmp slt i32 %162, %163
  br i1 %164, label %165, label %222

165:                                              ; preds = %160
  %166 = load i32, i32* %13, align 4
  %167 = load i32, i32* %12, align 4
  %168 = icmp sgt i32 %166, %167
  br i1 %168, label %169, label %222

169:                                              ; preds = %165
  %170 = load i32, i32* %8, align 4
  %171 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %11, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = sub nsw i32 %170, %172
  %174 = load i32, i32* %17, align 4
  %175 = ashr i32 %173, %174
  %176 = sext i32 %175 to i64
  store i64 %176, i64* %18, align 8
  %177 = load i64, i64* %16, align 8
  %178 = load i64, i64* %18, align 8
  %179 = mul i64 %178, %177
  store i64 %179, i64* %18, align 8
  %180 = load i32, i32* %9, align 4
  %181 = load i32, i32* %17, align 4
  %182 = ashr i32 %180, %181
  %183 = sext i32 %182 to i64
  %184 = load i64, i64* %16, align 8
  %185 = mul i64 %183, %184
  store i64 %185, i64* %19, align 8
  %186 = load %struct.extent_buffer*, %struct.extent_buffer** %14, align 8
  %187 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %188 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %187, i32 0, i32 1
  %189 = load i64*, i64** %188, align 8
  %190 = getelementptr inbounds i64, i64* %189, i64 0
  %191 = load i64, i64* %190, align 8
  %192 = call i64 @btrfs_item_ptr_offset(%struct.extent_buffer* %186, i64 %191)
  store i64 %192, i64* %20, align 8
  %193 = load %struct.extent_buffer*, %struct.extent_buffer** %14, align 8
  %194 = load i64, i64* %20, align 8
  %195 = load i64, i64* %18, align 8
  %196 = add i64 %194, %195
  %197 = load i64, i64* %19, align 8
  %198 = call i32 @memset_extent_buffer(%struct.extent_buffer* %193, i32 0, i64 %196, i64 %197)
  %199 = load i32, i32* %8, align 4
  %200 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %11, i32 0, i32 1
  store i32 %199, i32* %200, align 8
  %201 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %202 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %203 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %204 = load i64, i64* %18, align 8
  %205 = call i32 @btrfs_split_item(%struct.btrfs_trans_handle* %201, %struct.btrfs_root* %202, %struct.btrfs_path* %203, %struct.btrfs_key* %11, i64 %204)
  store i32 %205, i32* %15, align 4
  %206 = load i32, i32* %15, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %218

208:                                              ; preds = %169
  %209 = load i32, i32* %15, align 4
  %210 = load i32, i32* @EAGAIN, align 4
  %211 = sub nsw i32 0, %210
  %212 = icmp ne i32 %209, %211
  br i1 %212, label %213, label %218

213:                                              ; preds = %208
  %214 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %215 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %216 = load i32, i32* %15, align 4
  %217 = call i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle* %214, %struct.btrfs_root* %215, i32 %216)
  br label %240

218:                                              ; preds = %208, %169
  %219 = load i32, i32* %12, align 4
  %220 = sub nsw i32 %219, 1
  %221 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %11, i32 0, i32 1
  store i32 %220, i32* %221, align 8
  br label %235

222:                                              ; preds = %165, %160
  %223 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %224 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %225 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %226 = load i32, i32* %8, align 4
  %227 = load i32, i32* %9, align 4
  %228 = call i32 @truncate_one_csum(%struct.btrfs_trans_handle* %223, %struct.btrfs_root* %224, %struct.btrfs_path* %225, %struct.btrfs_key* %11, i32 %226, i32 %227)
  %229 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %11, i32 0, i32 1
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* %8, align 4
  %232 = icmp slt i32 %230, %231
  br i1 %232, label %233, label %234

233:                                              ; preds = %222
  br label %239

234:                                              ; preds = %222
  br label %235

235:                                              ; preds = %234, %218
  br label %236

236:                                              ; preds = %235, %159
  %237 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %238 = call i32 @btrfs_release_path(%struct.btrfs_path* %237)
  br label %49

239:                                              ; preds = %233, %158, %135, %113, %107, %83, %72
  store i32 0, i32* %15, align 4
  br label %240

240:                                              ; preds = %239, %213, %152
  %241 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %242 = call i32 @btrfs_free_path(%struct.btrfs_path* %241)
  %243 = load i32, i32* %15, align 4
  store i32 %243, i32* %5, align 4
  br label %244

244:                                              ; preds = %240, %45
  %245 = load i32, i32* %5, align 4
  ret i32 %245
}

declare dso_local i64 @btrfs_super_csum_size(i32) #1

declare dso_local %struct.btrfs_path* @btrfs_alloc_path(...) #1

declare dso_local i32 @btrfs_search_slot(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_key*, %struct.btrfs_path*, i32, i32) #1

declare dso_local i32 @btrfs_item_key_to_cpu(%struct.extent_buffer*, %struct.btrfs_key*, i64) #1

declare dso_local i64 @btrfs_item_size_nr(%struct.extent_buffer*, i64) #1

declare dso_local i32 @btrfs_del_item(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*) #1

declare dso_local i64 @btrfs_item_ptr_offset(%struct.extent_buffer*, i64) #1

declare dso_local i32 @memset_extent_buffer(%struct.extent_buffer*, i32, i64, i64) #1

declare dso_local i32 @btrfs_split_item(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*, %struct.btrfs_key*, i64) #1

declare dso_local i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle*, %struct.btrfs_root*, i32) #1

declare dso_local i32 @truncate_one_csum(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*, %struct.btrfs_key*, i32, i32) #1

declare dso_local i32 @btrfs_release_path(%struct.btrfs_path*) #1

declare dso_local i32 @btrfs_free_path(%struct.btrfs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
