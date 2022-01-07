; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_dtree.c_dtDelete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_dtree.c_dtDelete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.component_name = type { i32 }
%struct.metapage = type { i32 }
%struct.TYPE_9__ = type { i32*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i64, i64 }
%struct.btstack = type { i32 }
%struct.dt_lock = type { i64, i64, %struct.lv* }
%struct.lv = type { i32, i64 }
%struct.tlock = type { i32 }
%struct.ldtentry = type { i32 }

@BT_ROOT = common dso_local global i32 0, align 4
@PSIZE = common dso_local global i32 0, align 4
@tlckDTREE = common dso_local global i32 0, align 4
@tlckENTRY = common dso_local global i32 0, align 4
@L2DTSLOTSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtDelete(i32 %0, %struct.inode* %1, %struct.component_name* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.component_name*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.metapage*, align 8
  %15 = alloca %struct.metapage*, align 8
  %16 = alloca %struct.TYPE_9__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.btstack, align 4
  %19 = alloca %struct.dt_lock*, align 8
  %20 = alloca %struct.tlock*, align 8
  %21 = alloca %struct.lv*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.ldtentry*, align 8
  %24 = alloca i64*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.metapage*, align 8
  %28 = alloca %struct.TYPE_9__*, align 8
  %29 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.inode* %1, %struct.inode** %8, align 8
  store %struct.component_name* %2, %struct.component_name** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %30 = load %struct.inode*, %struct.inode** %8, align 8
  %31 = load %struct.component_name*, %struct.component_name** %9, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @dtSearch(%struct.inode* %30, %struct.component_name* %31, i32* %32, %struct.btstack* %18, i32 %33)
  store i32 %34, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %5
  %37 = load i32, i32* %12, align 4
  store i32 %37, i32* %6, align 4
  br label %313

38:                                               ; preds = %5
  %39 = load %struct.inode*, %struct.inode** %8, align 8
  %40 = getelementptr inbounds %struct.btstack, %struct.btstack* %18, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %13, align 4
  %43 = load %struct.metapage*, %struct.metapage** %14, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %45 = load i32, i32* %17, align 4
  %46 = call i32 @DT_GETSEARCH(%struct.inode* %39, i32 %41, i32 %42, %struct.metapage* %43, %struct.TYPE_9__* %44, i32 %45)
  %47 = load %struct.inode*, %struct.inode** %8, align 8
  %48 = call i64 @DO_INDEX(%struct.inode* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %145

50:                                               ; preds = %38
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %52 = call i64* @DT_GETSTBL(%struct.TYPE_9__* %51)
  store i64* %52, i64** %24, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i64*, i64** %24, align 8
  %57 = load i32, i32* %17, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds i32, i32* %55, i64 %60
  %62 = bitcast i32* %61 to %struct.ldtentry*
  store %struct.ldtentry* %62, %struct.ldtentry** %23, align 8
  %63 = load %struct.ldtentry*, %struct.ldtentry** %23, align 8
  %64 = getelementptr inbounds %struct.ldtentry, %struct.ldtentry* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @le32_to_cpu(i32 %65)
  store i32 %66, i32* %25, align 4
  %67 = load i32, i32* %17, align 4
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sub nsw i32 %71, 1
  %73 = icmp eq i32 %67, %72
  br i1 %73, label %74, label %123

74:                                               ; preds = %50
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @BT_ROOT, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %74
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %82, %74
  store i32 -1, i32* %26, align 4
  br label %122

89:                                               ; preds = %82
  %90 = load %struct.inode*, %struct.inode** %8, align 8
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @le64_to_cpu(i64 %94)
  %96 = load %struct.metapage*, %struct.metapage** %27, align 8
  %97 = load i32, i32* @PSIZE, align 4
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %99 = load i32, i32* %12, align 4
  %100 = call i32 @DT_GETPAGE(%struct.inode* %90, i32 %95, %struct.metapage* %96, i32 %97, %struct.TYPE_9__* %98, i32 %99)
  %101 = load i32, i32* %12, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %89
  store i32 -1, i32* %26, align 4
  br label %121

104:                                              ; preds = %89
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %106 = call i64* @DT_GETSTBL(%struct.TYPE_9__* %105)
  store i64* %106, i64** %24, align 8
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = load i64*, i64** %24, align 8
  %111 = getelementptr inbounds i64, i64* %110, i64 0
  %112 = load i64, i64* %111, align 8
  %113 = getelementptr inbounds i32, i32* %109, i64 %112
  %114 = bitcast i32* %113 to %struct.ldtentry*
  store %struct.ldtentry* %114, %struct.ldtentry** %23, align 8
  %115 = load %struct.ldtentry*, %struct.ldtentry** %23, align 8
  %116 = getelementptr inbounds %struct.ldtentry, %struct.ldtentry* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @le32_to_cpu(i32 %117)
  store i32 %118, i32* %26, align 4
  %119 = load %struct.metapage*, %struct.metapage** %27, align 8
  %120 = call i32 @DT_PUTPAGE(%struct.metapage* %119)
  br label %121

121:                                              ; preds = %104, %103
  br label %122

122:                                              ; preds = %121, %88
  br label %139

123:                                              ; preds = %50
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = load i64*, i64** %24, align 8
  %128 = load i32, i32* %17, align 4
  %129 = add nsw i32 %128, 1
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i64, i64* %127, i64 %130
  %132 = load i64, i64* %131, align 8
  %133 = getelementptr inbounds i32, i32* %126, i64 %132
  %134 = bitcast i32* %133 to %struct.ldtentry*
  store %struct.ldtentry* %134, %struct.ldtentry** %23, align 8
  %135 = load %struct.ldtentry*, %struct.ldtentry** %23, align 8
  %136 = getelementptr inbounds %struct.ldtentry, %struct.ldtentry* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @le32_to_cpu(i32 %137)
  store i32 %138, i32* %26, align 4
  br label %139

139:                                              ; preds = %123, %122
  %140 = load i32, i32* %7, align 4
  %141 = load %struct.inode*, %struct.inode** %8, align 8
  %142 = load i32, i32* %25, align 4
  %143 = load i32, i32* %26, align 4
  %144 = call i32 @free_index(i32 %140, %struct.inode* %141, i32 %142, i32 %143)
  br label %145

145:                                              ; preds = %139, %38
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = icmp eq i32 %149, 1
  br i1 %150, label %151, label %157

151:                                              ; preds = %145
  %152 = load i32, i32* %7, align 4
  %153 = load %struct.inode*, %struct.inode** %8, align 8
  %154 = load %struct.metapage*, %struct.metapage** %14, align 8
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %156 = call i32 @dtDeleteUp(i32 %152, %struct.inode* %153, %struct.metapage* %154, %struct.TYPE_9__* %155, %struct.btstack* %18)
  store i32 %156, i32* %12, align 4
  br label %311

157:                                              ; preds = %145
  %158 = load %struct.metapage*, %struct.metapage** %14, align 8
  %159 = load %struct.inode*, %struct.inode** %8, align 8
  %160 = call i32 @BT_MARK_DIRTY(%struct.metapage* %158, %struct.inode* %159)
  %161 = load i32, i32* %7, align 4
  %162 = load %struct.inode*, %struct.inode** %8, align 8
  %163 = load %struct.metapage*, %struct.metapage** %14, align 8
  %164 = load i32, i32* @tlckDTREE, align 4
  %165 = load i32, i32* @tlckENTRY, align 4
  %166 = or i32 %164, %165
  %167 = call %struct.tlock* @txLock(i32 %161, %struct.inode* %162, %struct.metapage* %163, i32 %166)
  store %struct.tlock* %167, %struct.tlock** %20, align 8
  %168 = load %struct.tlock*, %struct.tlock** %20, align 8
  %169 = getelementptr inbounds %struct.tlock, %struct.tlock* %168, i32 0, i32 0
  %170 = bitcast i32* %169 to %struct.dt_lock*
  store %struct.dt_lock* %170, %struct.dt_lock** %19, align 8
  %171 = load %struct.dt_lock*, %struct.dt_lock** %19, align 8
  %172 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.dt_lock*, %struct.dt_lock** %19, align 8
  %175 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = icmp uge i64 %173, %176
  br i1 %177, label %178, label %182

178:                                              ; preds = %157
  %179 = load %struct.dt_lock*, %struct.dt_lock** %19, align 8
  %180 = call i64 @txLinelock(%struct.dt_lock* %179)
  %181 = inttoptr i64 %180 to %struct.dt_lock*
  store %struct.dt_lock* %181, %struct.dt_lock** %19, align 8
  br label %182

182:                                              ; preds = %178, %157
  %183 = load %struct.dt_lock*, %struct.dt_lock** %19, align 8
  %184 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %183, i32 0, i32 2
  %185 = load %struct.lv*, %struct.lv** %184, align 8
  %186 = load %struct.dt_lock*, %struct.dt_lock** %19, align 8
  %187 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = getelementptr inbounds %struct.lv, %struct.lv* %185, i64 %188
  store %struct.lv* %189, %struct.lv** %21, align 8
  %190 = load %struct.lv*, %struct.lv** %21, align 8
  %191 = getelementptr inbounds %struct.lv, %struct.lv* %190, i32 0, i32 1
  store i64 0, i64* %191, align 8
  %192 = load %struct.lv*, %struct.lv** %21, align 8
  %193 = getelementptr inbounds %struct.lv, %struct.lv* %192, i32 0, i32 0
  store i32 1, i32* %193, align 8
  %194 = load %struct.dt_lock*, %struct.dt_lock** %19, align 8
  %195 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = add i64 %196, 1
  store i64 %197, i64* %195, align 8
  %198 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* @BT_ROOT, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %253, label %205

205:                                              ; preds = %182
  %206 = load %struct.dt_lock*, %struct.dt_lock** %19, align 8
  %207 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load %struct.dt_lock*, %struct.dt_lock** %19, align 8
  %210 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %209, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = icmp uge i64 %208, %211
  br i1 %212, label %213, label %217

213:                                              ; preds = %205
  %214 = load %struct.dt_lock*, %struct.dt_lock** %19, align 8
  %215 = call i64 @txLinelock(%struct.dt_lock* %214)
  %216 = inttoptr i64 %215 to %struct.dt_lock*
  store %struct.dt_lock* %216, %struct.dt_lock** %19, align 8
  br label %217

217:                                              ; preds = %213, %205
  %218 = load %struct.dt_lock*, %struct.dt_lock** %19, align 8
  %219 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %218, i32 0, i32 2
  %220 = load %struct.lv*, %struct.lv** %219, align 8
  %221 = load %struct.dt_lock*, %struct.dt_lock** %19, align 8
  %222 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = getelementptr inbounds %struct.lv, %struct.lv* %220, i64 %223
  store %struct.lv* %224, %struct.lv** %21, align 8
  %225 = load i32, i32* %17, align 4
  %226 = load i32, i32* @L2DTSLOTSIZE, align 4
  %227 = ashr i32 %225, %226
  store i32 %227, i32* %22, align 4
  %228 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %229 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %229, i32 0, i32 3
  %231 = load i64, i64* %230, align 8
  %232 = load i32, i32* %22, align 4
  %233 = sext i32 %232 to i64
  %234 = add nsw i64 %231, %233
  %235 = load %struct.lv*, %struct.lv** %21, align 8
  %236 = getelementptr inbounds %struct.lv, %struct.lv* %235, i32 0, i32 1
  store i64 %234, i64* %236, align 8
  %237 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %238 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = sub nsw i32 %240, 1
  %242 = load i32, i32* @L2DTSLOTSIZE, align 4
  %243 = ashr i32 %241, %242
  %244 = load i32, i32* %22, align 4
  %245 = sub nsw i32 %243, %244
  %246 = add nsw i32 %245, 1
  %247 = load %struct.lv*, %struct.lv** %21, align 8
  %248 = getelementptr inbounds %struct.lv, %struct.lv* %247, i32 0, i32 0
  store i32 %246, i32* %248, align 8
  %249 = load %struct.dt_lock*, %struct.dt_lock** %19, align 8
  %250 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = add i64 %251, 1
  store i64 %252, i64* %250, align 8
  br label %253

253:                                              ; preds = %217, %182
  %254 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %255 = load i32, i32* %17, align 4
  %256 = call i32 @dtDeleteEntry(%struct.TYPE_9__* %254, i32 %255, %struct.dt_lock** %19)
  %257 = load %struct.inode*, %struct.inode** %8, align 8
  %258 = call i64 @DO_INDEX(%struct.inode* %257)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %308

260:                                              ; preds = %253
  %261 = load i32, i32* %17, align 4
  %262 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %263 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %262, i32 0, i32 1
  %264 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = icmp slt i32 %261, %265
  br i1 %266, label %267, label %308

267:                                              ; preds = %260
  store %struct.metapage* null, %struct.metapage** %15, align 8
  %268 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %269 = call i64* @DT_GETSTBL(%struct.TYPE_9__* %268)
  store i64* %269, i64** %24, align 8
  %270 = load i32, i32* %17, align 4
  store i32 %270, i32* %22, align 4
  br label %271

271:                                              ; preds = %298, %267
  %272 = load i32, i32* %22, align 4
  %273 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %274 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %273, i32 0, i32 1
  %275 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = icmp slt i32 %272, %276
  br i1 %277, label %278, label %301

278:                                              ; preds = %271
  %279 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %280 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %279, i32 0, i32 0
  %281 = load i32*, i32** %280, align 8
  %282 = load i64*, i64** %24, align 8
  %283 = load i32, i32* %22, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i64, i64* %282, i64 %284
  %286 = load i64, i64* %285, align 8
  %287 = getelementptr inbounds i32, i32* %281, i64 %286
  %288 = bitcast i32* %287 to %struct.ldtentry*
  store %struct.ldtentry* %288, %struct.ldtentry** %23, align 8
  %289 = load i32, i32* %7, align 4
  %290 = load %struct.inode*, %struct.inode** %8, align 8
  %291 = load %struct.ldtentry*, %struct.ldtentry** %23, align 8
  %292 = getelementptr inbounds %struct.ldtentry, %struct.ldtentry* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 4
  %294 = call i32 @le32_to_cpu(i32 %293)
  %295 = load i32, i32* %13, align 4
  %296 = load i32, i32* %22, align 4
  %297 = call i32 @modify_index(i32 %289, %struct.inode* %290, i32 %294, i32 %295, i32 %296, %struct.metapage** %15, i32* %29)
  br label %298

298:                                              ; preds = %278
  %299 = load i32, i32* %22, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %22, align 4
  br label %271

301:                                              ; preds = %271
  %302 = load %struct.metapage*, %struct.metapage** %15, align 8
  %303 = icmp ne %struct.metapage* %302, null
  br i1 %303, label %304, label %307

304:                                              ; preds = %301
  %305 = load %struct.metapage*, %struct.metapage** %15, align 8
  %306 = call i32 @release_metapage(%struct.metapage* %305)
  br label %307

307:                                              ; preds = %304, %301
  br label %308

308:                                              ; preds = %307, %260, %253
  %309 = load %struct.metapage*, %struct.metapage** %14, align 8
  %310 = call i32 @DT_PUTPAGE(%struct.metapage* %309)
  br label %311

311:                                              ; preds = %308, %151
  %312 = load i32, i32* %12, align 4
  store i32 %312, i32* %6, align 4
  br label %313

313:                                              ; preds = %311, %36
  %314 = load i32, i32* %6, align 4
  ret i32 %314
}

declare dso_local i32 @dtSearch(%struct.inode*, %struct.component_name*, i32*, %struct.btstack*, i32) #1

declare dso_local i32 @DT_GETSEARCH(%struct.inode*, i32, i32, %struct.metapage*, %struct.TYPE_9__*, i32) #1

declare dso_local i64 @DO_INDEX(%struct.inode*) #1

declare dso_local i64* @DT_GETSTBL(%struct.TYPE_9__*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @DT_GETPAGE(%struct.inode*, i32, %struct.metapage*, i32, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @le64_to_cpu(i64) #1

declare dso_local i32 @DT_PUTPAGE(%struct.metapage*) #1

declare dso_local i32 @free_index(i32, %struct.inode*, i32, i32) #1

declare dso_local i32 @dtDeleteUp(i32, %struct.inode*, %struct.metapage*, %struct.TYPE_9__*, %struct.btstack*) #1

declare dso_local i32 @BT_MARK_DIRTY(%struct.metapage*, %struct.inode*) #1

declare dso_local %struct.tlock* @txLock(i32, %struct.inode*, %struct.metapage*, i32) #1

declare dso_local i64 @txLinelock(%struct.dt_lock*) #1

declare dso_local i32 @dtDeleteEntry(%struct.TYPE_9__*, i32, %struct.dt_lock**) #1

declare dso_local i32 @modify_index(i32, %struct.inode*, i32, i32, i32, %struct.metapage**, i32*) #1

declare dso_local i32 @release_metapage(%struct.metapage*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
