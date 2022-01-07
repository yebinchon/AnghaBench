; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_dtree.c_dtInsertEntry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_dtree.c_dtInsertEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.dtslot* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }
%struct.dtslot = type { i32, i32* }
%struct.component_name = type { i32, i32* }
%struct.TYPE_11__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i64, i32, i32 }
%struct.dt_lock = type { i64, i64, %struct.lv* }
%struct.lv = type { i32, i32 }
%struct.ldtentry = type { i32, i32, i8*, i32*, i8* }
%struct.idtentry = type { i32, i32, i32* }
%struct.metapage = type { i32 }

@BT_LEAF = common dso_local global i32 0, align 4
@DTLHDRDATALEN = common dso_local global i32 0, align 4
@BT_ROOT = common dso_local global i32 0, align 4
@DTLHDRDATALEN_LEGACY = common dso_local global i32 0, align 4
@DTIHDRDATALEN = common dso_local global i32 0, align 4
@DTSLOTDATALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i32, %struct.component_name*, %struct.TYPE_11__*, %struct.dt_lock**)* @dtInsertEntry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dtInsertEntry(%struct.TYPE_10__* %0, i32 %1, %struct.component_name* %2, %struct.TYPE_11__* %3, %struct.dt_lock** %4) #0 {
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.component_name*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.dt_lock**, align 8
  %11 = alloca %struct.dtslot*, align 8
  %12 = alloca %struct.dtslot*, align 8
  %13 = alloca %struct.ldtentry*, align 8
  %14 = alloca %struct.idtentry*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i64*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca %struct.dt_lock*, align 8
  %25 = alloca %struct.lv*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca %struct.metapage*, align 8
  %30 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.component_name* %2, %struct.component_name** %8, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %9, align 8
  store %struct.dt_lock** %4, %struct.dt_lock*** %10, align 8
  store %struct.ldtentry* null, %struct.ldtentry** %13, align 8
  store %struct.idtentry* null, %struct.idtentry** %14, align 8
  %31 = load %struct.dt_lock**, %struct.dt_lock*** %10, align 8
  %32 = load %struct.dt_lock*, %struct.dt_lock** %31, align 8
  store %struct.dt_lock* %32, %struct.dt_lock** %24, align 8
  store i32 0, i32* %28, align 4
  store %struct.metapage* null, %struct.metapage** %29, align 8
  %33 = load %struct.component_name*, %struct.component_name** %8, align 8
  %34 = getelementptr inbounds %struct.component_name, %struct.component_name* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %17, align 4
  %36 = load %struct.component_name*, %struct.component_name** %8, align 8
  %37 = getelementptr inbounds %struct.component_name, %struct.component_name* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %20, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %16, align 4
  store i32 %42, i32* %15, align 4
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = load %struct.dtslot*, %struct.dtslot** %44, align 8
  %46 = load i32, i32* %16, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.dtslot, %struct.dtslot* %45, i64 %47
  store %struct.dtslot* %48, %struct.dtslot** %11, align 8
  %49 = load %struct.dtslot*, %struct.dtslot** %11, align 8
  %50 = getelementptr inbounds %struct.dtslot, %struct.dtslot* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %57, align 4
  %60 = load %struct.dt_lock*, %struct.dt_lock** %24, align 8
  %61 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.dt_lock*, %struct.dt_lock** %24, align 8
  %64 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp uge i64 %62, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %5
  %68 = load %struct.dt_lock*, %struct.dt_lock** %24, align 8
  %69 = call i64 @txLinelock(%struct.dt_lock* %68)
  %70 = inttoptr i64 %69 to %struct.dt_lock*
  store %struct.dt_lock* %70, %struct.dt_lock** %24, align 8
  br label %71

71:                                               ; preds = %67, %5
  %72 = load %struct.dt_lock*, %struct.dt_lock** %24, align 8
  %73 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %72, i32 0, i32 2
  %74 = load %struct.lv*, %struct.lv** %73, align 8
  %75 = load %struct.dt_lock*, %struct.dt_lock** %24, align 8
  %76 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds %struct.lv, %struct.lv* %74, i64 %77
  store %struct.lv* %78, %struct.lv** %25, align 8
  %79 = load i32, i32* %15, align 4
  %80 = load %struct.lv*, %struct.lv** %25, align 8
  %81 = getelementptr inbounds %struct.lv, %struct.lv* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @BT_LEAF, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %151

