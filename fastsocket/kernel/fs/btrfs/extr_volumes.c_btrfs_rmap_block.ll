; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_volumes.c_btrfs_rmap_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_volumes.c_btrfs_rmap_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_mapping_tree = type { %struct.extent_map_tree }
%struct.extent_map_tree = type { i32 }
%struct.extent_map = type { i64, i64, i64 }
%struct.map_lookup = type { i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@BTRFS_BLOCK_GROUP_RAID10 = common dso_local global i32 0, align 4
@BTRFS_BLOCK_GROUP_RAID0 = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_rmap_block(%struct.btrfs_mapping_tree* %0, i64 %1, i64 %2, i64 %3, i64** %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.btrfs_mapping_tree*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.extent_map_tree*, align 8
  %16 = alloca %struct.extent_map*, align 8
  %17 = alloca %struct.map_lookup*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.btrfs_mapping_tree* %0, %struct.btrfs_mapping_tree** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64** %4, i64*** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %25 = load %struct.btrfs_mapping_tree*, %struct.btrfs_mapping_tree** %8, align 8
  %26 = getelementptr inbounds %struct.btrfs_mapping_tree, %struct.btrfs_mapping_tree* %25, i32 0, i32 0
  store %struct.extent_map_tree* %26, %struct.extent_map_tree** %15, align 8
  store i32 0, i32* %24, align 4
  %27 = load %struct.extent_map_tree*, %struct.extent_map_tree** %15, align 8
  %28 = getelementptr inbounds %struct.extent_map_tree, %struct.extent_map_tree* %27, i32 0, i32 0
  %29 = call i32 @read_lock(i32* %28)
  %30 = load %struct.extent_map_tree*, %struct.extent_map_tree** %15, align 8
  %31 = load i64, i64* %9, align 8
  %32 = call %struct.extent_map* @lookup_extent_mapping(%struct.extent_map_tree* %30, i64 %31, i32 1)
  store %struct.extent_map* %32, %struct.extent_map** %16, align 8
  %33 = load %struct.extent_map_tree*, %struct.extent_map_tree** %15, align 8
  %34 = getelementptr inbounds %struct.extent_map_tree, %struct.extent_map_tree* %33, i32 0, i32 0
  %35 = call i32 @read_unlock(i32* %34)
  %36 = load %struct.extent_map*, %struct.extent_map** %16, align 8
  %37 = icmp ne %struct.extent_map* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %7
  %39 = load %struct.extent_map*, %struct.extent_map** %16, align 8
  %40 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %9, align 8
  %43 = icmp ne i64 %41, %42
  br label %44

44:                                               ; preds = %38, %7
  %45 = phi i1 [ true, %7 ], [ %43, %38 ]
  %46 = zext i1 %45 to i32
  %47 = call i32 @BUG_ON(i32 %46)
  %48 = load %struct.extent_map*, %struct.extent_map** %16, align 8
  %49 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to %struct.map_lookup*
  store %struct.map_lookup* %51, %struct.map_lookup** %17, align 8
  %52 = load %struct.extent_map*, %struct.extent_map** %16, align 8
  %53 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %20, align 8
  %55 = load %struct.map_lookup*, %struct.map_lookup** %17, align 8
  %56 = getelementptr inbounds %struct.map_lookup, %struct.map_lookup* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @BTRFS_BLOCK_GROUP_RAID10, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %44
  %62 = load i64, i64* %20, align 8
  %63 = load %struct.map_lookup*, %struct.map_lookup** %17, align 8
  %64 = getelementptr inbounds %struct.map_lookup, %struct.map_lookup* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.map_lookup*, %struct.map_lookup** %17, align 8
  %67 = getelementptr inbounds %struct.map_lookup, %struct.map_lookup* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = sdiv i32 %65, %68
  %70 = call i32 @do_div(i64 %62, i32 %69)
  br label %85

71:                                               ; preds = %44
  %72 = load %struct.map_lookup*, %struct.map_lookup** %17, align 8
  %73 = getelementptr inbounds %struct.map_lookup, %struct.map_lookup* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @BTRFS_BLOCK_GROUP_RAID0, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %71
  %79 = load i64, i64* %20, align 8
  %80 = load %struct.map_lookup*, %struct.map_lookup** %17, align 8
  %81 = getelementptr inbounds %struct.map_lookup, %struct.map_lookup* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @do_div(i64 %79, i32 %82)
  br label %84

84:                                               ; preds = %78, %71
  br label %85

85:                                               ; preds = %84, %61
  %86 = load %struct.map_lookup*, %struct.map_lookup** %17, align 8
  %87 = getelementptr inbounds %struct.map_lookup, %struct.map_lookup* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = mul i64 8, %89
  %91 = trunc i64 %90 to i32
  %92 = load i32, i32* @GFP_NOFS, align 4
  %93 = call i64* @kzalloc(i32 %91, i32 %92)
  store i64* %93, i64** %18, align 8
  %94 = load i64*, i64** %18, align 8
  %95 = icmp ne i64* %94, null
  %96 = xor i1 %95, true
  %97 = zext i1 %96 to i32
  %98 = call i32 @BUG_ON(i32 %97)
  store i32 0, i32* %22, align 4
  br label %99

99:                                               ; preds = %254, %85
  %100 = load i32, i32* %22, align 4
  %101 = load %struct.map_lookup*, %struct.map_lookup** %17, align 8
  %102 = getelementptr inbounds %struct.map_lookup, %struct.map_lookup* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = icmp slt i32 %100, %103
  br i1 %104, label %105, label %257

105:                                              ; preds = %99
  %106 = load i64, i64* %11, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %122

108:                                              ; preds = %105
  %109 = load %struct.map_lookup*, %struct.map_lookup** %17, align 8
  %110 = getelementptr inbounds %struct.map_lookup, %struct.map_lookup* %109, i32 0, i32 4
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = load i32, i32* %22, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* %11, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %108
  br label %254

122:                                              ; preds = %108, %105
  %123 = load %struct.map_lookup*, %struct.map_lookup** %17, align 8
  %124 = getelementptr inbounds %struct.map_lookup, %struct.map_lookup* %123, i32 0, i32 4
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  %126 = load i32, i32* %22, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* %10, align 8
  %132 = icmp sgt i64 %130, %131
  br i1 %132, label %146, label %133

133:                                              ; preds = %122
  %134 = load %struct.map_lookup*, %struct.map_lookup** %17, align 8
  %135 = getelementptr inbounds %struct.map_lookup, %struct.map_lookup* %134, i32 0, i32 4
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %135, align 8
  %137 = load i32, i32* %22, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* %20, align 8
  %143 = add nsw i64 %141, %142
  %144 = load i64, i64* %10, align 8
  %145 = icmp sle i64 %143, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %133, %122
  br label %254

147:                                              ; preds = %133
  %148 = load i64, i64* %10, align 8
  %149 = load %struct.map_lookup*, %struct.map_lookup** %17, align 8
  %150 = getelementptr inbounds %struct.map_lookup, %struct.map_lookup* %149, i32 0, i32 4
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %150, align 8
  %152 = load i32, i32* %22, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = sub nsw i64 %148, %156
  store i64 %157, i64* %21, align 8
  %158 = load i64, i64* %21, align 8
  %159 = load %struct.map_lookup*, %struct.map_lookup** %17, align 8
  %160 = getelementptr inbounds %struct.map_lookup, %struct.map_lookup* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @do_div(i64 %158, i32 %161)
  %163 = load %struct.map_lookup*, %struct.map_lookup** %17, align 8
  %164 = getelementptr inbounds %struct.map_lookup, %struct.map_lookup* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @BTRFS_BLOCK_GROUP_RAID10, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %184

169:                                              ; preds = %147
  %170 = load i64, i64* %21, align 8
  %171 = load %struct.map_lookup*, %struct.map_lookup** %17, align 8
  %172 = getelementptr inbounds %struct.map_lookup, %struct.map_lookup* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = sext i32 %173 to i64
  %175 = mul nsw i64 %170, %174
  %176 = load i32, i32* %22, align 4
  %177 = sext i32 %176 to i64
  %178 = add nsw i64 %175, %177
  store i64 %178, i64* %21, align 8
  %179 = load i64, i64* %21, align 8
  %180 = load %struct.map_lookup*, %struct.map_lookup** %17, align 8
  %181 = getelementptr inbounds %struct.map_lookup, %struct.map_lookup* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @do_div(i64 %179, i32 %182)
  br label %202

184:                                              ; preds = %147
  %185 = load %struct.map_lookup*, %struct.map_lookup** %17, align 8
  %186 = getelementptr inbounds %struct.map_lookup, %struct.map_lookup* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* @BTRFS_BLOCK_GROUP_RAID0, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %201

191:                                              ; preds = %184
  %192 = load i64, i64* %21, align 8
  %193 = load %struct.map_lookup*, %struct.map_lookup** %17, align 8
  %194 = getelementptr inbounds %struct.map_lookup, %struct.map_lookup* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = sext i32 %195 to i64
  %197 = mul nsw i64 %192, %196
  %198 = load i32, i32* %22, align 4
  %199 = sext i32 %198 to i64
  %200 = add nsw i64 %197, %199
  store i64 %200, i64* %21, align 8
  br label %201

201:                                              ; preds = %191, %184
  br label %202

202:                                              ; preds = %201, %169
  %203 = load i64, i64* %9, align 8
  %204 = load i64, i64* %21, align 8
  %205 = load %struct.map_lookup*, %struct.map_lookup** %17, align 8
  %206 = getelementptr inbounds %struct.map_lookup, %struct.map_lookup* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 4
  %208 = sext i32 %207 to i64
  %209 = mul nsw i64 %204, %208
  %210 = add nsw i64 %203, %209
  store i64 %210, i64* %19, align 8
  %211 = load i32, i32* %24, align 4
  %212 = load %struct.map_lookup*, %struct.map_lookup** %17, align 8
  %213 = getelementptr inbounds %struct.map_lookup, %struct.map_lookup* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = icmp sge i32 %211, %214
  %216 = zext i1 %215 to i32
  %217 = call i32 @WARN_ON(i32 %216)
  store i32 0, i32* %23, align 4
  br label %218

218:                                              ; preds = %232, %202
  %219 = load i32, i32* %23, align 4
  %220 = load i32, i32* %24, align 4
  %221 = icmp slt i32 %219, %220
  br i1 %221, label %222, label %235

222:                                              ; preds = %218
  %223 = load i64*, i64** %18, align 8
  %224 = load i32, i32* %23, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i64, i64* %223, i64 %225
  %227 = load i64, i64* %226, align 8
  %228 = load i64, i64* %19, align 8
  %229 = icmp eq i64 %227, %228
  br i1 %229, label %230, label %231

230:                                              ; preds = %222
  br label %235

231:                                              ; preds = %222
  br label %232

232:                                              ; preds = %231
  %233 = load i32, i32* %23, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %23, align 4
  br label %218

235:                                              ; preds = %230, %218
  %236 = load i32, i32* %23, align 4
  %237 = load i32, i32* %24, align 4
  %238 = icmp eq i32 %236, %237
  br i1 %238, label %239, label %253

239:                                              ; preds = %235
  %240 = load i32, i32* %24, align 4
  %241 = load %struct.map_lookup*, %struct.map_lookup** %17, align 8
  %242 = getelementptr inbounds %struct.map_lookup, %struct.map_lookup* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = icmp sge i32 %240, %243
  %245 = zext i1 %244 to i32
  %246 = call i32 @WARN_ON(i32 %245)
  %247 = load i64, i64* %19, align 8
  %248 = load i64*, i64** %18, align 8
  %249 = load i32, i32* %24, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %24, align 4
  %251 = sext i32 %249 to i64
  %252 = getelementptr inbounds i64, i64* %248, i64 %251
  store i64 %247, i64* %252, align 8
  br label %253

253:                                              ; preds = %239, %235
  br label %254

254:                                              ; preds = %253, %146, %121
  %255 = load i32, i32* %22, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %22, align 4
  br label %99

257:                                              ; preds = %99
  %258 = load i64*, i64** %18, align 8
  %259 = load i64**, i64*** %12, align 8
  store i64* %258, i64** %259, align 8
  %260 = load i32, i32* %24, align 4
  %261 = load i32*, i32** %13, align 8
  store i32 %260, i32* %261, align 4
  %262 = load %struct.map_lookup*, %struct.map_lookup** %17, align 8
  %263 = getelementptr inbounds %struct.map_lookup, %struct.map_lookup* %262, i32 0, i32 3
  %264 = load i32, i32* %263, align 4
  %265 = load i32*, i32** %14, align 8
  store i32 %264, i32* %265, align 4
  %266 = load %struct.extent_map*, %struct.extent_map** %16, align 8
  %267 = call i32 @free_extent_map(%struct.extent_map* %266)
  ret i32 0
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local %struct.extent_map* @lookup_extent_mapping(%struct.extent_map_tree*, i64, i32) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @do_div(i64, i32) #1

declare dso_local i64* @kzalloc(i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @free_extent_map(%struct.extent_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
