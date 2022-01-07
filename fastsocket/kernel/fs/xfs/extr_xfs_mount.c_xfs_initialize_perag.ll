; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_mount.c_xfs_initialize_perag.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_mount.c_xfs_initialize_perag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i64, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i64, i64 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_16__*, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@KM_MAYFAIL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@RB_ROOT = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@XFS_MOUNT_SMALL_INUMS = common dso_local global i32 0, align 4
@XFS_MAXINUMBER_32 = common dso_local global i64 0, align 8
@XFS_MOUNT_32BITINODES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_initialize_perag(%struct.TYPE_16__* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store i64 0, i64* %10, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 4
  store %struct.TYPE_14__* %18, %struct.TYPE_14__** %14, align 8
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %15, align 4
  store i64 0, i64* %8, align 8
  br label %21

21:                                               ; preds = %95, %3
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* %6, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %98

25:                                               ; preds = %21
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %27 = load i64, i64* %8, align 8
  %28 = call %struct.TYPE_15__* @xfs_perag_get(%struct.TYPE_16__* %26, i64 %27)
  store %struct.TYPE_15__* %28, %struct.TYPE_15__** %11, align 8
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %30 = icmp ne %struct.TYPE_15__* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %33 = call i32 @xfs_perag_put(%struct.TYPE_15__* %32)
  br label %95

34:                                               ; preds = %25
  %35 = load i64, i64* %10, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = load i64, i64* %8, align 8
  store i64 %38, i64* %10, align 8
  br label %39

39:                                               ; preds = %37, %34
  %40 = load i32, i32* @KM_MAYFAIL, align 4
  %41 = call %struct.TYPE_15__* @kmem_zalloc(i32 48, i32 %40)
  store %struct.TYPE_15__* %41, %struct.TYPE_15__** %11, align 8
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %43 = icmp ne %struct.TYPE_15__* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  br label %229

45:                                               ; preds = %39
  %46 = load i64, i64* %8, align 8
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 8
  store i64 %46, i64* %48, align 8
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 7
  store %struct.TYPE_16__* %49, %struct.TYPE_16__** %51, align 8
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 6
  %54 = call i32 @spin_lock_init(i32* %53)
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 5
  %57 = call i32 @mutex_init(i32* %56)
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 4
  %60 = load i32, i32* @GFP_ATOMIC, align 4
  %61 = call i32 @INIT_RADIX_TREE(i32* %59, i32 %60)
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 3
  %64 = call i32 @spin_lock_init(i32* %63)
  %65 = load i32, i32* @RB_ROOT, align 4
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* @GFP_NOFS, align 4
  %69 = call i64 @radix_tree_preload(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %45
  br label %229

72:                                               ; preds = %45
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 3
  %75 = call i32 @spin_lock(i32* %74)
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 1
  %78 = load i64, i64* %8, align 8
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %80 = call i64 @radix_tree_insert(i32* %77, i64 %78, %struct.TYPE_15__* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %72
  %83 = call i32 (...) @BUG()
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 3
  %86 = call i32 @spin_unlock(i32* %85)
  %87 = call i32 (...) @radix_tree_preload_end()
  %88 = load i32, i32* @EEXIST, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %15, align 4
  br label %229

90:                                               ; preds = %72
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 3
  %93 = call i32 @spin_unlock(i32* %92)
  %94 = call i32 (...) @radix_tree_preload_end()
  br label %95

95:                                               ; preds = %90, %31
  %96 = load i64, i64* %8, align 8
  %97 = add nsw i64 %96, 1
  store i64 %97, i64* %8, align 8
  br label %21

98:                                               ; preds = %21
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = sub nsw i32 %102, 1
  %104 = call i32 @XFS_OFFBNO_TO_AGINO(%struct.TYPE_16__* %99, i32 %103, i32 0)
  store i32 %104, i32* %12, align 4
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %106 = load i64, i64* %6, align 8
  %107 = sub nsw i64 %106, 1
  %108 = load i32, i32* %12, align 4
  %109 = call i64 @XFS_AGINO_TO_INO(%struct.TYPE_16__* %105, i64 %107, i32 %108)
  store i64 %109, i64* %13, align 8
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @XFS_MOUNT_SMALL_INUMS, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %126

116:                                              ; preds = %98
  %117 = load i64, i64* %13, align 8
  %118 = load i64, i64* @XFS_MAXINUMBER_32, align 8
  %119 = icmp sgt i64 %117, %118
  br i1 %119, label %120, label %126

120:                                              ; preds = %116
  %121 = load i32, i32* @XFS_MOUNT_32BITINODES, align 4
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = or i32 %124, %121
  store i32 %125, i32* %123, align 8
  br label %133

126:                                              ; preds = %116, %98
  %127 = load i32, i32* @XFS_MOUNT_32BITINODES, align 4
  %128 = xor i32 %127, -1
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = and i32 %131, %128
  store i32 %132, i32* %130, align 8
  br label %133

133:                                              ; preds = %126, %120
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @XFS_MOUNT_32BITINODES, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %205

140:                                              ; preds = %133
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %168

145:                                              ; preds = %140
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = mul nsw i64 %148, %151
  store i64 %152, i64* %16, align 8
  %153 = load i64, i64* %16, align 8
  %154 = call i32 @do_div(i64 %153, i32 100)
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = sub nsw i32 %157, 1
  %159 = sext i32 %158 to i64
  %160 = load i64, i64* %16, align 8
  %161 = add nsw i64 %160, %159
  store i64 %161, i64* %16, align 8
  %162 = load i64, i64* %16, align 8
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @do_div(i64 %162, i32 %165)
  %167 = load i64, i64* %16, align 8
  store i64 %167, i64* %9, align 8
  br label %170

168:                                              ; preds = %140
  %169 = load i64, i64* %6, align 8
  store i64 %169, i64* %9, align 8
  br label %170

170:                                              ; preds = %168, %145
  store i64 0, i64* %8, align 8
  br label %171

171:                                              ; preds = %201, %170
  %172 = load i64, i64* %8, align 8
  %173 = load i64, i64* %6, align 8
  %174 = icmp slt i64 %172, %173
  br i1 %174, label %175, label %204

175:                                              ; preds = %171
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %177 = load i64, i64* %8, align 8
  %178 = load i32, i32* %12, align 4
  %179 = call i64 @XFS_AGINO_TO_INO(%struct.TYPE_16__* %176, i64 %177, i32 %178)
  store i64 %179, i64* %13, align 8
  %180 = load i64, i64* %13, align 8
  %181 = load i64, i64* @XFS_MAXINUMBER_32, align 8
  %182 = icmp sgt i64 %180, %181
  br i1 %182, label %183, label %186

183:                                              ; preds = %175
  %184 = load i64, i64* %8, align 8
  %185 = add nsw i64 %184, 1
  store i64 %185, i64* %8, align 8
  br label %204

186:                                              ; preds = %175
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %188 = load i64, i64* %8, align 8
  %189 = call %struct.TYPE_15__* @xfs_perag_get(%struct.TYPE_16__* %187, i64 %188)
  store %struct.TYPE_15__* %189, %struct.TYPE_15__** %11, align 8
  %190 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %191 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %190, i32 0, i32 0
  store i32 1, i32* %191, align 8
  %192 = load i64, i64* %8, align 8
  %193 = load i64, i64* %9, align 8
  %194 = icmp slt i64 %192, %193
  br i1 %194, label %195, label %198

195:                                              ; preds = %186
  %196 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %197 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %196, i32 0, i32 1
  store i32 1, i32* %197, align 4
  br label %198

198:                                              ; preds = %195, %186
  %199 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %200 = call i32 @xfs_perag_put(%struct.TYPE_15__* %199)
  br label %201

201:                                              ; preds = %198
  %202 = load i64, i64* %8, align 8
  %203 = add nsw i64 %202, 1
  store i64 %203, i64* %8, align 8
  br label %171

204:                                              ; preds = %183, %171
  br label %222

205:                                              ; preds = %133
  store i64 0, i64* %8, align 8
  br label %206

206:                                              ; preds = %218, %205
  %207 = load i64, i64* %8, align 8
  %208 = load i64, i64* %6, align 8
  %209 = icmp slt i64 %207, %208
  br i1 %209, label %210, label %221

210:                                              ; preds = %206
  %211 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %212 = load i64, i64* %8, align 8
  %213 = call %struct.TYPE_15__* @xfs_perag_get(%struct.TYPE_16__* %211, i64 %212)
  store %struct.TYPE_15__* %213, %struct.TYPE_15__** %11, align 8
  %214 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %215 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %214, i32 0, i32 0
  store i32 1, i32* %215, align 8
  %216 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %217 = call i32 @xfs_perag_put(%struct.TYPE_15__* %216)
  br label %218

218:                                              ; preds = %210
  %219 = load i64, i64* %8, align 8
  %220 = add nsw i64 %219, 1
  store i64 %220, i64* %8, align 8
  br label %206

221:                                              ; preds = %206
  br label %222

222:                                              ; preds = %221, %204
  %223 = load i64*, i64** %7, align 8
  %224 = icmp ne i64* %223, null
  br i1 %224, label %225, label %228

225:                                              ; preds = %222
  %226 = load i64, i64* %8, align 8
  %227 = load i64*, i64** %7, align 8
  store i64 %226, i64* %227, align 8
  br label %228

228:                                              ; preds = %225, %222
  store i32 0, i32* %4, align 4
  br label %248

229:                                              ; preds = %82, %71, %44
  %230 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %231 = call i32 @kmem_free(%struct.TYPE_15__* %230)
  br label %232

232:                                              ; preds = %243, %229
  %233 = load i64, i64* %8, align 8
  %234 = load i64, i64* %10, align 8
  %235 = icmp sgt i64 %233, %234
  br i1 %235, label %236, label %246

236:                                              ; preds = %232
  %237 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %237, i32 0, i32 1
  %239 = load i64, i64* %8, align 8
  %240 = call %struct.TYPE_15__* @radix_tree_delete(i32* %238, i64 %239)
  store %struct.TYPE_15__* %240, %struct.TYPE_15__** %11, align 8
  %241 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %242 = call i32 @kmem_free(%struct.TYPE_15__* %241)
  br label %243

243:                                              ; preds = %236
  %244 = load i64, i64* %8, align 8
  %245 = add nsw i64 %244, -1
  store i64 %245, i64* %8, align 8
  br label %232

246:                                              ; preds = %232
  %247 = load i32, i32* %15, align 4
  store i32 %247, i32* %4, align 4
  br label %248

248:                                              ; preds = %246, %228
  %249 = load i32, i32* %4, align 4
  ret i32 %249
}

declare dso_local %struct.TYPE_15__* @xfs_perag_get(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @xfs_perag_put(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_15__* @kmem_zalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_RADIX_TREE(i32*, i32) #1

declare dso_local i64 @radix_tree_preload(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @radix_tree_insert(i32*, i64, %struct.TYPE_15__*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @radix_tree_preload_end(...) #1

declare dso_local i32 @XFS_OFFBNO_TO_AGINO(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i64 @XFS_AGINO_TO_INO(%struct.TYPE_16__*, i64, i32) #1

declare dso_local i32 @do_div(i64, i32) #1

declare dso_local i32 @kmem_free(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_15__* @radix_tree_delete(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