89:                                               ; preds = %71
  %90 = load %struct.dtslot*, %struct.dtslot** %11, align 8
  %91 = bitcast %struct.dtslot* %90 to %struct.ldtentry*
  store %struct.ldtentry* %91, %struct.ldtentry** %13, align 8
  %92 = load %struct.dtslot*, %struct.dtslot** %11, align 8
  %93 = getelementptr inbounds %struct.dtslot, %struct.dtslot* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.ldtentry*, %struct.ldtentry** %13, align 8
  %96 = getelementptr inbounds %struct.ldtentry, %struct.ldtentry* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = call i8* @cpu_to_le32(i32 %100)
  %102 = load %struct.ldtentry*, %struct.ldtentry** %13, align 8
  %103 = getelementptr inbounds %struct.ldtentry, %struct.ldtentry* %102, i32 0, i32 4
  store i8* %101, i8** %103, align 8
  %104 = load i32, i32* %17, align 4
  %105 = load %struct.ldtentry*, %struct.ldtentry** %13, align 8
  %106 = getelementptr inbounds %struct.ldtentry, %struct.ldtentry* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  %107 = load %struct.ldtentry*, %struct.ldtentry** %13, align 8
  %108 = getelementptr inbounds %struct.ldtentry, %struct.ldtentry* %107, i32 0, i32 3
  %109 = load i32*, i32** %108, align 8
  store i32* %109, i32** %21, align 8
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %146

115:                                              ; preds = %89
  %116 = load i32, i32* %17, align 4
  %117 = load i32, i32* @DTLHDRDATALEN, align 4
  %118 = call i32 @min(i32 %116, i32 %117)
  store i32 %118, i32* %18, align 4
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @BT_ROOT, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %131, label %126

126:                                              ; preds = %115
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 4
  %130 = call i32 @addressPXD(i32* %129)
  store i32 %130, i32* %28, align 4
  br label %131

131:                                              ; preds = %126, %115
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i32, i32* %28, align 4
  %141 = load i32, i32* %7, align 4
  %142 = call i32 @add_index(i32 %135, i64 %139, i32 %140, i32 %141)
  %143 = call i8* @cpu_to_le32(i32 %142)
  %144 = load %struct.ldtentry*, %struct.ldtentry** %13, align 8
  %145 = getelementptr inbounds %struct.ldtentry, %struct.ldtentry* %144, i32 0, i32 2
  store i8* %143, i8** %145, align 8
  br label %150

146:                                              ; preds = %89
  %147 = load i32, i32* %17, align 4
  %148 = load i32, i32* @DTLHDRDATALEN_LEGACY, align 4
  %149 = call i32 @min(i32 %147, i32 %148)
  store i32 %149, i32* %18, align 4
  br label %150

150:                                              ; preds = %146, %131
  br label %174

151:                                              ; preds = %71
  %152 = load %struct.dtslot*, %struct.dtslot** %11, align 8
  %153 = bitcast %struct.dtslot* %152 to %struct.idtentry*
  store %struct.idtentry* %153, %struct.idtentry** %14, align 8
  %154 = load %struct.dtslot*, %struct.dtslot** %11, align 8
  %155 = getelementptr inbounds %struct.dtslot, %struct.dtslot* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.idtentry*, %struct.idtentry** %14, align 8
  %158 = getelementptr inbounds %struct.idtentry, %struct.idtentry* %157, i32 0, i32 0
  store i32 %156, i32* %158, align 8
  %159 = load %struct.idtentry*, %struct.idtentry** %14, align 8
  %160 = bitcast %struct.idtentry* %159 to i32*
  store i32* %160, i32** %23, align 8
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = load i32*, i32** %23, align 8
  store i32 %163, i32* %164, align 4
  %165 = load i32, i32* %17, align 4
  %166 = load %struct.idtentry*, %struct.idtentry** %14, align 8
  %167 = getelementptr inbounds %struct.idtentry, %struct.idtentry* %166, i32 0, i32 1
  store i32 %165, i32* %167, align 4
  %168 = load %struct.idtentry*, %struct.idtentry** %14, align 8
  %169 = getelementptr inbounds %struct.idtentry, %struct.idtentry* %168, i32 0, i32 2
  %170 = load i32*, i32** %169, align 8
  store i32* %170, i32** %21, align 8
  %171 = load i32, i32* %17, align 4
  %172 = load i32, i32* @DTIHDRDATALEN, align 4
  %173 = call i32 @min(i32 %171, i32 %172)
  store i32 %173, i32* %18, align 4
  br label %174

