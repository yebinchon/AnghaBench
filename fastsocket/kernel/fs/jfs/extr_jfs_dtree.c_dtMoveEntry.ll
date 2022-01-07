; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_dtree.c_dtMoveEntry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_dtree.c_dtMoveEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.dtslot* }
%struct.TYPE_5__ = type { i64, i32, i32, i32, i32 }
%struct.dtslot = type { i32, i32, i32 }
%struct.dt_lock = type { i64, i64, %struct.lv* }
%struct.lv = type { i32, i32 }
%struct.ldtentry = type { i32, i32, i32 }
%struct.idtentry = type { i32, i32, i32 }

@BT_LEAF = common dso_local global i32 0, align 4
@DTLHDRDATALEN = common dso_local global i32 0, align 4
@DTLHDRDATALEN_LEGACY = common dso_local global i32 0, align 4
@DTIHDRDATALEN = common dso_local global i32 0, align 4
@DTSLOTDATALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32, %struct.TYPE_6__*, %struct.dt_lock**, %struct.dt_lock**, i32)* @dtMoveEntry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dtMoveEntry(%struct.TYPE_6__* %0, i32 %1, %struct.TYPE_6__* %2, %struct.dt_lock** %3, %struct.dt_lock** %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca %struct.dt_lock**, align 8
  %11 = alloca %struct.dt_lock**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.ldtentry*, align 8
  %22 = alloca %struct.ldtentry*, align 8
  %23 = alloca %struct.idtentry*, align 8
  %24 = alloca %struct.idtentry*, align 8
  %25 = alloca %struct.dtslot*, align 8
  %26 = alloca %struct.dtslot*, align 8
  %27 = alloca %struct.dtslot*, align 8
  %28 = alloca %struct.dt_lock*, align 8
  %29 = alloca %struct.dt_lock*, align 8
  %30 = alloca %struct.lv*, align 8
  %31 = alloca %struct.lv*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %9, align 8
  store %struct.dt_lock** %3, %struct.dt_lock*** %10, align 8
  store %struct.dt_lock** %4, %struct.dt_lock*** %11, align 8
  store i32 %5, i32* %12, align 4
  store %struct.ldtentry* null, %struct.ldtentry** %22, align 8
  store %struct.idtentry* null, %struct.idtentry** %24, align 8
  %36 = load %struct.dt_lock**, %struct.dt_lock*** %10, align 8
  %37 = load %struct.dt_lock*, %struct.dt_lock** %36, align 8
  store %struct.dt_lock* %37, %struct.dt_lock** %28, align 8
  %38 = load %struct.dt_lock**, %struct.dt_lock*** %11, align 8
  %39 = load %struct.dt_lock*, %struct.dt_lock** %38, align 8
  store %struct.dt_lock* %39, %struct.dt_lock** %29, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load %struct.dtslot*, %struct.dtslot** %41, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.dtslot, %struct.dtslot* %42, i64 %46
  %48 = bitcast %struct.dtslot* %47 to i32*
  store i32* %48, i32** %17, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load %struct.dtslot*, %struct.dtslot** %50, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.dtslot, %struct.dtslot* %51, i64 %55
  %57 = bitcast %struct.dtslot* %56 to i32*
  store i32* %57, i32** %18, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %16, align 4
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %35, align 4
  %66 = load %struct.dt_lock*, %struct.dt_lock** %29, align 8
  %67 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %66, i32 0, i32 2
  %68 = load %struct.lv*, %struct.lv** %67, align 8
  %69 = load %struct.dt_lock*, %struct.dt_lock** %29, align 8
  %70 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds %struct.lv, %struct.lv* %68, i64 %71
  store %struct.lv* %72, %struct.lv** %31, align 8
  %73 = load i32, i32* %16, align 4
  %74 = load %struct.lv*, %struct.lv** %31, align 8
  %75 = getelementptr inbounds %struct.lv, %struct.lv* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  %76 = load %struct.dt_lock*, %struct.dt_lock** %28, align 8
  %77 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %76, i32 0, i32 2
  %78 = load %struct.lv*, %struct.lv** %77, align 8
  %79 = load %struct.dt_lock*, %struct.dt_lock** %28, align 8
  %80 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds %struct.lv, %struct.lv* %78, i64 %81
  store %struct.lv* %82, %struct.lv** %30, align 8
  %83 = load i32*, i32** %17, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.lv*, %struct.lv** %30, align 8
  %89 = getelementptr inbounds %struct.lv, %struct.lv* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  %90 = load %struct.lv*, %struct.lv** %30, align 8
  %91 = getelementptr inbounds %struct.lv, %struct.lv* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = sub nsw i32 %92, 1
  store i32 %93, i32* %32, align 4
  store i32 0, i32* %34, align 4
  store i32 0, i32* %33, align 4
  store i32 0, i32* %15, align 4
  br label %94

94:                                               ; preds = %349, %6
  %95 = load i32, i32* %8, align 4
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = icmp slt i32 %95, %99
  br i1 %100, label %101, label %354

101:                                              ; preds = %94
  %102 = load i32*, i32** %17, align 8
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %13, align 4
  %107 = load i32, i32* %16, align 4
  %108 = load i32*, i32** %18, align 8
  %109 = load i32, i32* %15, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  store i32 %107, i32* %111, align 4
  %112 = load i32, i32* %13, align 4
  %113 = load i32, i32* %32, align 4
  %114 = add nsw i32 %113, 1
  %115 = icmp ne i32 %112, %114
  br i1 %115, label %116, label %146

116:                                              ; preds = %101
  %117 = load i32, i32* %33, align 4
  %118 = load %struct.lv*, %struct.lv** %30, align 8
  %119 = getelementptr inbounds %struct.lv, %struct.lv* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 4
  %120 = load %struct.dt_lock*, %struct.dt_lock** %28, align 8
  %121 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %121, align 8
  %124 = load %struct.dt_lock*, %struct.dt_lock** %28, align 8
  %125 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.dt_lock*, %struct.dt_lock** %28, align 8
  %128 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = icmp ult i64 %126, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %116
  %132 = load %struct.lv*, %struct.lv** %30, align 8
  %133 = getelementptr inbounds %struct.lv, %struct.lv* %132, i32 1
  store %struct.lv* %133, %struct.lv** %30, align 8
  br label %142

134:                                              ; preds = %116
  %135 = load %struct.dt_lock*, %struct.dt_lock** %28, align 8
  %136 = call i64 @txLinelock(%struct.dt_lock* %135)
  %137 = inttoptr i64 %136 to %struct.dt_lock*
  store %struct.dt_lock* %137, %struct.dt_lock** %28, align 8
  %138 = load %struct.dt_lock*, %struct.dt_lock** %28, align 8
  %139 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %138, i32 0, i32 2
  %140 = load %struct.lv*, %struct.lv** %139, align 8
  %141 = getelementptr inbounds %struct.lv, %struct.lv* %140, i64 0
  store %struct.lv* %141, %struct.lv** %30, align 8
  br label %142

142:                                              ; preds = %134, %131
  %143 = load i32, i32* %13, align 4
  %144 = load %struct.lv*, %struct.lv** %30, align 8
  %145 = getelementptr inbounds %struct.lv, %struct.lv* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 4
  store i32 0, i32* %33, align 4
  br label %146

146:                                              ; preds = %142, %101
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 1
  %149 = load %struct.dtslot*, %struct.dtslot** %148, align 8
  %150 = load i32, i32* %16, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.dtslot, %struct.dtslot* %149, i64 %151
  store %struct.dtslot* %152, %struct.dtslot** %27, align 8
  store %struct.dtslot* %152, %struct.dtslot** %25, align 8
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 1
  %155 = load %struct.dtslot*, %struct.dtslot** %154, align 8
  %156 = load i32, i32* %13, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.dtslot, %struct.dtslot* %155, i64 %157
  store %struct.dtslot* %158, %struct.dtslot** %26, align 8
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @BT_LEAF, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %204

166:                                              ; preds = %146
  %167 = load %struct.dtslot*, %struct.dtslot** %26, align 8
  %168 = bitcast %struct.dtslot* %167 to %struct.ldtentry*
  store %struct.ldtentry* %168, %struct.ldtentry** %21, align 8
  %169 = load %struct.dtslot*, %struct.dtslot** %25, align 8
  %170 = bitcast %struct.dtslot* %169 to %struct.ldtentry*
  store %struct.ldtentry* %170, %struct.ldtentry** %22, align 8
  %171 = load %struct.ldtentry*, %struct.ldtentry** %21, align 8
  %172 = getelementptr inbounds %struct.ldtentry, %struct.ldtentry* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  store i32 %173, i32* %19, align 4
  %174 = load i32, i32* %12, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %185

176:                                              ; preds = %166
  %177 = load i32, i32* %19, align 4
  %178 = load i32, i32* @DTLHDRDATALEN, align 4
  %179 = call i32 @min(i32 %177, i32 %178)
  store i32 %179, i32* %20, align 4
  %180 = load %struct.ldtentry*, %struct.ldtentry** %21, align 8
  %181 = getelementptr inbounds %struct.ldtentry, %struct.ldtentry* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.ldtentry*, %struct.ldtentry** %22, align 8
  %184 = getelementptr inbounds %struct.ldtentry, %struct.ldtentry* %183, i32 0, i32 2
  store i32 %182, i32* %184, align 4
  br label %189

185:                                              ; preds = %166
  %186 = load i32, i32* %19, align 4
  %187 = load i32, i32* @DTLHDRDATALEN_LEGACY, align 4
  %188 = call i32 @min(i32 %186, i32 %187)
  store i32 %188, i32* %20, align 4
  br label %189

189:                                              ; preds = %185, %176
  %190 = load %struct.ldtentry*, %struct.ldtentry** %22, align 8
  %191 = load %struct.ldtentry*, %struct.ldtentry** %21, align 8
  %192 = load i32, i32* %20, align 4
  %193 = mul nsw i32 %192, 2
  %194 = add nsw i32 6, %193
  %195 = call i32 @memcpy(%struct.ldtentry* %190, %struct.ldtentry* %191, i32 %194)
  %196 = load %struct.ldtentry*, %struct.ldtentry** %21, align 8
  %197 = getelementptr inbounds %struct.ldtentry, %struct.ldtentry* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  store i32 %198, i32* %14, align 4
  %199 = load i32, i32* %16, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %16, align 4
  %201 = load i32, i32* %16, align 4
  %202 = load %struct.ldtentry*, %struct.ldtentry** %22, align 8
  %203 = getelementptr inbounds %struct.ldtentry, %struct.ldtentry* %202, i32 0, i32 1
  store i32 %201, i32* %203, align 4
  br label %231

204:                                              ; preds = %146
  %205 = load %struct.dtslot*, %struct.dtslot** %26, align 8
  %206 = bitcast %struct.dtslot* %205 to %struct.idtentry*
  store %struct.idtentry* %206, %struct.idtentry** %23, align 8
  %207 = load %struct.idtentry*, %struct.idtentry** %23, align 8
  %208 = getelementptr inbounds %struct.idtentry, %struct.idtentry* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  store i32 %209, i32* %19, align 4
  %210 = load i32, i32* %19, align 4
  %211 = load i32, i32* @DTIHDRDATALEN, align 4
  %212 = call i32 @min(i32 %210, i32 %211)
  store i32 %212, i32* %20, align 4
  %213 = load %struct.dtslot*, %struct.dtslot** %25, align 8
  %214 = bitcast %struct.dtslot* %213 to %struct.idtentry*
  store %struct.idtentry* %214, %struct.idtentry** %24, align 8
  %215 = load %struct.idtentry*, %struct.idtentry** %24, align 8
  %216 = bitcast %struct.idtentry* %215 to %struct.ldtentry*
  %217 = load %struct.idtentry*, %struct.idtentry** %23, align 8
  %218 = bitcast %struct.idtentry* %217 to %struct.ldtentry*
  %219 = load i32, i32* %20, align 4
  %220 = mul nsw i32 %219, 2
  %221 = add nsw i32 10, %220
  %222 = call i32 @memcpy(%struct.ldtentry* %216, %struct.ldtentry* %218, i32 %221)
  %223 = load %struct.idtentry*, %struct.idtentry** %23, align 8
  %224 = getelementptr inbounds %struct.idtentry, %struct.idtentry* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  store i32 %225, i32* %14, align 4
  %226 = load i32, i32* %16, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %16, align 4
  %228 = load i32, i32* %16, align 4
  %229 = load %struct.idtentry*, %struct.idtentry** %24, align 8
  %230 = getelementptr inbounds %struct.idtentry, %struct.idtentry* %229, i32 0, i32 1
  store i32 %228, i32* %230, align 4
  br label %231

231:                                              ; preds = %204, %189
  %232 = load i32, i32* %35, align 4
  %233 = load %struct.dtslot*, %struct.dtslot** %26, align 8
  %234 = getelementptr inbounds %struct.dtslot, %struct.dtslot* %233, i32 0, i32 0
  store i32 %232, i32* %234, align 4
  %235 = load %struct.dtslot*, %struct.dtslot** %26, align 8
  %236 = getelementptr inbounds %struct.dtslot, %struct.dtslot* %235, i32 0, i32 1
  store i32 1, i32* %236, align 4
  %237 = load i32, i32* %13, align 4
  store i32 %237, i32* %35, align 4
  %238 = load i32, i32* %33, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %33, align 4
  %240 = load i32, i32* %34, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %34, align 4
  %242 = load i32, i32* %13, align 4
  store i32 %242, i32* %32, align 4
  %243 = load i32, i32* %20, align 4
  %244 = load i32, i32* %19, align 4
  %245 = sub nsw i32 %244, %243
  store i32 %245, i32* %19, align 4
  br label %246

246:                                              ; preds = %284, %231
  %247 = load i32, i32* %14, align 4
  store i32 %247, i32* %13, align 4
  %248 = icmp sge i32 %247, 0
  br i1 %248, label %249, label %326

249:                                              ; preds = %246
  %250 = load i32, i32* %13, align 4
  %251 = load i32, i32* %32, align 4
  %252 = add nsw i32 %251, 1
  %253 = icmp ne i32 %250, %252
  br i1 %253, label %254, label %284

254:                                              ; preds = %249
  %255 = load i32, i32* %33, align 4
  %256 = load %struct.lv*, %struct.lv** %30, align 8
  %257 = getelementptr inbounds %struct.lv, %struct.lv* %256, i32 0, i32 1
  store i32 %255, i32* %257, align 4
  %258 = load %struct.dt_lock*, %struct.dt_lock** %28, align 8
  %259 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = add i64 %260, 1
  store i64 %261, i64* %259, align 8
  %262 = load %struct.dt_lock*, %struct.dt_lock** %28, align 8
  %263 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %262, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = load %struct.dt_lock*, %struct.dt_lock** %28, align 8
  %266 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %265, i32 0, i32 1
  %267 = load i64, i64* %266, align 8
  %268 = icmp ult i64 %264, %267
  br i1 %268, label %269, label %272

269:                                              ; preds = %254
  %270 = load %struct.lv*, %struct.lv** %30, align 8
  %271 = getelementptr inbounds %struct.lv, %struct.lv* %270, i32 1
  store %struct.lv* %271, %struct.lv** %30, align 8
  br label %280

272:                                              ; preds = %254
  %273 = load %struct.dt_lock*, %struct.dt_lock** %28, align 8
  %274 = call i64 @txLinelock(%struct.dt_lock* %273)
  %275 = inttoptr i64 %274 to %struct.dt_lock*
  store %struct.dt_lock* %275, %struct.dt_lock** %28, align 8
  %276 = load %struct.dt_lock*, %struct.dt_lock** %28, align 8
  %277 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %276, i32 0, i32 2
  %278 = load %struct.lv*, %struct.lv** %277, align 8
  %279 = getelementptr inbounds %struct.lv, %struct.lv* %278, i64 0
  store %struct.lv* %279, %struct.lv** %30, align 8
  br label %280

280:                                              ; preds = %272, %269
  %281 = load i32, i32* %13, align 4
  %282 = load %struct.lv*, %struct.lv** %30, align 8
  %283 = getelementptr inbounds %struct.lv, %struct.lv* %282, i32 0, i32 0
  store i32 %281, i32* %283, align 4
  store i32 0, i32* %33, align 4
  br label %284

284:                                              ; preds = %280, %249
  %285 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %286 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %285, i32 0, i32 1
  %287 = load %struct.dtslot*, %struct.dtslot** %286, align 8
  %288 = load i32, i32* %13, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds %struct.dtslot, %struct.dtslot* %287, i64 %289
  store %struct.dtslot* %290, %struct.dtslot** %26, align 8
  %291 = load %struct.dtslot*, %struct.dtslot** %27, align 8
  %292 = getelementptr inbounds %struct.dtslot, %struct.dtslot* %291, i32 1
  store %struct.dtslot* %292, %struct.dtslot** %27, align 8
  %293 = load i32, i32* %19, align 4
  %294 = load i32, i32* @DTSLOTDATALEN, align 4
  %295 = call i32 @min(i32 %293, i32 %294)
  store i32 %295, i32* %20, align 4
  %296 = load %struct.dtslot*, %struct.dtslot** %27, align 8
  %297 = getelementptr inbounds %struct.dtslot, %struct.dtslot* %296, i32 0, i32 2
  %298 = load i32, i32* %297, align 4
  %299 = load %struct.dtslot*, %struct.dtslot** %26, align 8
  %300 = getelementptr inbounds %struct.dtslot, %struct.dtslot* %299, i32 0, i32 2
  %301 = load i32, i32* %300, align 4
  %302 = load i32, i32* %20, align 4
  %303 = call i32 @UniStrncpy_le(i32 %298, i32 %301, i32 %302)
  %304 = load i32, i32* %33, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %33, align 4
  %306 = load i32, i32* %34, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %34, align 4
  %308 = load i32, i32* %13, align 4
  store i32 %308, i32* %32, align 4
  %309 = load i32, i32* %16, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %16, align 4
  %311 = load i32, i32* %16, align 4
  %312 = load %struct.dtslot*, %struct.dtslot** %27, align 8
  %313 = getelementptr inbounds %struct.dtslot, %struct.dtslot* %312, i32 0, i32 0
  store i32 %311, i32* %313, align 4
  %314 = load %struct.dtslot*, %struct.dtslot** %26, align 8
  %315 = getelementptr inbounds %struct.dtslot, %struct.dtslot* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 4
  store i32 %316, i32* %14, align 4
  %317 = load i32, i32* %35, align 4
  %318 = load %struct.dtslot*, %struct.dtslot** %26, align 8
  %319 = getelementptr inbounds %struct.dtslot, %struct.dtslot* %318, i32 0, i32 0
  store i32 %317, i32* %319, align 4
  %320 = load %struct.dtslot*, %struct.dtslot** %26, align 8
  %321 = getelementptr inbounds %struct.dtslot, %struct.dtslot* %320, i32 0, i32 1
  store i32 1, i32* %321, align 4
  %322 = load i32, i32* %13, align 4
  store i32 %322, i32* %35, align 4
  %323 = load i32, i32* %20, align 4
  %324 = load i32, i32* %19, align 4
  %325 = sub nsw i32 %324, %323
  store i32 %325, i32* %19, align 4
  br label %246

326:                                              ; preds = %246
  %327 = load %struct.dtslot*, %struct.dtslot** %25, align 8
  %328 = load %struct.dtslot*, %struct.dtslot** %27, align 8
  %329 = icmp eq %struct.dtslot* %327, %328
  br i1 %329, label %330, label %345

330:                                              ; preds = %326
  %331 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %332 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %331, i32 0, i32 0
  %333 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %332, i32 0, i32 3
  %334 = load i32, i32* %333, align 8
  %335 = load i32, i32* @BT_LEAF, align 4
  %336 = and i32 %334, %335
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %341

338:                                              ; preds = %330
  %339 = load %struct.ldtentry*, %struct.ldtentry** %22, align 8
  %340 = getelementptr inbounds %struct.ldtentry, %struct.ldtentry* %339, i32 0, i32 1
  store i32 -1, i32* %340, align 4
  br label %344

341:                                              ; preds = %330
  %342 = load %struct.idtentry*, %struct.idtentry** %24, align 8
  %343 = getelementptr inbounds %struct.idtentry, %struct.idtentry* %342, i32 0, i32 1
  store i32 -1, i32* %343, align 4
  br label %344

344:                                              ; preds = %341, %338
  br label %348

345:                                              ; preds = %326
  %346 = load %struct.dtslot*, %struct.dtslot** %27, align 8
  %347 = getelementptr inbounds %struct.dtslot, %struct.dtslot* %346, i32 0, i32 0
  store i32 -1, i32* %347, align 4
  br label %348

348:                                              ; preds = %345, %344
  br label %349

349:                                              ; preds = %348
  %350 = load i32, i32* %8, align 4
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %8, align 4
  %352 = load i32, i32* %15, align 4
  %353 = add nsw i32 %352, 1
  store i32 %353, i32* %15, align 4
  br label %94

354:                                              ; preds = %94
  %355 = load i32, i32* %33, align 4
  %356 = load %struct.lv*, %struct.lv** %30, align 8
  %357 = getelementptr inbounds %struct.lv, %struct.lv* %356, i32 0, i32 1
  store i32 %355, i32* %357, align 4
  %358 = load %struct.dt_lock*, %struct.dt_lock** %28, align 8
  %359 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %358, i32 0, i32 0
  %360 = load i64, i64* %359, align 8
  %361 = add i64 %360, 1
  store i64 %361, i64* %359, align 8
  %362 = load %struct.dt_lock*, %struct.dt_lock** %28, align 8
  %363 = load %struct.dt_lock**, %struct.dt_lock*** %10, align 8
  store %struct.dt_lock* %362, %struct.dt_lock** %363, align 8
  %364 = load i32, i32* %34, align 4
  %365 = load %struct.lv*, %struct.lv** %31, align 8
  %366 = getelementptr inbounds %struct.lv, %struct.lv* %365, i32 0, i32 1
  store i32 %364, i32* %366, align 4
  %367 = load %struct.dt_lock*, %struct.dt_lock** %29, align 8
  %368 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %367, i32 0, i32 0
  %369 = load i64, i64* %368, align 8
  %370 = add i64 %369, 1
  store i64 %370, i64* %368, align 8
  %371 = load %struct.dt_lock*, %struct.dt_lock** %29, align 8
  %372 = load %struct.dt_lock**, %struct.dt_lock*** %11, align 8
  store %struct.dt_lock* %371, %struct.dt_lock** %372, align 8
  %373 = load i32, i32* %35, align 4
  %374 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %375 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %374, i32 0, i32 0
  %376 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %375, i32 0, i32 1
  store i32 %373, i32* %376, align 8
  %377 = load i32, i32* %34, align 4
  %378 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %379 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %378, i32 0, i32 0
  %380 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %379, i32 0, i32 4
  %381 = load i32, i32* %380, align 4
  %382 = add nsw i32 %381, %377
  store i32 %382, i32* %380, align 4
  %383 = load i32, i32* %15, align 4
  %384 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %385 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %384, i32 0, i32 0
  %386 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %385, i32 0, i32 2
  store i32 %383, i32* %386, align 4
  %387 = load i32, i32* %16, align 4
  %388 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %389 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %388, i32 0, i32 0
  %390 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %389, i32 0, i32 1
  store i32 %387, i32* %390, align 8
  %391 = load i32, i32* %34, align 4
  %392 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %393 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %392, i32 0, i32 0
  %394 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %393, i32 0, i32 4
  %395 = load i32, i32* %394, align 4
  %396 = sub nsw i32 %395, %391
  store i32 %396, i32* %394, align 4
  ret void
}

declare dso_local i64 @txLinelock(%struct.dt_lock*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memcpy(%struct.ldtentry*, %struct.ldtentry*, i32) #1

declare dso_local i32 @UniStrncpy_le(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
