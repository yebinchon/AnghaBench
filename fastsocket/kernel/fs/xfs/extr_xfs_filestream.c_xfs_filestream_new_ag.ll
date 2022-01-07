; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_filestream.c_xfs_filestream_new_ag.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_filestream.c_xfs_filestream_new_ag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i64, i64, i32, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { %struct.TYPE_24__, i32* }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_28__ = type { i32, %struct.TYPE_26__*, %struct.TYPE_26__* }

@NULLAGNUMBER = common dso_local global i32 0, align 4
@XFS_IOLOCK_EXCL = common dso_local global i32 0, align 4
@XFS_IOLOCK_PARENT = common dso_local global i32 0, align 4
@XFS_PICK_USERDATA = common dso_local global i32 0, align 4
@XFS_PICK_LOWSPACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_filestream_new_ag(%struct.TYPE_27__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_27__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca %struct.TYPE_26__*, align 8
  %10 = alloca %struct.TYPE_25__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_28__*, align 8
  %14 = alloca %struct.TYPE_28__*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %9, align 8
  %16 = load i32, i32* @NULLAGNUMBER, align 4
  store i32 %16, i32* %15, align 4
  %17 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %17, i32 0, i32 3
  %19 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  store %struct.TYPE_26__* %19, %struct.TYPE_26__** %8, align 8
  %20 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  store %struct.TYPE_25__* %22, %struct.TYPE_25__** %10, align 8
  %23 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %11, align 8
  %26 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* @NULLAGNUMBER, align 4
  %30 = load i32*, i32** %5, align 8
  store i32 %29, i32* %30, align 4
  %31 = load i32*, i32** %11, align 8
  %32 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call %struct.TYPE_28__* @xfs_mru_cache_remove(i32* %31, i32 %34)
  store %struct.TYPE_28__* %35, %struct.TYPE_28__** %14, align 8
  %36 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %37 = icmp ne %struct.TYPE_28__* %36, null
  br i1 %37, label %38, label %131

38:                                               ; preds = %2
  %39 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %40 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %41 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_26__*, %struct.TYPE_26__** %41, align 8
  %43 = icmp eq %struct.TYPE_26__* %39, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @ASSERT(i32 %44)
  %46 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %47 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_26__*, %struct.TYPE_26__** %47, align 8
  store %struct.TYPE_26__* %48, %struct.TYPE_26__** %9, align 8
  %49 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %50 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %15, align 4
  %52 = load i32*, i32** %11, align 8
  %53 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call %struct.TYPE_28__* @xfs_mru_cache_lookup(i32* %52, i32 %55)
  store %struct.TYPE_28__* %56, %struct.TYPE_28__** %13, align 8
  %57 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %58 = icmp ne %struct.TYPE_28__* %57, null
  br i1 %58, label %59, label %94

59:                                               ; preds = %38
  %60 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %61 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_26__*, %struct.TYPE_26__** %62, align 8
  %64 = icmp eq %struct.TYPE_26__* %60, %63
  %65 = zext i1 %64 to i32
  %66 = call i32 @ASSERT(i32 %65)
  %67 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %71 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %69, %72
  br i1 %73, label %74, label %91

74:                                               ; preds = %59
  %75 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %76 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %77 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @xfs_filestream_put_ag(%struct.TYPE_25__* %75, i32 %78)
  %80 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %81 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %82 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @xfs_filestream_get_ag(%struct.TYPE_25__* %80, i32 %83)
  %85 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %86 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %89 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load i32*, i32** %5, align 8
  store i32 %87, i32* %90, align 4
  br label %91

91:                                               ; preds = %74, %59
  %92 = load i32*, i32** %11, align 8
  %93 = call i32 @xfs_mru_cache_done(i32* %92)
  br label %94

94:                                               ; preds = %91, %38
  %95 = load i32*, i32** %11, align 8
  %96 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %100 = call i32 @xfs_mru_cache_insert(i32* %95, i32 %98, %struct.TYPE_28__* %99)
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* %7, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %94
  %104 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %108 = call i32 @xfs_fstrm_free_func(i32 %106, %struct.TYPE_28__* %107)
  %109 = load i32, i32* %7, align 4
  store i32 %109, i32* %3, align 4
  br label %247

110:                                              ; preds = %94
  %111 = load i32*, i32** %5, align 8
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @NULLAGNUMBER, align 4
  %114 = icmp ne i32 %112, %113
  br i1 %114, label %115, label %130

115:                                              ; preds = %110
  %116 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %117 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %118 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %119 = load i32, i32* %15, align 4
  %120 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %121 = load i32, i32* %15, align 4
  %122 = call i32 @xfs_filestream_peek_ag(%struct.TYPE_25__* %120, i32 %121)
  %123 = load i32*, i32** %5, align 8
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %126 = load i32*, i32** %5, align 8
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @xfs_filestream_peek_ag(%struct.TYPE_25__* %125, i32 %127)
  %129 = call i32 @TRACE_MOVEAG(%struct.TYPE_25__* %116, %struct.TYPE_26__* %117, %struct.TYPE_26__* %118, i32 %119, i32 %122, i32 %124, i32 %128)
  store i32 0, i32* %3, align 4
  br label %247

130:                                              ; preds = %110
  br label %131

131:                                              ; preds = %130, %2
  %132 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %133 = icmp ne %struct.TYPE_26__* %132, null
  br i1 %133, label %134, label %140

134:                                              ; preds = %131
  %135 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %136 = load i32, i32* @XFS_IOLOCK_EXCL, align 4
  %137 = load i32, i32* @XFS_IOLOCK_PARENT, align 4
  %138 = or i32 %136, %137
  %139 = call i32 @xfs_ilock(%struct.TYPE_26__* %135, i32 %138)
  br label %140

140:                                              ; preds = %134, %131
  %141 = load i32, i32* %15, align 4
  %142 = load i32, i32* @NULLAGNUMBER, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %140
  br label %153

145:                                              ; preds = %140
  %146 = load i32, i32* %15, align 4
  %147 = add nsw i32 %146, 1
  %148 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %149 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = srem i32 %147, %151
  br label %153

153:                                              ; preds = %145, %144
  %154 = phi i32 [ 0, %144 ], [ %152, %145 ]
  store i32 %154, i32* %15, align 4
  %155 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %153
  %160 = load i32, i32* @XFS_PICK_USERDATA, align 4
  br label %162

161:                                              ; preds = %153
  br label %162

162:                                              ; preds = %161, %159
  %163 = phi i32 [ %160, %159 ], [ 0, %161 ]
  %164 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %162
  %169 = load i32, i32* @XFS_PICK_LOWSPACE, align 4
  br label %171

170:                                              ; preds = %162
  br label %171

171:                                              ; preds = %170, %168
  %172 = phi i32 [ %169, %168 ], [ 0, %170 ]
  %173 = or i32 %163, %172
  store i32 %173, i32* %6, align 4
  %174 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %175 = load i32, i32* %15, align 4
  %176 = load i32*, i32** %5, align 8
  %177 = load i32, i32* %6, align 4
  %178 = load i32, i32* %12, align 4
  %179 = call i32 @_xfs_filestream_pick_ag(%struct.TYPE_25__* %174, i32 %175, i32* %176, i32 %177, i32 %178)
  store i32 %179, i32* %7, align 4
  %180 = load i32, i32* %7, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %187, label %182

182:                                              ; preds = %171
  %183 = load i32*, i32** %5, align 8
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @NULLAGNUMBER, align 4
  %186 = icmp eq i32 %184, %185
  br i1 %186, label %187, label %188

187:                                              ; preds = %182, %171
  br label %226

188:                                              ; preds = %182
  %189 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %190 = icmp ne %struct.TYPE_26__* %189, null
  br i1 %190, label %197, label %191

191:                                              ; preds = %188
  %192 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %193 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %194 = load i32*, i32** %5, align 8
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @TRACE_ORPHAN(%struct.TYPE_25__* %192, %struct.TYPE_26__* %193, i32 %195)
  br label %226

197:                                              ; preds = %188
  %198 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %199 = load i32*, i32** %5, align 8
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @_xfs_filestream_update_ag(%struct.TYPE_26__* %198, %struct.TYPE_26__* null, i32 %200)
  store i32 %201, i32* %7, align 4
  %202 = load i32, i32* %7, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %197
  br label %226

205:                                              ; preds = %197
  %206 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %207 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %208 = load i32*, i32** %5, align 8
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @_xfs_filestream_update_ag(%struct.TYPE_26__* %206, %struct.TYPE_26__* %207, i32 %209)
  store i32 %210, i32* %7, align 4
  %211 = load i32, i32* %7, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %205
  br label %226

214:                                              ; preds = %205
  %215 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %216 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %217 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %218 = load i32, i32* @NULLAGNUMBER, align 4
  %219 = load i32*, i32** %5, align 8
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %222 = load i32*, i32** %5, align 8
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @xfs_filestream_peek_ag(%struct.TYPE_25__* %221, i32 %223)
  %225 = call i32 @TRACE_MOVEAG(%struct.TYPE_25__* %215, %struct.TYPE_26__* %216, %struct.TYPE_26__* %217, i32 %218, i32 0, i32 %220, i32 %224)
  br label %226

226:                                              ; preds = %214, %213, %204, %191, %187
  %227 = load i32*, i32** %5, align 8
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* @NULLAGNUMBER, align 4
  %230 = icmp ne i32 %228, %229
  br i1 %230, label %231, label %236

231:                                              ; preds = %226
  %232 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %233 = load i32*, i32** %5, align 8
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @xfs_filestream_put_ag(%struct.TYPE_25__* %232, i32 %234)
  br label %238

236:                                              ; preds = %226
  %237 = load i32*, i32** %5, align 8
  store i32 0, i32* %237, align 4
  br label %238

238:                                              ; preds = %236, %231
  %239 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %240 = icmp ne %struct.TYPE_26__* %239, null
  br i1 %240, label %241, label %245

241:                                              ; preds = %238
  %242 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %243 = load i32, i32* @XFS_IOLOCK_EXCL, align 4
  %244 = call i32 @xfs_iunlock(%struct.TYPE_26__* %242, i32 %243)
  br label %245

245:                                              ; preds = %241, %238
  %246 = load i32, i32* %7, align 4
  store i32 %246, i32* %3, align 4
  br label %247

247:                                              ; preds = %245, %115, %103
  %248 = load i32, i32* %3, align 4
  ret i32 %248
}