174:                                              ; preds = %151, %150
  %175 = load i32*, i32** %21, align 8
  %176 = load i32*, i32** %20, align 8
  %177 = load i32, i32* %18, align 4
  %178 = call i32 @UniStrncpy_to_le(i32* %175, i32* %176, i32 %177)
  store i32 1, i32* %27, align 4
  %179 = load i32, i32* %15, align 4
  store i32 %179, i32* %26, align 4
  %180 = load %struct.dtslot*, %struct.dtslot** %11, align 8
  store %struct.dtslot* %180, %struct.dtslot** %12, align 8
  %181 = load i32, i32* %18, align 4
  %182 = load i32, i32* %17, align 4
  %183 = sub nsw i32 %182, %181
  store i32 %183, i32* %17, align 4
  br label %184

184:                                              ; preds = %243, %174
  %185 = load i32, i32* %17, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %263

187:                                              ; preds = %184
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  store i32 %191, i32* %16, align 4
  %192 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 1
  %194 = load %struct.dtslot*, %struct.dtslot** %193, align 8
  %195 = load i32, i32* %16, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.dtslot, %struct.dtslot* %194, i64 %196
  store %struct.dtslot* %197, %struct.dtslot** %12, align 8
  %198 = load %struct.dtslot*, %struct.dtslot** %12, align 8
  %199 = getelementptr inbounds %struct.dtslot, %struct.dtslot* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 0
  store i32 %200, i32* %203, align 8
  %204 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 4
  %208 = add nsw i32 %207, -1
  store i32 %208, i32* %206, align 4
  %209 = load i32, i32* %16, align 4
  %210 = load i32, i32* %26, align 4
  %211 = add nsw i32 %210, 1
  %212 = icmp ne i32 %209, %211
  br i1 %212, label %213, label %243

213:                                              ; preds = %187
  %214 = load i32, i32* %27, align 4
  %215 = load %struct.lv*, %struct.lv** %25, align 8
  %216 = getelementptr inbounds %struct.lv, %struct.lv* %215, i32 0, i32 1
  store i32 %214, i32* %216, align 4
  %217 = load %struct.dt_lock*, %struct.dt_lock** %24, align 8
  %218 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = add i64 %219, 1
  store i64 %220, i64* %218, align 8
  %221 = load %struct.dt_lock*, %struct.dt_lock** %24, align 8
  %222 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = load %struct.dt_lock*, %struct.dt_lock** %24, align 8
  %225 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %224, i32 0, i32 1
  %226 = load i64, i64* %225, align 8
  %227 = icmp ult i64 %223, %226
  br i1 %227, label %228, label %231

228:                                              ; preds = %213
  %229 = load %struct.lv*, %struct.lv** %25, align 8
  %230 = getelementptr inbounds %struct.lv, %struct.lv* %229, i32 1
  store %struct.lv* %230, %struct.lv** %25, align 8
  br label %239

231:                                              ; preds = %213
  %232 = load %struct.dt_lock*, %struct.dt_lock** %24, align 8
  %233 = call i64 @txLinelock(%struct.dt_lock* %232)
  %234 = inttoptr i64 %233 to %struct.dt_lock*
  store %struct.dt_lock* %234, %struct.dt_lock** %24, align 8
  %235 = load %struct.dt_lock*, %struct.dt_lock** %24, align 8
  %236 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %235, i32 0, i32 2
  %237 = load %struct.lv*, %struct.lv** %236, align 8
  %238 = getelementptr inbounds %struct.lv, %struct.lv* %237, i64 0
  store %struct.lv* %238, %struct.lv** %25, align 8
  br label %239

239:                                              ; preds = %231, %228
  %240 = load i32, i32* %16, align 4
  %241 = load %struct.lv*, %struct.lv** %25, align 8
  %242 = getelementptr inbounds %struct.lv, %struct.lv* %241, i32 0, i32 0
  store i32 %240, i32* %242, align 4
  store i32 0, i32* %27, align 4
  br label %243

