; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_attr_leaf.c_xfs_attr_leaf_list_int.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_attr_leaf.c_xfs_attr_leaf_list_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { %struct.TYPE_30__* }
%struct.TYPE_30__ = type { %struct.TYPE_25__, %struct.TYPE_33__* }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_33__ = type { i32, i32 }
%struct.TYPE_29__ = type { i64, i32 (%struct.TYPE_29__*, i32, i32*, i32, i32, i32*)*, i64, %struct.TYPE_26__*, i64, i64, %struct.TYPE_24__* }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_24__ = type { i32, i64, i64 }
%struct.TYPE_32__ = type { i64, i32*, i32 }
%struct.TYPE_31__ = type { i64, i32*, i32, i32 }
%struct.TYPE_28__ = type { i32, i32*, %struct.TYPE_26__*, i32, i64, i32 }

@XFS_ATTR_INCOMPLETE = common dso_local global i32 0, align 4
@XFS_ATTR_LOCAL = common dso_local global i32 0, align 4
@XFS_ATTR_FORK = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@KM_NOFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_attr_leaf_list_int(%struct.TYPE_27__* %0, %struct.TYPE_29__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_27__*, align 8
  %5 = alloca %struct.TYPE_29__*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.TYPE_30__*, align 8
  %8 = alloca %struct.TYPE_33__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_32__*, align 8
  %12 = alloca %struct.TYPE_31__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_28__, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %4, align 8
  store %struct.TYPE_29__* %1, %struct.TYPE_29__** %5, align 8
  %15 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %16 = icmp ne %struct.TYPE_27__* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @ASSERT(i32 %17)
  %19 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_30__*, %struct.TYPE_30__** %20, align 8
  store %struct.TYPE_30__* %21, %struct.TYPE_30__** %7, align 8
  %22 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %22, i32 0, i32 6
  %24 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  store %struct.TYPE_24__* %24, %struct.TYPE_24__** %6, align 8
  %25 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %28 = call i32 @trace_xfs_attr_list_leaf(%struct.TYPE_29__* %27)
  %29 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %29, i32 0, i32 5
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %102

33:                                               ; preds = %2
  %34 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_33__*, %struct.TYPE_33__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %36, i64 0
  store %struct.TYPE_33__* %37, %struct.TYPE_33__** %8, align 8
  store i32 0, i32* %10, align 4
  br label %38

38:                                               ; preds = %85, %33
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @be16_to_cpu(i32 %43)
  %45 = icmp slt i32 %39, %44
  br i1 %45, label %46, label %90

46:                                               ; preds = %38
  %47 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @be32_to_cpu(i32 %49)
  %51 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %50, %53
  br i1 %54, label %55, label %71

55:                                               ; preds = %46
  %56 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %58, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %55
  %64 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %64, i32 0, i32 0
  store i64 0, i64* %65, align 8
  br label %90

66:                                               ; preds = %55
  %67 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %68, align 8
  br label %84

71:                                               ; preds = %46
  %72 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @be32_to_cpu(i32 %74)
  %76 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp sgt i64 %75, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %71
  %81 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %81, i32 0, i32 0
  store i64 0, i64* %82, align 8
  br label %90

83:                                               ; preds = %71
  br label %84

84:                                               ; preds = %83, %66
  br label %85

85:                                               ; preds = %84
  %86 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %86, i32 1
  store %struct.TYPE_33__* %87, %struct.TYPE_33__** %8, align 8
  %88 = load i32, i32* %10, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %10, align 4
  br label %38

90:                                               ; preds = %80, %63, %38
  %91 = load i32, i32* %10, align 4
  %92 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @be16_to_cpu(i32 %95)
  %97 = icmp eq i32 %91, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %90
  %99 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %100 = call i32 @trace_xfs_attr_list_notfound(%struct.TYPE_29__* %99)
  store i32 0, i32* %3, align 4
  br label %298

101:                                              ; preds = %90
  br label %107

102:                                              ; preds = %2
  %103 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_33__*, %struct.TYPE_33__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %105, i64 0
  store %struct.TYPE_33__* %106, %struct.TYPE_33__** %8, align 8
  store i32 0, i32* %10, align 4
  br label %107

107:                                              ; preds = %102, %101
  %108 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %108, i32 0, i32 5
  store i64 0, i64* %109, align 8
  store i32 0, i32* %9, align 4
  br label %110

110:                                              ; preds = %289, %107
  %111 = load i32, i32* %10, align 4
  %112 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @be16_to_cpu(i32 %115)
  %117 = icmp slt i32 %111, %116
  br i1 %117, label %118, label %294

118:                                              ; preds = %110
  %119 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i64 @be32_to_cpu(i32 %121)
  %123 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %122, %125
  br i1 %126, label %127, label %136

127:                                              ; preds = %118
  %128 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i64 @be32_to_cpu(i32 %130)
  %132 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %132, i32 0, i32 1
  store i64 %131, i64* %133, align 8
  %134 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %134, i32 0, i32 2
  store i64 0, i64* %135, align 8
  br label %136

136:                                              ; preds = %127, %118
  %137 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @XFS_ATTR_INCOMPLETE, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %136
  br label %289

144:                                              ; preds = %136
  %145 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @XFS_ATTR_LOCAL, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %186

151:                                              ; preds = %144
  %152 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %153 = load i32, i32* %10, align 4
  %154 = call %struct.TYPE_32__* @xfs_attr_leaf_name_local(%struct.TYPE_30__* %152, i32 %153)
  store %struct.TYPE_32__* %154, %struct.TYPE_32__** %11, align 8
  %155 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %155, i32 0, i32 1
  %157 = load i32 (%struct.TYPE_29__*, i32, i32*, i32, i32, i32*)*, i32 (%struct.TYPE_29__*, i32, i32*, i32, i32, i32*)** %156, align 8
  %158 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %159 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %163 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %162, i32 0, i32 1
  %164 = load i32*, i32** %163, align 8
  %165 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %166 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = trunc i64 %167 to i32
  %169 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %170 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @be16_to_cpu(i32 %171)
  %173 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %174 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %173, i32 0, i32 1
  %175 = load i32*, i32** %174, align 8
  %176 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %177 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = getelementptr inbounds i32, i32* %175, i64 %178
  %180 = call i32 %157(%struct.TYPE_29__* %158, i32 %161, i32* %164, i32 %168, i32 %172, i32* %179)
  store i32 %180, i32* %9, align 4
  %181 = load i32, i32* %9, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %151
  %184 = load i32, i32* %9, align 4
  store i32 %184, i32* %3, align 4
  br label %298

185:                                              ; preds = %151
  br label %278

186:                                              ; preds = %144
  %187 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %188 = load i32, i32* %10, align 4
  %189 = call %struct.TYPE_31__* @xfs_attr_leaf_name_remote(%struct.TYPE_30__* %187, i32 %188)
  store %struct.TYPE_31__* %189, %struct.TYPE_31__** %12, align 8
  %190 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %191 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 4
  %193 = call i64 @be32_to_cpu(i32 %192)
  %194 = trunc i64 %193 to i32
  store i32 %194, i32* %13, align 4
  %195 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %195, i32 0, i32 4
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %255

199:                                              ; preds = %186
  %200 = bitcast %struct.TYPE_28__* %14 to i8*
  %201 = call i32 @memset(i8* %200, i32 0, i32 48)
  %202 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %202, i32 0, i32 3
  %204 = load %struct.TYPE_26__*, %struct.TYPE_26__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %14, i32 0, i32 2
  store %struct.TYPE_26__* %204, %struct.TYPE_26__** %205, align 8
  %206 = load i32, i32* @XFS_ATTR_FORK, align 4
  %207 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %14, i32 0, i32 5
  store i32 %206, i32* %207, align 8
  %208 = load i32, i32* %13, align 4
  %209 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %14, i32 0, i32 0
  store i32 %208, i32* %209, align 8
  %210 = load i32, i32* %13, align 4
  %211 = load i32, i32* @KM_SLEEP, align 4
  %212 = load i32, i32* @KM_NOFS, align 4
  %213 = or i32 %211, %212
  %214 = call i32* @kmem_alloc(i32 %210, i32 %213)
  %215 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %14, i32 0, i32 1
  store i32* %214, i32** %215, align 8
  %216 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %217 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = call i64 @be32_to_cpu(i32 %218)
  %220 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %14, i32 0, i32 4
  store i64 %219, i64* %220, align 8
  %221 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %14, i32 0, i32 2
  %222 = load %struct.TYPE_26__*, %struct.TYPE_26__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* %13, align 4
  %226 = call i32 @XFS_B_TO_FSB(i32 %224, i32 %225)
  %227 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %14, i32 0, i32 3
  store i32 %226, i32* %227, align 8
  %228 = call i32 @xfs_attr_rmtval_get(%struct.TYPE_28__* %14)
  store i32 %228, i32* %9, align 4
  %229 = load i32, i32* %9, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %233

231:                                              ; preds = %199
  %232 = load i32, i32* %9, align 4
  store i32 %232, i32* %3, align 4
  br label %298

233:                                              ; preds = %199
  %234 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %234, i32 0, i32 1
  %236 = load i32 (%struct.TYPE_29__*, i32, i32*, i32, i32, i32*)*, i32 (%struct.TYPE_29__*, i32, i32*, i32, i32, i32*)** %235, align 8
  %237 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %238 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %239 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %242 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %241, i32 0, i32 1
  %243 = load i32*, i32** %242, align 8
  %244 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %245 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = trunc i64 %246 to i32
  %248 = load i32, i32* %13, align 4
  %249 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %14, i32 0, i32 1
  %250 = load i32*, i32** %249, align 8
  %251 = call i32 %236(%struct.TYPE_29__* %237, i32 %240, i32* %243, i32 %247, i32 %248, i32* %250)
  store i32 %251, i32* %9, align 4
  %252 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %14, i32 0, i32 1
  %253 = load i32*, i32** %252, align 8
  %254 = call i32 @kmem_free(i32* %253)
  br label %272

255:                                              ; preds = %186
  %256 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %257 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %256, i32 0, i32 1
  %258 = load i32 (%struct.TYPE_29__*, i32, i32*, i32, i32, i32*)*, i32 (%struct.TYPE_29__*, i32, i32*, i32, i32, i32*)** %257, align 8
  %259 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %260 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %261 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %264 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %263, i32 0, i32 1
  %265 = load i32*, i32** %264, align 8
  %266 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %267 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %266, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = trunc i64 %268 to i32
  %270 = load i32, i32* %13, align 4
  %271 = call i32 %258(%struct.TYPE_29__* %259, i32 %262, i32* %265, i32 %269, i32 %270, i32* null)
  store i32 %271, i32* %9, align 4
  br label %272

272:                                              ; preds = %255, %233
  %273 = load i32, i32* %9, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %277

275:                                              ; preds = %272
  %276 = load i32, i32* %9, align 4
  store i32 %276, i32* %3, align 4
  br label %298

277:                                              ; preds = %272
  br label %278

278:                                              ; preds = %277, %185
  %279 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %280 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %279, i32 0, i32 2
  %281 = load i64, i64* %280, align 8
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %284

283:                                              ; preds = %278
  br label %294

284:                                              ; preds = %278
  %285 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %286 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %285, i32 0, i32 2
  %287 = load i64, i64* %286, align 8
  %288 = add nsw i64 %287, 1
  store i64 %288, i64* %286, align 8
  br label %289

289:                                              ; preds = %284, %143
  %290 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %291 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %290, i32 1
  store %struct.TYPE_33__* %291, %struct.TYPE_33__** %8, align 8
  %292 = load i32, i32* %10, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %10, align 4
  br label %110

294:                                              ; preds = %283, %110
  %295 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %296 = call i32 @trace_xfs_attr_list_leaf_end(%struct.TYPE_29__* %295)
  %297 = load i32, i32* %9, align 4
  store i32 %297, i32* %3, align 4
  br label %298

298:                                              ; preds = %294, %275, %231, %183, %98
  %299 = load i32, i32* %3, align 4
  ret i32 %299
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @trace_xfs_attr_list_leaf(%struct.TYPE_29__*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @trace_xfs_attr_list_notfound(%struct.TYPE_29__*) #1

declare dso_local %struct.TYPE_32__* @xfs_attr_leaf_name_local(%struct.TYPE_30__*, i32) #1

declare dso_local %struct.TYPE_31__* @xfs_attr_leaf_name_remote(%struct.TYPE_30__*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32* @kmem_alloc(i32, i32) #1

declare dso_local i32 @XFS_B_TO_FSB(i32, i32) #1

declare dso_local i32 @xfs_attr_rmtval_get(%struct.TYPE_28__*) #1

declare dso_local i32 @kmem_free(i32*) #1

declare dso_local i32 @trace_xfs_attr_list_leaf_end(%struct.TYPE_29__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