declare dso_local %struct.TYPE_28__* @xfs_mru_cache_remove(i32*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.TYPE_28__* @xfs_mru_cache_lookup(i32*, i32) #1

declare dso_local i32 @xfs_filestream_put_ag(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @xfs_filestream_get_ag(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @xfs_mru_cache_done(i32*) #1

declare dso_local i32 @xfs_mru_cache_insert(i32*, i32, %struct.TYPE_28__*) #1

declare dso_local i32 @xfs_fstrm_free_func(i32, %struct.TYPE_28__*) #1

declare dso_local i32 @TRACE_MOVEAG(%struct.TYPE_25__*, %struct.TYPE_26__*, %struct.TYPE_26__*, i32, i32, i32, i32) #1

declare dso_local i32 @xfs_filestream_peek_ag(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @xfs_ilock(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @_xfs_filestream_pick_ag(%struct.TYPE_25__*, i32, i32*, i32, i32) #1

declare dso_local i32 @TRACE_ORPHAN(%struct.TYPE_25__*, %struct.TYPE_26__*, i32) #1

declare dso_local i32 @_xfs_filestream_update_ag(%struct.TYPE_26__*, %struct.TYPE_26__*, i32) #1

declare dso_local i32 @xfs_iunlock(%struct.TYPE_26__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