243:                                              ; preds = %239, %187
  %244 = load i32, i32* %18, align 4
  %245 = load i32*, i32** %20, align 8
  %246 = sext i32 %244 to i64
  %247 = getelementptr inbounds i32, i32* %245, i64 %246
  store i32* %247, i32** %20, align 8
  %248 = load i32, i32* %17, align 4
  %249 = load i32, i32* @DTSLOTDATALEN, align 4
  %250 = call i32 @min(i32 %248, i32 %249)
  store i32 %250, i32* %18, align 4
  %251 = load %struct.dtslot*, %struct.dtslot** %12, align 8
  %252 = getelementptr inbounds %struct.dtslot, %struct.dtslot* %251, i32 0, i32 1
  %253 = load i32*, i32** %252, align 8
  %254 = load i32*, i32** %20, align 8
  %255 = load i32, i32* %18, align 4
  %256 = call i32 @UniStrncpy_to_le(i32* %253, i32* %254, i32 %255)
  %257 = load i32, i32* %27, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %27, align 4
  %259 = load i32, i32* %16, align 4
  store i32 %259, i32* %26, align 4
  %260 = load i32, i32* %18, align 4
  %261 = load i32, i32* %17, align 4
  %262 = sub nsw i32 %261, %260
  store i32 %262, i32* %17, align 4
  br label %184

263:                                              ; preds = %184
  %264 = load i32, i32* %27, align 4
  %265 = load %struct.lv*, %struct.lv** %25, align 8
  %266 = getelementptr inbounds %struct.lv, %struct.lv* %265, i32 0, i32 1
  store i32 %264, i32* %266, align 4
  %267 = load %struct.dt_lock*, %struct.dt_lock** %24, align 8
  %268 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = add i64 %269, 1
  store i64 %270, i64* %268, align 8
  %271 = load %struct.dt_lock*, %struct.dt_lock** %24, align 8
  %272 = load %struct.dt_lock**, %struct.dt_lock*** %10, align 8
  store %struct.dt_lock* %271, %struct.dt_lock** %272, align 8
  %273 = load %struct.dtslot*, %struct.dtslot** %11, align 8
  %274 = load %struct.dtslot*, %struct.dtslot** %12, align 8
  %275 = icmp eq %struct.dtslot* %273, %274
  br i1 %275, label %276, label %291

276:                                              ; preds = %263
  %277 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %278 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = load i32, i32* @BT_LEAF, align 4
  %282 = and i32 %280, %281
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %287

284:                                              ; preds = %276
  %285 = load %struct.ldtentry*, %struct.ldtentry** %13, align 8
  %286 = getelementptr inbounds %struct.ldtentry, %struct.ldtentry* %285, i32 0, i32 0
  store i32 -1, i32* %286, align 8
  br label %290

287:                                              ; preds = %276
  %288 = load %struct.idtentry*, %struct.idtentry** %14, align 8
  %289 = getelementptr inbounds %struct.idtentry, %struct.idtentry* %288, i32 0, i32 0
  store i32 -1, i32* %289, align 8
  br label %290

290:                                              ; preds = %287, %284
  br label %294

291:                                              ; preds = %263
  %292 = load %struct.dtslot*, %struct.dtslot** %12, align 8
  %293 = getelementptr inbounds %struct.dtslot, %struct.dtslot* %292, i32 0, i32 0
  store i32 -1, i32* %293, align 8
  br label %294

294:                                              ; preds = %291, %290
  %295 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %296 = call i64* @DT_GETSTBL(%struct.TYPE_10__* %295)
  store i64* %296, i64** %22, align 8
  %297 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %298 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %298, i32 0, i32 2
  %300 = load i32, i32* %299, align 8
  store i32 %300, i32* %19, align 4
  %301 = load i32, i32* %7, align 4
  %302 = load i32, i32* %19, align 4
  %303 = icmp slt i32 %301, %302
  br i1 %303, label %304, label %375

304:                                              ; preds = %294
  %305 = load i64*, i64** %22, align 8
  %306 = load i32, i32* %7, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i64, i64* %305, i64 %307
  %309 = getelementptr inbounds i64, i64* %308, i64 1
  %310 = load i64*, i64** %22, align 8
  %311 = load i32, i32* %7, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i64, i64* %310, i64 %312
  %314 = load i32, i32* %19, align 4
  %315 = load i32, i32* %7, align 4
  %316 = sub nsw i32 %314, %315
  %317 = call i32 @memmove(i64* %309, i64* %313, i32 %316)
  %318 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %319 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %318, i32 0, i32 0
  %320 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 4
  %322 = load i32, i32* @BT_LEAF, align 4
  %323 = and i32 %321, %322
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %374

