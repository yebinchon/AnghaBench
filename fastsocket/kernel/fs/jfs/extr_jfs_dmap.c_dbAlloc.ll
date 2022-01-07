; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_dmap.c_dbAlloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_dmap.c_dbAlloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.bmap = type { i64, i32, i32, i32*, i32 }
%struct.metapage = type { i64 }
%struct.dmap = type { i32 }
%struct.TYPE_3__ = type { %struct.bmap*, %struct.inode* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"dbAlloc: the hint is outside the map\00", align 1
@EIO = common dso_local global i32 0, align 4
@RDWRLOCK_DMAP = common dso_local global i32 0, align 4
@BPERDMAP = common dso_local global i64 0, align 8
@PSIZE = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dbAlloc(%struct.inode* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.inode*, align 8
  %13 = alloca %struct.bmap*, align 8
  %14 = alloca %struct.metapage*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.dmap*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %21 = load %struct.inode*, %struct.inode** %6, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.TYPE_3__* @JFS_SBI(i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load %struct.inode*, %struct.inode** %25, align 8
  store %struct.inode* %26, %struct.inode** %12, align 8
  %27 = load i64, i64* %8, align 8
  %28 = icmp sgt i64 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load i64, i64* %8, align 8
  %32 = call i32 @BLKSTOL2(i64 %31)
  store i32 %32, i32* %18, align 4
  %33 = load %struct.inode*, %struct.inode** %6, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.TYPE_3__* @JFS_SBI(i32 %35)
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load %struct.bmap*, %struct.bmap** %37, align 8
  store %struct.bmap* %38, %struct.bmap** %13, align 8
  %39 = load %struct.bmap*, %struct.bmap** %13, align 8
  %40 = getelementptr inbounds %struct.bmap, %struct.bmap* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %19, align 8
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* %19, align 8
  %44 = icmp sge i64 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %4
  %46 = load %struct.inode*, %struct.inode** %6, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @jfs_error(i32 %48, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @EIO, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %272

52:                                               ; preds = %4
  %53 = load i32, i32* %18, align 4
  %54 = load %struct.bmap*, %struct.bmap** %13, align 8
  %55 = getelementptr inbounds %struct.bmap, %struct.bmap* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = icmp sgt i32 %53, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %52
  %59 = load %struct.inode*, %struct.inode** %12, align 8
  %60 = load i32, i32* @RDWRLOCK_DMAP, align 4
  %61 = call i32 @IWRITE_LOCK(%struct.inode* %59, i32 %60)
  %62 = load %struct.bmap*, %struct.bmap** %13, align 8
  %63 = load i64, i64* %8, align 8
  %64 = load i32, i32* %18, align 4
  %65 = load i64*, i64** %9, align 8
  %66 = call i32 @dbAllocAny(%struct.bmap* %62, i64 %63, i32 %64, i64* %65)
  store i32 %66, i32* %10, align 4
  br label %264

67:                                               ; preds = %52
  %68 = load i64, i64* %7, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  br label %242

71:                                               ; preds = %67
  %72 = load i64, i64* %7, align 8
  %73 = add nsw i64 %72, 1
  store i64 %73, i64* %16, align 8
  %74 = load i64, i64* %16, align 8
  %75 = load %struct.bmap*, %struct.bmap** %13, align 8
  %76 = getelementptr inbounds %struct.bmap, %struct.bmap* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp sge i64 %74, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  br label %242

80:                                               ; preds = %71
  %81 = load i64, i64* %16, align 8
  %82 = load %struct.bmap*, %struct.bmap** %13, align 8
  %83 = getelementptr inbounds %struct.bmap, %struct.bmap* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = zext i32 %84 to i64
  %86 = ashr i64 %81, %85
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %11, align 4
  %88 = load i64, i64* %16, align 8
  %89 = load %struct.bmap*, %struct.bmap** %13, align 8
  %90 = getelementptr inbounds %struct.bmap, %struct.bmap* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = sub nsw i32 %91, 1
  %93 = sext i32 %92 to i64
  %94 = and i64 %88, %93
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %80
  %97 = load %struct.bmap*, %struct.bmap** %13, align 8
  %98 = getelementptr inbounds %struct.bmap, %struct.bmap* %97, i32 0, i32 3
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %11, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = call i32 @atomic_read(i32* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %96
  br label %242

106:                                              ; preds = %96
  br label %107

107:                                              ; preds = %106, %80
  %108 = load i64, i64* %8, align 8
  %109 = load i64, i64* @BPERDMAP, align 8
  %110 = icmp sle i64 %108, %109
  br i1 %110, label %111, label %225

111:                                              ; preds = %107
  %112 = load %struct.inode*, %struct.inode** %12, align 8
  %113 = load i32, i32* @RDWRLOCK_DMAP, align 4
  %114 = call i32 @IREAD_LOCK(%struct.inode* %112, i32 %113)
  %115 = load i32, i32* @EIO, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %10, align 4
  %117 = load i64, i64* %16, align 8
  %118 = load %struct.bmap*, %struct.bmap** %13, align 8
  %119 = getelementptr inbounds %struct.bmap, %struct.bmap* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 8
  %121 = call i64 @BLKTODMAP(i64 %117, i32 %120)
  store i64 %121, i64* %15, align 8
  %122 = load %struct.inode*, %struct.inode** %12, align 8
  %123 = load i64, i64* %15, align 8
  %124 = load i32, i32* @PSIZE, align 4
  %125 = call %struct.metapage* @read_metapage(%struct.inode* %122, i64 %123, i32 %124, i32 0)
  store %struct.metapage* %125, %struct.metapage** %14, align 8
  %126 = load %struct.metapage*, %struct.metapage** %14, align 8
  %127 = icmp eq %struct.metapage* %126, null
  br i1 %127, label %128, label %129

128:                                              ; preds = %111
  br label %268

129:                                              ; preds = %111
  %130 = load %struct.metapage*, %struct.metapage** %14, align 8
  %131 = getelementptr inbounds %struct.metapage, %struct.metapage* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = inttoptr i64 %132 to %struct.dmap*
  store %struct.dmap* %133, %struct.dmap** %17, align 8
  %134 = load %struct.bmap*, %struct.bmap** %13, align 8
  %135 = load %struct.dmap*, %struct.dmap** %17, align 8
  %136 = load i64, i64* %16, align 8
  %137 = load i64, i64* %8, align 8
  %138 = trunc i64 %137 to i32
  %139 = call i32 @dbAllocNext(%struct.bmap* %134, %struct.dmap* %135, i64 %136, i32 %138)
  store i32 %139, i32* %10, align 4
  %140 = load i32, i32* @ENOSPC, align 4
  %141 = sub nsw i32 0, %140
  %142 = icmp ne i32 %139, %141
  br i1 %142, label %143, label %154

143:                                              ; preds = %129
  %144 = load i32, i32* %10, align 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %143
  %147 = load i64, i64* %16, align 8
  %148 = load i64*, i64** %9, align 8
  store i64 %147, i64* %148, align 8
  %149 = load %struct.metapage*, %struct.metapage** %14, align 8
  %150 = call i32 @mark_metapage_dirty(%struct.metapage* %149)
  br label %151

151:                                              ; preds = %146, %143
  %152 = load %struct.metapage*, %struct.metapage** %14, align 8
  %153 = call i32 @release_metapage(%struct.metapage* %152)
  br label %268

154:                                              ; preds = %129
  %155 = load %struct.bmap*, %struct.bmap** %13, align 8
  %156 = getelementptr inbounds %struct.bmap, %struct.bmap* %155, i32 0, i32 3
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* %11, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = call i32 @atomic_read(i32* %160)
  store i32 %161, i32* %20, align 4
  %162 = load i32, i32* %20, align 4
  %163 = icmp sgt i32 %162, 1
  br i1 %163, label %174, label %164

164:                                              ; preds = %154
  %165 = load i32, i32* %20, align 4
  %166 = icmp eq i32 %165, 1
  br i1 %166, label %167, label %179

167:                                              ; preds = %164
  %168 = load %struct.inode*, %struct.inode** %6, align 8
  %169 = call %struct.TYPE_4__* @JFS_IP(%struct.inode* %168)
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* %11, align 4
  %173 = icmp ne i32 %171, %172
  br i1 %173, label %174, label %179

174:                                              ; preds = %167, %154
  %175 = load %struct.metapage*, %struct.metapage** %14, align 8
  %176 = call i32 @release_metapage(%struct.metapage* %175)
  %177 = load %struct.inode*, %struct.inode** %12, align 8
  %178 = call i32 @IREAD_UNLOCK(%struct.inode* %177)
  br label %242

179:                                              ; preds = %167, %164
  %180 = load %struct.bmap*, %struct.bmap** %13, align 8
  %181 = load %struct.dmap*, %struct.dmap** %17, align 8
  %182 = load i64, i64* %16, align 8
  %183 = load i64, i64* %8, align 8
  %184 = trunc i64 %183 to i32
  %185 = load i32, i32* %18, align 4
  %186 = load i64*, i64** %9, align 8
  %187 = call i32 @dbAllocNear(%struct.bmap* %180, %struct.dmap* %181, i64 %182, i32 %184, i32 %185, i64* %186)
  store i32 %187, i32* %10, align 4
  %188 = load i32, i32* @ENOSPC, align 4
  %189 = sub nsw i32 0, %188
  %190 = icmp ne i32 %187, %189
  br i1 %190, label %191, label %200

191:                                              ; preds = %179
  %192 = load i32, i32* %10, align 4
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %191
  %195 = load %struct.metapage*, %struct.metapage** %14, align 8
  %196 = call i32 @mark_metapage_dirty(%struct.metapage* %195)
  br label %197

197:                                              ; preds = %194, %191
  %198 = load %struct.metapage*, %struct.metapage** %14, align 8
  %199 = call i32 @release_metapage(%struct.metapage* %198)
  br label %268

200:                                              ; preds = %179
  %201 = load %struct.bmap*, %struct.bmap** %13, align 8
  %202 = load %struct.dmap*, %struct.dmap** %17, align 8
  %203 = load i64, i64* %8, align 8
  %204 = trunc i64 %203 to i32
  %205 = load i32, i32* %18, align 4
  %206 = load i64*, i64** %9, align 8
  %207 = call i32 @dbAllocDmapLev(%struct.bmap* %201, %struct.dmap* %202, i32 %204, i32 %205, i64* %206)
  store i32 %207, i32* %10, align 4
  %208 = load i32, i32* @ENOSPC, align 4
  %209 = sub nsw i32 0, %208
  %210 = icmp ne i32 %207, %209
  br i1 %210, label %211, label %220

211:                                              ; preds = %200
  %212 = load i32, i32* %10, align 4
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %211
  %215 = load %struct.metapage*, %struct.metapage** %14, align 8
  %216 = call i32 @mark_metapage_dirty(%struct.metapage* %215)
  br label %217

217:                                              ; preds = %214, %211
  %218 = load %struct.metapage*, %struct.metapage** %14, align 8
  %219 = call i32 @release_metapage(%struct.metapage* %218)
  br label %268

220:                                              ; preds = %200
  %221 = load %struct.metapage*, %struct.metapage** %14, align 8
  %222 = call i32 @release_metapage(%struct.metapage* %221)
  %223 = load %struct.inode*, %struct.inode** %12, align 8
  %224 = call i32 @IREAD_UNLOCK(%struct.inode* %223)
  br label %225

225:                                              ; preds = %220, %107
  %226 = load %struct.inode*, %struct.inode** %12, align 8
  %227 = load i32, i32* @RDWRLOCK_DMAP, align 4
  %228 = call i32 @IWRITE_LOCK(%struct.inode* %226, i32 %227)
  %229 = load %struct.bmap*, %struct.bmap** %13, align 8
  %230 = load i32, i32* %11, align 4
  %231 = load i64, i64* %8, align 8
  %232 = load i32, i32* %18, align 4
  %233 = load i64*, i64** %9, align 8
  %234 = call i32 @dbAllocAG(%struct.bmap* %229, i32 %230, i64 %231, i32 %232, i64* %233)
  store i32 %234, i32* %10, align 4
  %235 = load i32, i32* @ENOSPC, align 4
  %236 = sub nsw i32 0, %235
  %237 = icmp ne i32 %234, %236
  br i1 %237, label %238, label %239

238:                                              ; preds = %225
  br label %264

239:                                              ; preds = %225
  %240 = load %struct.inode*, %struct.inode** %12, align 8
  %241 = call i32 @IWRITE_UNLOCK(%struct.inode* %240)
  br label %242

242:                                              ; preds = %239, %174, %105, %79, %70
  %243 = load %struct.inode*, %struct.inode** %12, align 8
  %244 = call i32 @dbNextAG(%struct.inode* %243)
  store i32 %244, i32* %11, align 4
  %245 = load %struct.inode*, %struct.inode** %12, align 8
  %246 = load i32, i32* @RDWRLOCK_DMAP, align 4
  %247 = call i32 @IWRITE_LOCK(%struct.inode* %245, i32 %246)
  %248 = load %struct.bmap*, %struct.bmap** %13, align 8
  %249 = load i32, i32* %11, align 4
  %250 = load i64, i64* %8, align 8
  %251 = load i32, i32* %18, align 4
  %252 = load i64*, i64** %9, align 8
  %253 = call i32 @dbAllocAG(%struct.bmap* %248, i32 %249, i64 %250, i32 %251, i64* %252)
  store i32 %253, i32* %10, align 4
  %254 = load i32, i32* @ENOSPC, align 4
  %255 = sub nsw i32 0, %254
  %256 = icmp eq i32 %253, %255
  br i1 %256, label %257, label %263

257:                                              ; preds = %242
  %258 = load %struct.bmap*, %struct.bmap** %13, align 8
  %259 = load i64, i64* %8, align 8
  %260 = load i32, i32* %18, align 4
  %261 = load i64*, i64** %9, align 8
  %262 = call i32 @dbAllocAny(%struct.bmap* %258, i64 %259, i32 %260, i64* %261)
  store i32 %262, i32* %10, align 4
  br label %263

263:                                              ; preds = %257, %242
  br label %264

264:                                              ; preds = %263, %238, %58
  %265 = load %struct.inode*, %struct.inode** %12, align 8
  %266 = call i32 @IWRITE_UNLOCK(%struct.inode* %265)
  %267 = load i32, i32* %10, align 4
  store i32 %267, i32* %5, align 4
  br label %272

268:                                              ; preds = %217, %197, %151, %128
  %269 = load %struct.inode*, %struct.inode** %12, align 8
  %270 = call i32 @IREAD_UNLOCK(%struct.inode* %269)
  %271 = load i32, i32* %10, align 4
  store i32 %271, i32* %5, align 4
  br label %272

272:                                              ; preds = %268, %264, %45
  %273 = load i32, i32* %5, align 4
  ret i32 %273
}

declare dso_local %struct.TYPE_3__* @JFS_SBI(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @BLKSTOL2(i64) #1

declare dso_local i32 @jfs_error(i32, i8*) #1

declare dso_local i32 @IWRITE_LOCK(%struct.inode*, i32) #1

declare dso_local i32 @dbAllocAny(%struct.bmap*, i64, i32, i64*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @IREAD_LOCK(%struct.inode*, i32) #1

declare dso_local i64 @BLKTODMAP(i64, i32) #1

declare dso_local %struct.metapage* @read_metapage(%struct.inode*, i64, i32, i32) #1

declare dso_local i32 @dbAllocNext(%struct.bmap*, %struct.dmap*, i64, i32) #1

declare dso_local i32 @mark_metapage_dirty(%struct.metapage*) #1

declare dso_local i32 @release_metapage(%struct.metapage*) #1

declare dso_local %struct.TYPE_4__* @JFS_IP(%struct.inode*) #1

declare dso_local i32 @IREAD_UNLOCK(%struct.inode*) #1

declare dso_local i32 @dbAllocNear(%struct.bmap*, %struct.dmap*, i64, i32, i32, i64*) #1

declare dso_local i32 @dbAllocDmapLev(%struct.bmap*, %struct.dmap*, i32, i32, i64*) #1

declare dso_local i32 @dbAllocAG(%struct.bmap*, i32, i64, i32, i64*) #1

declare dso_local i32 @IWRITE_UNLOCK(%struct.inode*) #1

declare dso_local i32 @dbNextAG(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
