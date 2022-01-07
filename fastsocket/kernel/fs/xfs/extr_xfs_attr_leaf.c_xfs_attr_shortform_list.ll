; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_attr_leaf.c_xfs_attr_shortform_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_attr_leaf.c_xfs_attr_shortform_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i64, i32 (%struct.TYPE_29__*, i32, i32*, i32, i32, i32*)*, i64, %struct.TYPE_25__*, %struct.TYPE_30__* }
%struct.TYPE_25__ = type { i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i64, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_30__ = type { i32, i64, i32, i64 }
%struct.TYPE_27__ = type { i32, i64, i64, i32, i32*, i32 }
%struct.TYPE_26__ = type { %struct.TYPE_23__, %struct.TYPE_28__* }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_28__ = type { i64, i32, i32, i32* }

@KM_SLEEP = common dso_local global i32 0, align 4
@KM_NOFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"xfs_attr_shortform_list\00", align 1
@XFS_ERRLEVEL_LOW = common dso_local global i32 0, align 4
@EFSCORRUPTED = common dso_local global i32 0, align 4
@xfs_attr_shortform_compare = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_attr_shortform_list(%struct.TYPE_29__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_29__*, align 8
  %4 = alloca %struct.TYPE_30__*, align 8
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca %struct.TYPE_28__*, align 8
  %9 = alloca %struct.TYPE_25__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %3, align 8
  %15 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %16 = icmp ne %struct.TYPE_29__* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @ASSERT(i32 %17)
  %19 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %19, i32 0, i32 3
  %21 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  store %struct.TYPE_25__* %21, %struct.TYPE_25__** %9, align 8
  %22 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %23 = icmp ne %struct.TYPE_25__* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i32 @ASSERT(i32 %24)
  %26 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_24__*, %struct.TYPE_24__** %27, align 8
  %29 = icmp ne %struct.TYPE_24__* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i32 @ASSERT(i32 %30)
  %32 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_24__*, %struct.TYPE_24__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %38, %struct.TYPE_26__** %7, align 8
  %39 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %40 = icmp ne %struct.TYPE_26__* %39, null
  %41 = zext i1 %40 to i32
  %42 = call i32 @ASSERT(i32 %41)
  %43 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %374

49:                                               ; preds = %1
  %50 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %50, i32 0, i32 4
  %52 = load %struct.TYPE_30__*, %struct.TYPE_30__** %51, align 8
  store %struct.TYPE_30__* %52, %struct.TYPE_30__** %4, align 8
  %53 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %54 = icmp ne %struct.TYPE_30__* %53, null
  %55 = zext i1 %54 to i32
  %56 = call i32 @ASSERT(i32 %55)
  %57 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %58 = call i32 @trace_xfs_attr_list_sf(%struct.TYPE_29__* %57)
  %59 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %84, label %63

63:                                               ; preds = %49
  %64 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %65 = call i64 @XFS_ISRESET_CURSOR(%struct.TYPE_30__* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %141

67:                                               ; preds = %63
  %68 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_24__*, %struct.TYPE_24__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = mul nsw i32 %76, 16
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %72, %78
  %80 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp slt i64 %79, %82
  br i1 %83, label %84, label %141

84:                                               ; preds = %67, %49
  store i32 0, i32* %13, align 4
  %85 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_28__*, %struct.TYPE_28__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %87, i64 0
  store %struct.TYPE_28__* %88, %struct.TYPE_28__** %8, align 8
  br label %89

89:                                               ; preds = %135, %84
  %90 = load i32, i32* %13, align 4
  %91 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp slt i32 %90, %94
  br i1 %95, label %96, label %138

96:                                               ; preds = %89
  %97 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %97, i32 0, i32 1
  %99 = load i32 (%struct.TYPE_29__*, i32, i32*, i32, i32, i32*)*, i32 (%struct.TYPE_29__*, i32, i32*, i32, i32, i32*)** %98, align 8
  %100 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %101 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %104, i32 0, i32 3
  %106 = load i32*, i32** %105, align 8
  %107 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = trunc i64 %109 to i32
  %111 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %114, i32 0, i32 3
  %116 = load i32*, i32** %115, align 8
  %117 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds i32, i32* %116, i64 %119
  %121 = call i32 %99(%struct.TYPE_29__* %100, i32 %103, i32* %106, i32 %110, i32 %113, i32* %120)
  store i32 %121, i32* %14, align 4
  %122 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %96
  br label %138

127:                                              ; preds = %96
  %128 = load i32, i32* %14, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %127
  %131 = load i32, i32* %14, align 4
  store i32 %131, i32* %2, align 4
  br label %374

132:                                              ; preds = %127
  %133 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %134 = call %struct.TYPE_28__* @XFS_ATTR_SF_NEXTENTRY(%struct.TYPE_28__* %133)
  store %struct.TYPE_28__* %134, %struct.TYPE_28__** %8, align 8
  br label %135

135:                                              ; preds = %132
  %136 = load i32, i32* %13, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %13, align 4
  br label %89

138:                                              ; preds = %126, %89
  %139 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %140 = call i32 @trace_xfs_attr_list_sf_all(%struct.TYPE_29__* %139)
  store i32 0, i32* %2, align 4
  br label %374

141:                                              ; preds = %67, %63
  %142 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %141
  store i32 0, i32* %2, align 4
  br label %374

147:                                              ; preds = %141
  %148 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = sext i32 %151 to i64
  %153 = mul i64 %152, 48
  %154 = trunc i64 %153 to i32
  store i32 %154, i32* %10, align 4
  %155 = load i32, i32* %10, align 4
  %156 = load i32, i32* @KM_SLEEP, align 4
  %157 = load i32, i32* @KM_NOFS, align 4
  %158 = or i32 %156, %157
  %159 = call %struct.TYPE_27__* @kmem_alloc(i32 %155, i32 %158)
  store %struct.TYPE_27__* %159, %struct.TYPE_27__** %5, align 8
  store %struct.TYPE_27__* %159, %struct.TYPE_27__** %6, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %160 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %160, i32 0, i32 1
  %162 = load %struct.TYPE_28__*, %struct.TYPE_28__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %162, i64 0
  store %struct.TYPE_28__* %163, %struct.TYPE_28__** %8, align 8
  br label %164

164:                                              ; preds = %246, %147
  %165 = load i32, i32* %13, align 4
  %166 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = icmp slt i32 %165, %169
  br i1 %170, label %171, label %249

171:                                              ; preds = %164
  %172 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %173 = bitcast %struct.TYPE_28__* %172 to i8*
  %174 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %175 = bitcast %struct.TYPE_26__* %174 to i8*
  %176 = icmp ult i8* %173, %175
  br i1 %176, label %189, label %177

177:                                              ; preds = %171
  %178 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %179 = bitcast %struct.TYPE_28__* %178 to i8*
  %180 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %181 = bitcast %struct.TYPE_26__* %180 to i8*
  %182 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %183 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %182, i32 0, i32 1
  %184 = load %struct.TYPE_24__*, %struct.TYPE_24__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = getelementptr inbounds i8, i8* %181, i64 %186
  %188 = icmp uge i8* %179, %187
  br label %189

189:                                              ; preds = %177, %171
  %190 = phi i1 [ true, %171 ], [ %188, %177 ]
  %191 = zext i1 %190 to i32
  %192 = call i64 @unlikely(i32 %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %207

194:                                              ; preds = %189
  %195 = load i32, i32* @XFS_ERRLEVEL_LOW, align 4
  %196 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %196, i32 0, i32 3
  %198 = load %struct.TYPE_25__*, %struct.TYPE_25__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %202 = call i32 @XFS_CORRUPTION_ERROR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %195, i32 %200, %struct.TYPE_28__* %201)
  %203 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %204 = call i32 @kmem_free(%struct.TYPE_27__* %203)
  %205 = load i32, i32* @EFSCORRUPTED, align 4
  %206 = call i32 @XFS_ERROR(i32 %205)
  store i32 %206, i32* %2, align 4
  br label %374

207:                                              ; preds = %189
  %208 = load i32, i32* %13, align 4
  %209 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %209, i32 0, i32 0
  store i32 %208, i32* %210, align 8
  %211 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %212 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %211, i32 0, i32 3
  %213 = load i32*, i32** %212, align 8
  %214 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %215 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = call i64 @xfs_da_hashname(i32* %213, i64 %216)
  %218 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %218, i32 0, i32 1
  store i64 %217, i64* %219, align 8
  %220 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %221 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %220, i32 0, i32 3
  %222 = load i32*, i32** %221, align 8
  %223 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %224 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %223, i32 0, i32 4
  store i32* %222, i32** %224, align 8
  %225 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %226 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %229 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %228, i32 0, i32 2
  store i64 %227, i64* %229, align 8
  %230 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %231 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %234 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %233, i32 0, i32 3
  store i32 %232, i32* %234, align 8
  %235 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %236 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %239 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %238, i32 0, i32 5
  store i32 %237, i32* %239, align 8
  %240 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %241 = call %struct.TYPE_28__* @XFS_ATTR_SF_NEXTENTRY(%struct.TYPE_28__* %240)
  store %struct.TYPE_28__* %241, %struct.TYPE_28__** %8, align 8
  %242 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %243 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %242, i32 1
  store %struct.TYPE_27__* %243, %struct.TYPE_27__** %6, align 8
  %244 = load i32, i32* %11, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %11, align 4
  br label %246

246:                                              ; preds = %207
  %247 = load i32, i32* %13, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %13, align 4
  br label %164

249:                                              ; preds = %164
  %250 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %251 = load i32, i32* %11, align 4
  %252 = load i32, i32* @xfs_attr_shortform_compare, align 4
  %253 = call i32 @xfs_sort(%struct.TYPE_27__* %250, i32 %251, i32 48, i32 %252)
  store i32 0, i32* %12, align 4
  %254 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %254, i32 0, i32 0
  store i32 1, i32* %255, align 8
  %256 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %257 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %256, i32 0, i32 3
  store i64 0, i64* %257, align 8
  %258 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  store %struct.TYPE_27__* %258, %struct.TYPE_27__** %6, align 8
  store i32 0, i32* %13, align 4
  br label %259

259:                                              ; preds = %292, %249
  %260 = load i32, i32* %13, align 4
  %261 = load i32, i32* %11, align 4
  %262 = icmp slt i32 %260, %261
  br i1 %262, label %263, label %297

263:                                              ; preds = %259
  %264 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %265 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %264, i32 0, i32 1
  %266 = load i64, i64* %265, align 8
  %267 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %268 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %267, i32 0, i32 1
  %269 = load i64, i64* %268, align 8
  %270 = icmp eq i64 %266, %269
  br i1 %270, label %271, label %281

271:                                              ; preds = %263
  %272 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %273 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %272, i32 0, i32 2
  %274 = load i32, i32* %273, align 8
  %275 = load i32, i32* %12, align 4
  %276 = icmp eq i32 %274, %275
  br i1 %276, label %277, label %278

277:                                              ; preds = %271
  br label %297

278:                                              ; preds = %271
  %279 = load i32, i32* %12, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %12, align 4
  br label %291

281:                                              ; preds = %263
  %282 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %283 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %282, i32 0, i32 1
  %284 = load i64, i64* %283, align 8
  %285 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %286 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %285, i32 0, i32 1
  %287 = load i64, i64* %286, align 8
  %288 = icmp sgt i64 %284, %287
  br i1 %288, label %289, label %290

289:                                              ; preds = %281
  br label %297

290:                                              ; preds = %281
  br label %291

291:                                              ; preds = %290, %278
  br label %292

292:                                              ; preds = %291
  %293 = load i32, i32* %13, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %13, align 4
  %295 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %296 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %295, i32 1
  store %struct.TYPE_27__* %296, %struct.TYPE_27__** %6, align 8
  br label %259

297:                                              ; preds = %289, %277, %259
  %298 = load i32, i32* %13, align 4
  %299 = load i32, i32* %11, align 4
  %300 = icmp eq i32 %298, %299
  br i1 %300, label %301, label %304

301:                                              ; preds = %297
  %302 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %303 = call i32 @kmem_free(%struct.TYPE_27__* %302)
  store i32 0, i32* %2, align 4
  br label %374

304:                                              ; preds = %297
  br label %305

305:                                              ; preds = %366, %304
  %306 = load i32, i32* %13, align 4
  %307 = load i32, i32* %11, align 4
  %308 = icmp slt i32 %306, %307
  br i1 %308, label %309, label %371

309:                                              ; preds = %305
  %310 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %311 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %310, i32 0, i32 1
  %312 = load i64, i64* %311, align 8
  %313 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %314 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %313, i32 0, i32 1
  %315 = load i64, i64* %314, align 8
  %316 = icmp ne i64 %312, %315
  br i1 %316, label %317, label %325

317:                                              ; preds = %309
  %318 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %319 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %318, i32 0, i32 1
  %320 = load i64, i64* %319, align 8
  %321 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %322 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %321, i32 0, i32 1
  store i64 %320, i64* %322, align 8
  %323 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %324 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %323, i32 0, i32 2
  store i32 0, i32* %324, align 8
  br label %325

325:                                              ; preds = %317, %309
  %326 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %327 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %326, i32 0, i32 1
  %328 = load i32 (%struct.TYPE_29__*, i32, i32*, i32, i32, i32*)*, i32 (%struct.TYPE_29__*, i32, i32*, i32, i32, i32*)** %327, align 8
  %329 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %330 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %331 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %330, i32 0, i32 5
  %332 = load i32, i32* %331, align 8
  %333 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %334 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %333, i32 0, i32 4
  %335 = load i32*, i32** %334, align 8
  %336 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %337 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %336, i32 0, i32 2
  %338 = load i64, i64* %337, align 8
  %339 = trunc i64 %338 to i32
  %340 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %341 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %340, i32 0, i32 3
  %342 = load i32, i32* %341, align 8
  %343 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %344 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %343, i32 0, i32 4
  %345 = load i32*, i32** %344, align 8
  %346 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %347 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %346, i32 0, i32 2
  %348 = load i64, i64* %347, align 8
  %349 = getelementptr inbounds i32, i32* %345, i64 %348
  %350 = call i32 %328(%struct.TYPE_29__* %329, i32 %332, i32* %335, i32 %339, i32 %342, i32* %349)
  store i32 %350, i32* %14, align 4
  %351 = load i32, i32* %14, align 4
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %355

353:                                              ; preds = %325
  %354 = load i32, i32* %14, align 4
  store i32 %354, i32* %2, align 4
  br label %374

355:                                              ; preds = %325
  %356 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %357 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %356, i32 0, i32 2
  %358 = load i64, i64* %357, align 8
  %359 = icmp ne i64 %358, 0
  br i1 %359, label %360, label %361

360:                                              ; preds = %355
  br label %371

361:                                              ; preds = %355
  %362 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %363 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %362, i32 0, i32 2
  %364 = load i32, i32* %363, align 8
  %365 = add nsw i32 %364, 1
  store i32 %365, i32* %363, align 8
  br label %366

366:                                              ; preds = %361
  %367 = load i32, i32* %13, align 4
  %368 = add nsw i32 %367, 1
  store i32 %368, i32* %13, align 4
  %369 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %370 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %369, i32 1
  store %struct.TYPE_27__* %370, %struct.TYPE_27__** %6, align 8
  br label %305

371:                                              ; preds = %360, %305
  %372 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %373 = call i32 @kmem_free(%struct.TYPE_27__* %372)
  store i32 0, i32* %2, align 4
  br label %374

374:                                              ; preds = %371, %353, %301, %194, %146, %138, %130, %48
  %375 = load i32, i32* %2, align 4
  ret i32 %375
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @trace_xfs_attr_list_sf(%struct.TYPE_29__*) #1

declare dso_local i64 @XFS_ISRESET_CURSOR(%struct.TYPE_30__*) #1

declare dso_local %struct.TYPE_28__* @XFS_ATTR_SF_NEXTENTRY(%struct.TYPE_28__*) #1

declare dso_local i32 @trace_xfs_attr_list_sf_all(%struct.TYPE_29__*) #1

declare dso_local %struct.TYPE_27__* @kmem_alloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @XFS_CORRUPTION_ERROR(i8*, i32, i32, %struct.TYPE_28__*) #1

declare dso_local i32 @kmem_free(%struct.TYPE_27__*) #1

declare dso_local i32 @XFS_ERROR(i32) #1

declare dso_local i64 @xfs_da_hashname(i32*, i64) #1

declare dso_local i32 @xfs_sort(%struct.TYPE_27__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