325:                                              ; preds = %304
  %326 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %327 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %326, i32 0, i32 0
  %328 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %327, i32 0, i32 0
  %329 = load i64, i64* %328, align 8
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %374

331:                                              ; preds = %325
  store %struct.metapage* null, %struct.metapage** %29, align 8
  %332 = load i32, i32* %7, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %27, align 4
  br label %334

334:                                              ; preds = %364, %331
  %335 = load i32, i32* %27, align 4
  %336 = load i32, i32* %19, align 4
  %337 = icmp sle i32 %335, %336
  br i1 %337, label %338, label %367

338:                                              ; preds = %334
  %339 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %340 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %339, i32 0, i32 1
  %341 = load %struct.dtslot*, %struct.dtslot** %340, align 8
  %342 = load i64*, i64** %22, align 8
  %343 = load i32, i32* %27, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i64, i64* %342, i64 %344
  %346 = load i64, i64* %345, align 8
  %347 = getelementptr inbounds %struct.dtslot, %struct.dtslot* %341, i64 %346
  %348 = bitcast %struct.dtslot* %347 to %struct.ldtentry*
  store %struct.ldtentry* %348, %struct.ldtentry** %13, align 8
  %349 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %350 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %349, i32 0, i32 0
  %351 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %350, i32 0, i32 1
  %352 = load i32, i32* %351, align 8
  %353 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %354 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %353, i32 0, i32 0
  %355 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %354, i32 0, i32 0
  %356 = load i64, i64* %355, align 8
  %357 = load %struct.ldtentry*, %struct.ldtentry** %13, align 8
  %358 = getelementptr inbounds %struct.ldtentry, %struct.ldtentry* %357, i32 0, i32 2
  %359 = load i8*, i8** %358, align 8
  %360 = call i32 @le32_to_cpu(i8* %359)
  %361 = load i32, i32* %28, align 4
  %362 = load i32, i32* %27, align 4
  %363 = call i32 @modify_index(i32 %352, i64 %356, i32 %360, i32 %361, i32 %362, %struct.metapage** %29, i32* %30)
  br label %364

364:                                              ; preds = %338
  %365 = load i32, i32* %27, align 4
  %366 = add nsw i32 %365, 1
  store i32 %366, i32* %27, align 4
  br label %334

367:                                              ; preds = %334
  %368 = load %struct.metapage*, %struct.metapage** %29, align 8
  %369 = icmp ne %struct.metapage* %368, null
  br i1 %369, label %370, label %373

370:                                              ; preds = %367
  %371 = load %struct.metapage*, %struct.metapage** %29, align 8
  %372 = call i32 @release_metapage(%struct.metapage* %371)
  br label %373

373:                                              ; preds = %370, %367
  br label %374

374:                                              ; preds = %373, %325, %304
  br label %375

375:                                              ; preds = %374, %294
  %376 = load i32, i32* %15, align 4
  %377 = sext i32 %376 to i64
  %378 = load i64*, i64** %22, align 8
  %379 = load i32, i32* %7, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds i64, i64* %378, i64 %380
  store i64 %377, i64* %381, align 8
  %382 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %383 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %382, i32 0, i32 0
  %384 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %383, i32 0, i32 2
  %385 = load i32, i32* %384, align 8
  %386 = add nsw i32 %385, 1
  store i32 %386, i32* %384, align 8
  ret void
}

declare dso_local i64 @txLinelock(%struct.dt_lock*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @addressPXD(i32*) #1

declare dso_local i32 @add_index(i32, i64, i32, i32) #1

declare dso_local i32 @UniStrncpy_to_le(i32*, i32*, i32) #1

declare dso_local i64* @DT_GETSTBL(%struct.TYPE_10__*) #1

declare dso_local i32 @memmove(i64*, i64*, i32) #1

declare dso_local i32 @modify_index(i32, i64, i32, i32, i32, %struct.metapage**, i32*) #1

declare dso_local i32 @le32_to_cpu(i8*) #1

declare dso_local i32 @release_metapage(%struct.metapage*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
