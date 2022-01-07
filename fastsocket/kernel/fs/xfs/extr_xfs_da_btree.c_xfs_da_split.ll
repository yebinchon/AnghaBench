; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_da_btree.c_xfs_da_split.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_da_btree.c_xfs_da_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_36__ = type { i32, i32, %struct.TYPE_32__*, %struct.TYPE_37__, %struct.TYPE_31__, i32, %struct.TYPE_30__ }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_37__ = type { i64, i64, %struct.TYPE_35__* }
%struct.TYPE_35__ = type { %struct.TYPE_38__* }
%struct.TYPE_38__ = type { %struct.TYPE_34__ }
%struct.TYPE_34__ = type { %struct.TYPE_33__ }
%struct.TYPE_33__ = type { i8*, i8* }
%struct.TYPE_31__ = type { i32, %struct.TYPE_37__* }
%struct.TYPE_30__ = type { %struct.TYPE_37__* }

@XFS_DA_NODE_MAXDEPTH = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_da_split(%struct.TYPE_36__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_36__*, align 8
  %4 = alloca %struct.TYPE_37__*, align 8
  %5 = alloca %struct.TYPE_37__*, align 8
  %6 = alloca %struct.TYPE_37__*, align 8
  %7 = alloca %struct.TYPE_38__*, align 8
  %8 = alloca %struct.TYPE_35__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_36__* %0, %struct.TYPE_36__** %3, align 8
  %13 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %16 = call i32 @trace_xfs_da_split(%struct.TYPE_32__* %15)
  %17 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sub nsw i32 %20, 1
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp sge i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @XFS_DA_NODE_MAXDEPTH, align 4
  %27 = icmp slt i32 %25, %26
  br label %28

28:                                               ; preds = %24, %1
  %29 = phi i1 [ false, %1 ], [ %27, %24 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @ASSERT(i32 %30)
  %32 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_37__*, %struct.TYPE_37__** %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 130
  br i1 %41, label %53, label %42

42:                                               ; preds = %28
  %43 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_37__*, %struct.TYPE_37__** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %51, 128
  br label %53

53:                                               ; preds = %42, %28
  %54 = phi i1 [ true, %28 ], [ %52, %42 ]
  %55 = zext i1 %54 to i32
  %56 = call i32 @ASSERT(i32 %55)
  %57 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_37__*, %struct.TYPE_37__** %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %60, i64 %62
  store %struct.TYPE_37__* %63, %struct.TYPE_37__** %6, align 8
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %12, align 4
  br label %65

65:                                               ; preds = %200, %53
  %66 = load i32, i32* %12, align 4
  %67 = icmp sge i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %70 = icmp ne %struct.TYPE_37__* %69, null
  br label %71

71:                                               ; preds = %68, %65
  %72 = phi i1 [ false, %65 ], [ %70, %68 ]
  br i1 %72, label %73, label %208

73:                                               ; preds = %71
  %74 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_37__*, %struct.TYPE_37__** %76, align 8
  %78 = load i32, i32* %12, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %77, i64 %79
  store %struct.TYPE_37__* %80, %struct.TYPE_37__** %4, align 8
  %81 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %81, i32 0, i32 6
  %83 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_37__*, %struct.TYPE_37__** %83, align 8
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %84, i64 %86
  store %struct.TYPE_37__* %87, %struct.TYPE_37__** %5, align 8
  %88 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  switch i64 %90, label %184 [
    i64 130, label %91
    i64 128, label %147
    i64 129, label %158
  ]

91:                                               ; preds = %73
  %92 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %93 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %94 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %95 = call i32 @xfs_attr_leaf_split(%struct.TYPE_36__* %92, %struct.TYPE_37__* %93, %struct.TYPE_37__* %94)
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* %11, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %91
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* @ENOSPC, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %98
  %103 = load i32, i32* %11, align 4
  store i32 %103, i32* %2, align 4
  br label %374

104:                                              ; preds = %98, %91
  %105 = load i32, i32* %11, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %104
  %108 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  store %struct.TYPE_37__* %108, %struct.TYPE_37__** %6, align 8
  br label %184

109:                                              ; preds = %104
  %110 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %110, i32 0, i32 0
  store i32 1, i32* %111, align 8
  %112 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 8
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %128

116:                                              ; preds = %109
  %117 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %117, i32 0, i32 1
  store i32 0, i32* %118, align 4
  %119 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %119, i32 0, i32 2
  %121 = load %struct.TYPE_32__*, %struct.TYPE_32__** %120, align 8
  %122 = call i32 @trace_xfs_attr_leaf_split_before(%struct.TYPE_32__* %121)
  %123 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %124 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %125 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %125, i32 0, i32 3
  %127 = call i32 @xfs_attr_leaf_split(%struct.TYPE_36__* %123, %struct.TYPE_37__* %124, %struct.TYPE_37__* %126)
  store i32 %127, i32* %11, align 4
  br label %140

128:                                              ; preds = %109
  %129 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %129, i32 0, i32 1
  store i32 1, i32* %130, align 4
  %131 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %131, i32 0, i32 2
  %133 = load %struct.TYPE_32__*, %struct.TYPE_32__** %132, align 8
  %134 = call i32 @trace_xfs_attr_leaf_split_after(%struct.TYPE_32__* %133)
  %135 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %136 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %137 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %137, i32 0, i32 3
  %139 = call i32 @xfs_attr_leaf_split(%struct.TYPE_36__* %135, %struct.TYPE_37__* %136, %struct.TYPE_37__* %138)
  store i32 %139, i32* %11, align 4
  br label %140

140:                                              ; preds = %128, %116
  %141 = load i32, i32* %11, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %140
  %144 = load i32, i32* %11, align 4
  store i32 %144, i32* %2, align 4
  br label %374

145:                                              ; preds = %140
  %146 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  store %struct.TYPE_37__* %146, %struct.TYPE_37__** %6, align 8
  br label %184

147:                                              ; preds = %73
  %148 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %149 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %150 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %151 = call i32 @xfs_dir2_leafn_split(%struct.TYPE_36__* %148, %struct.TYPE_37__* %149, %struct.TYPE_37__* %150)
  store i32 %151, i32* %11, align 4
  %152 = load i32, i32* %11, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %147
  %155 = load i32, i32* %11, align 4
  store i32 %155, i32* %2, align 4
  br label %374

156:                                              ; preds = %147
  %157 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  store %struct.TYPE_37__* %157, %struct.TYPE_37__** %6, align 8
  br label %184

158:                                              ; preds = %73
  %159 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %160 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %161 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %162 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %163 = load i32, i32* %9, align 4
  %164 = load i32, i32* %12, align 4
  %165 = sub nsw i32 %163, %164
  %166 = call i32 @xfs_da_node_split(%struct.TYPE_36__* %159, %struct.TYPE_37__* %160, %struct.TYPE_37__* %161, %struct.TYPE_37__* %162, i32 %165, i32* %10)
  store i32 %166, i32* %11, align 4
  %167 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %167, i32 0, i32 2
  %169 = load %struct.TYPE_35__*, %struct.TYPE_35__** %168, align 8
  %170 = call i32 @xfs_da_buf_done(%struct.TYPE_35__* %169)
  %171 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %171, i32 0, i32 2
  store %struct.TYPE_35__* null, %struct.TYPE_35__** %172, align 8
  %173 = load i32, i32* %11, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %158
  %176 = load i32, i32* %11, align 4
  store i32 %176, i32* %2, align 4
  br label %374

177:                                              ; preds = %158
  %178 = load i32, i32* %10, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %177
  %181 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  store %struct.TYPE_37__* %181, %struct.TYPE_37__** %6, align 8
  br label %183

182:                                              ; preds = %177
  store %struct.TYPE_37__* null, %struct.TYPE_37__** %6, align 8
  br label %183

183:                                              ; preds = %182, %180
  br label %184

184:                                              ; preds = %73, %183, %156, %145, %107
  %185 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %186 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %186, i32 0, i32 4
  %188 = call i32 @xfs_da_fixhashpath(%struct.TYPE_36__* %185, %struct.TYPE_31__* %187)
  %189 = load i32, i32* %12, align 4
  %190 = icmp sgt i32 %189, 0
  br i1 %190, label %194, label %191

191:                                              ; preds = %184
  %192 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %193 = icmp ne %struct.TYPE_37__* %192, null
  br i1 %193, label %199, label %194

194:                                              ; preds = %191, %184
  %195 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %195, i32 0, i32 2
  %197 = load %struct.TYPE_35__*, %struct.TYPE_35__** %196, align 8
  %198 = call i32 @xfs_da_buf_done(%struct.TYPE_35__* %197)
  br label %199

199:                                              ; preds = %194, %191
  br label %200

200:                                              ; preds = %199
  %201 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %201, i32 0, i32 4
  %203 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = add nsw i32 %204, -1
  store i32 %205, i32* %203, align 8
  %206 = load i32, i32* %12, align 4
  %207 = add nsw i32 %206, -1
  store i32 %207, i32* %12, align 4
  br label %65

208:                                              ; preds = %71
  %209 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %210 = icmp ne %struct.TYPE_37__* %209, null
  br i1 %210, label %212, label %211

211:                                              ; preds = %208
  store i32 0, i32* %2, align 4
  br label %374

212:                                              ; preds = %208
  %213 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %213, i32 0, i32 4
  %215 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = icmp eq i32 %216, 0
  %218 = zext i1 %217 to i32
  %219 = call i32 @ASSERT(i32 %218)
  %220 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %220, i32 0, i32 4
  %222 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %221, i32 0, i32 1
  %223 = load %struct.TYPE_37__*, %struct.TYPE_37__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %223, i64 0
  store %struct.TYPE_37__* %224, %struct.TYPE_37__** %4, align 8
  %225 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %226 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %227 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %228 = call i32 @xfs_da_root_split(%struct.TYPE_36__* %225, %struct.TYPE_37__* %226, %struct.TYPE_37__* %227)
  store i32 %228, i32* %11, align 4
  %229 = load i32, i32* %11, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %243

231:                                              ; preds = %212
  %232 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %232, i32 0, i32 2
  %234 = load %struct.TYPE_35__*, %struct.TYPE_35__** %233, align 8
  %235 = call i32 @xfs_da_buf_done(%struct.TYPE_35__* %234)
  %236 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %236, i32 0, i32 2
  %238 = load %struct.TYPE_35__*, %struct.TYPE_35__** %237, align 8
  %239 = call i32 @xfs_da_buf_done(%struct.TYPE_35__* %238)
  %240 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %241 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %240, i32 0, i32 2
  store %struct.TYPE_35__* null, %struct.TYPE_35__** %241, align 8
  %242 = load i32, i32* %11, align 4
  store i32 %242, i32* %2, align 4
  br label %374

243:                                              ; preds = %212
  %244 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %245 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %244, i32 0, i32 2
  %246 = load %struct.TYPE_35__*, %struct.TYPE_35__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %246, i32 0, i32 0
  %248 = load %struct.TYPE_38__*, %struct.TYPE_38__** %247, align 8
  store %struct.TYPE_38__* %248, %struct.TYPE_38__** %7, align 8
  %249 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %250 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %251, i32 0, i32 0
  %253 = load i8*, i8** %252, align 8
  %254 = icmp ne i8* %253, null
  br i1 %254, label %255, label %303

255:                                              ; preds = %243
  %256 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %257 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %258, i32 0, i32 0
  %260 = load i8*, i8** %259, align 8
  %261 = call i64 @be32_to_cpu(i8* %260)
  %262 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %263 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %262, i32 0, i32 1
  %264 = load i64, i64* %263, align 8
  %265 = icmp eq i64 %261, %264
  br i1 %265, label %266, label %270

266:                                              ; preds = %255
  %267 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %268 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %267, i32 0, i32 2
  %269 = load %struct.TYPE_35__*, %struct.TYPE_35__** %268, align 8
  store %struct.TYPE_35__* %269, %struct.TYPE_35__** %8, align 8
  br label %279

270:                                              ; preds = %255
  %271 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %272 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = call i32 @ASSERT(i32 %273)
  %275 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %276 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %275, i32 0, i32 3
  %277 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %276, i32 0, i32 2
  %278 = load %struct.TYPE_35__*, %struct.TYPE_35__** %277, align 8
  store %struct.TYPE_35__* %278, %struct.TYPE_35__** %8, align 8
  br label %279

279:                                              ; preds = %270, %266
  %280 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %281 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %280, i32 0, i32 0
  %282 = load %struct.TYPE_38__*, %struct.TYPE_38__** %281, align 8
  store %struct.TYPE_38__* %282, %struct.TYPE_38__** %7, align 8
  %283 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %284 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %283, i32 0, i32 1
  %285 = load i64, i64* %284, align 8
  %286 = call i8* @cpu_to_be32(i64 %285)
  %287 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %288 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %289, i32 0, i32 1
  store i8* %286, i8** %290, align 8
  %291 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %292 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %291, i32 0, i32 2
  %293 = load %struct.TYPE_32__*, %struct.TYPE_32__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 4
  %296 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %297 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %298 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %299 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %298, i32 0, i32 0
  %300 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %299, i32 0, i32 0
  %301 = call i32 @XFS_DA_LOGRANGE(%struct.TYPE_38__* %297, %struct.TYPE_33__* %300, i32 16)
  %302 = call i32 @xfs_da_log_buf(i32 %295, %struct.TYPE_35__* %296, i32 %301)
  br label %303

303:                                              ; preds = %279, %243
  %304 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %305 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %304, i32 0, i32 2
  %306 = load %struct.TYPE_35__*, %struct.TYPE_35__** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %306, i32 0, i32 0
  %308 = load %struct.TYPE_38__*, %struct.TYPE_38__** %307, align 8
  store %struct.TYPE_38__* %308, %struct.TYPE_38__** %7, align 8
  %309 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %310 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %311, i32 0, i32 1
  %313 = load i8*, i8** %312, align 8
  %314 = icmp ne i8* %313, null
  br i1 %314, label %315, label %363

315:                                              ; preds = %303
  %316 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %317 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %316, i32 0, i32 0
  %318 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %317, i32 0, i32 0
  %319 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %318, i32 0, i32 1
  %320 = load i8*, i8** %319, align 8
  %321 = call i64 @be32_to_cpu(i8* %320)
  %322 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %323 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %322, i32 0, i32 1
  %324 = load i64, i64* %323, align 8
  %325 = icmp eq i64 %321, %324
  br i1 %325, label %326, label %330

326:                                              ; preds = %315
  %327 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %328 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %327, i32 0, i32 2
  %329 = load %struct.TYPE_35__*, %struct.TYPE_35__** %328, align 8
  store %struct.TYPE_35__* %329, %struct.TYPE_35__** %8, align 8
  br label %339

330:                                              ; preds = %315
  %331 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %332 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 8
  %334 = call i32 @ASSERT(i32 %333)
  %335 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %336 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %335, i32 0, i32 3
  %337 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %336, i32 0, i32 2
  %338 = load %struct.TYPE_35__*, %struct.TYPE_35__** %337, align 8
  store %struct.TYPE_35__* %338, %struct.TYPE_35__** %8, align 8
  br label %339

339:                                              ; preds = %330, %326
  %340 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %341 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %340, i32 0, i32 0
  %342 = load %struct.TYPE_38__*, %struct.TYPE_38__** %341, align 8
  store %struct.TYPE_38__* %342, %struct.TYPE_38__** %7, align 8
  %343 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %344 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %343, i32 0, i32 1
  %345 = load i64, i64* %344, align 8
  %346 = call i8* @cpu_to_be32(i64 %345)
  %347 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %348 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %347, i32 0, i32 0
  %349 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %348, i32 0, i32 0
  %350 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %349, i32 0, i32 0
  store i8* %346, i8** %350, align 8
  %351 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %352 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %351, i32 0, i32 2
  %353 = load %struct.TYPE_32__*, %struct.TYPE_32__** %352, align 8
  %354 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 4
  %356 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %357 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %358 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %359 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %358, i32 0, i32 0
  %360 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %359, i32 0, i32 0
  %361 = call i32 @XFS_DA_LOGRANGE(%struct.TYPE_38__* %357, %struct.TYPE_33__* %360, i32 16)
  %362 = call i32 @xfs_da_log_buf(i32 %355, %struct.TYPE_35__* %356, i32 %361)
  br label %363

363:                                              ; preds = %339, %303
  %364 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %365 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %364, i32 0, i32 2
  %366 = load %struct.TYPE_35__*, %struct.TYPE_35__** %365, align 8
  %367 = call i32 @xfs_da_buf_done(%struct.TYPE_35__* %366)
  %368 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %369 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %368, i32 0, i32 2
  %370 = load %struct.TYPE_35__*, %struct.TYPE_35__** %369, align 8
  %371 = call i32 @xfs_da_buf_done(%struct.TYPE_35__* %370)
  %372 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %373 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %372, i32 0, i32 2
  store %struct.TYPE_35__* null, %struct.TYPE_35__** %373, align 8
  store i32 0, i32* %2, align 4
  br label %374

374:                                              ; preds = %363, %231, %211, %175, %154, %143, %102
  %375 = load i32, i32* %2, align 4
  ret i32 %375
}

declare dso_local i32 @trace_xfs_da_split(%struct.TYPE_32__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_attr_leaf_split(%struct.TYPE_36__*, %struct.TYPE_37__*, %struct.TYPE_37__*) #1

declare dso_local i32 @trace_xfs_attr_leaf_split_before(%struct.TYPE_32__*) #1

declare dso_local i32 @trace_xfs_attr_leaf_split_after(%struct.TYPE_32__*) #1

declare dso_local i32 @xfs_dir2_leafn_split(%struct.TYPE_36__*, %struct.TYPE_37__*, %struct.TYPE_37__*) #1

declare dso_local i32 @xfs_da_node_split(%struct.TYPE_36__*, %struct.TYPE_37__*, %struct.TYPE_37__*, %struct.TYPE_37__*, i32, i32*) #1

declare dso_local i32 @xfs_da_buf_done(%struct.TYPE_35__*) #1

declare dso_local i32 @xfs_da_fixhashpath(%struct.TYPE_36__*, %struct.TYPE_31__*) #1

declare dso_local i32 @xfs_da_root_split(%struct.TYPE_36__*, %struct.TYPE_37__*, %struct.TYPE_37__*) #1

declare dso_local i64 @be32_to_cpu(i8*) #1

declare dso_local i8* @cpu_to_be32(i64) #1

declare dso_local i32 @xfs_da_log_buf(i32, %struct.TYPE_35__*, i32) #1

declare dso_local i32 @XFS_DA_LOGRANGE(%struct.TYPE_38__*, %struct.TYPE_33__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
