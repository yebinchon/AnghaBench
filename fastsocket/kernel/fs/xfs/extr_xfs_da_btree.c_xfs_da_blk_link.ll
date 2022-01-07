; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_da_btree.c_xfs_da_blk_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_da_btree.c_xfs_da_blk_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32, i32, i32 }
%struct.TYPE_22__ = type { i64, i64, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i64, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_da_blk_link(%struct.TYPE_21__* %0, %struct.TYPE_22__* %1, %struct.TYPE_22__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca %struct.TYPE_24__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %5, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %6, align 8
  store %struct.TYPE_22__* %2, %struct.TYPE_22__** %7, align 8
  store i32 0, i32* %12, align 4
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  store %struct.TYPE_24__* %17, %struct.TYPE_24__** %11, align 8
  %18 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %19 = icmp ne %struct.TYPE_24__* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @ASSERT(i32 %20)
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** %25, align 8
  store %struct.TYPE_23__* %26, %struct.TYPE_23__** %8, align 8
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_23__*, %struct.TYPE_23__** %30, align 8
  store %struct.TYPE_23__* %31, %struct.TYPE_23__** %9, align 8
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 129
  br i1 %35, label %46, label %36

36:                                               ; preds = %3
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 128
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 130
  br label %46

46:                                               ; preds = %41, %36, %3
  %47 = phi i1 [ true, %36 ], [ true, %3 ], [ %45, %41 ]
  %48 = zext i1 %47 to i32
  %49 = call i32 @ASSERT(i32 %48)
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i64 @be16_to_cpu(i64 %55)
  %57 = icmp eq i64 %52, %56
  %58 = zext i1 %57 to i32
  %59 = call i32 @ASSERT(i32 %58)
  %60 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i64 @be16_to_cpu(i64 %65)
  %67 = icmp eq i64 %62, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @ASSERT(i32 %68)
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %72, %75
  %77 = zext i1 %76 to i32
  %78 = call i32 @ASSERT(i32 %77)
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  switch i64 %81, label %106 [
    i64 130, label %82
    i64 128, label %90
    i64 129, label %98
  ]

82:                                               ; preds = %46
  %83 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %84, align 8
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %86, i32 0, i32 2
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %87, align 8
  %89 = call i32 @xfs_attr_leaf_order(%struct.TYPE_20__* %85, %struct.TYPE_20__* %88)
  store i32 %89, i32* %12, align 4
  br label %106

90:                                               ; preds = %46
  %91 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %92, align 8
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %94, i32 0, i32 2
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %95, align 8
  %97 = call i32 @xfs_dir2_leafn_order(%struct.TYPE_20__* %93, %struct.TYPE_20__* %96)
  store i32 %97, i32* %12, align 4
  br label %106

98:                                               ; preds = %46
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %99, i32 0, i32 2
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %100, align 8
  %102 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %102, i32 0, i32 2
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %103, align 8
  %105 = call i32 @xfs_da_node_order(%struct.TYPE_20__* %101, %struct.TYPE_20__* %104)
  store i32 %105, i32* %12, align 4
  br label %106

106:                                              ; preds = %46, %98, %90, %82
  %107 = load i32, i32* %12, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %195

109:                                              ; preds = %106
  %110 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %111 = call i32 @trace_xfs_da_link_before(%struct.TYPE_24__* %110)
  %112 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = call i8* @cpu_to_be32(i64 %114)
  %116 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %116, i32 0, i32 1
  store i8* %115, i8** %117, align 8
  %118 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %118, i32 0, i32 2
  %120 = load i8*, i8** %119, align 8
  %121 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %121, i32 0, i32 2
  store i8* %120, i8** %122, align 8
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %123, i32 0, i32 2
  %125 = load i8*, i8** %124, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %127, label %188

127:                                              ; preds = %109
  %128 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %129 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %132 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %134, i32 0, i32 2
  %136 = load i8*, i8** %135, align 8
  %137 = call i64 @be32_to_cpu(i8* %136)
  %138 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %139 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @xfs_da_read_buf(i32 %130, i32 %133, i64 %137, i32 -1, %struct.TYPE_20__** %14, i32 %140)
  store i32 %141, i32* %13, align 4
  %142 = load i32, i32* %13, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %127
  %145 = load i32, i32* %13, align 4
  store i32 %145, i32* %4, align 4
  br label %294

146:                                              ; preds = %127
  %147 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %148 = icmp ne %struct.TYPE_20__* %147, null
  %149 = zext i1 %148 to i32
  %150 = call i32 @ASSERT(i32 %149)
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %152 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_23__*, %struct.TYPE_23__** %152, align 8
  store %struct.TYPE_23__* %153, %struct.TYPE_23__** %10, align 8
  %154 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = call i64 @be16_to_cpu(i64 %156)
  %158 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = call i64 @be16_to_cpu(i64 %160)
  %162 = icmp eq i64 %157, %161
  %163 = zext i1 %162 to i32
  %164 = call i32 @ASSERT(i32 %163)
  %165 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %166 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %165, i32 0, i32 1
  %167 = load i8*, i8** %166, align 8
  %168 = call i64 @be32_to_cpu(i8* %167)
  %169 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = icmp eq i64 %168, %171
  %173 = zext i1 %172 to i32
  %174 = call i32 @ASSERT(i32 %173)
  %175 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = call i8* @cpu_to_be32(i64 %177)
  %179 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %180 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %179, i32 0, i32 1
  store i8* %178, i8** %180, align 8
  %181 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %182 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %185 = call i32 @xfs_da_log_buf(i32 %183, %struct.TYPE_20__* %184, i32 0, i32 23)
  %186 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %187 = call i32 @xfs_da_buf_done(%struct.TYPE_20__* %186)
  br label %188

188:                                              ; preds = %146, %109
  %189 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = call i8* @cpu_to_be32(i64 %191)
  %193 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %194 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %193, i32 0, i32 2
  store i8* %192, i8** %194, align 8
  br label %279

195:                                              ; preds = %106
  %196 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %197 = call i32 @trace_xfs_da_link_after(%struct.TYPE_24__* %196)
  %198 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %199 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %198, i32 0, i32 1
  %200 = load i8*, i8** %199, align 8
  %201 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %202 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %201, i32 0, i32 1
  store i8* %200, i8** %202, align 8
  %203 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %203, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = call i8* @cpu_to_be32(i64 %205)
  %207 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %208 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %207, i32 0, i32 2
  store i8* %206, i8** %208, align 8
  %209 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %209, i32 0, i32 1
  %211 = load i8*, i8** %210, align 8
  %212 = icmp ne i8* %211, null
  br i1 %212, label %213, label %272

213:                                              ; preds = %195
  %214 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %215 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %218 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %221 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %220, i32 0, i32 1
  %222 = load i8*, i8** %221, align 8
  %223 = call i64 @be32_to_cpu(i8* %222)
  %224 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %225 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @xfs_da_read_buf(i32 %216, i32 %219, i64 %223, i32 -1, %struct.TYPE_20__** %14, i32 %226)
  store i32 %227, i32* %13, align 4
  %228 = load i32, i32* %13, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %232

230:                                              ; preds = %213
  %231 = load i32, i32* %13, align 4
  store i32 %231, i32* %4, align 4
  br label %294

232:                                              ; preds = %213
  %233 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %234 = icmp ne %struct.TYPE_20__* %233, null
  %235 = zext i1 %234 to i32
  %236 = call i32 @ASSERT(i32 %235)
  %237 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %238 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %237, i32 0, i32 0
  %239 = load %struct.TYPE_23__*, %struct.TYPE_23__** %238, align 8
  store %struct.TYPE_23__* %239, %struct.TYPE_23__** %10, align 8
  %240 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %241 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %244 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = icmp eq i64 %242, %245
  %247 = zext i1 %246 to i32
  %248 = call i32 @ASSERT(i32 %247)
  %249 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %250 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %249, i32 0, i32 2
  %251 = load i8*, i8** %250, align 8
  %252 = call i64 @be32_to_cpu(i8* %251)
  %253 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %254 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %253, i32 0, i32 1
  %255 = load i64, i64* %254, align 8
  %256 = icmp eq i64 %252, %255
  %257 = zext i1 %256 to i32
  %258 = call i32 @ASSERT(i32 %257)
  %259 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %260 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %259, i32 0, i32 1
  %261 = load i64, i64* %260, align 8
  %262 = call i8* @cpu_to_be32(i64 %261)
  %263 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %264 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %263, i32 0, i32 2
  store i8* %262, i8** %264, align 8
  %265 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %266 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %269 = call i32 @xfs_da_log_buf(i32 %267, %struct.TYPE_20__* %268, i32 0, i32 23)
  %270 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %271 = call i32 @xfs_da_buf_done(%struct.TYPE_20__* %270)
  br label %272

272:                                              ; preds = %232, %195
  %273 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %274 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %273, i32 0, i32 1
  %275 = load i64, i64* %274, align 8
  %276 = call i8* @cpu_to_be32(i64 %275)
  %277 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %278 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %277, i32 0, i32 1
  store i8* %276, i8** %278, align 8
  br label %279

279:                                              ; preds = %272, %188
  %280 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %281 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %284 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %283, i32 0, i32 2
  %285 = load %struct.TYPE_20__*, %struct.TYPE_20__** %284, align 8
  %286 = call i32 @xfs_da_log_buf(i32 %282, %struct.TYPE_20__* %285, i32 0, i32 23)
  %287 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %288 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %291 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %290, i32 0, i32 2
  %292 = load %struct.TYPE_20__*, %struct.TYPE_20__** %291, align 8
  %293 = call i32 @xfs_da_log_buf(i32 %289, %struct.TYPE_20__* %292, i32 0, i32 23)
  store i32 0, i32* %4, align 4
  br label %294

294:                                              ; preds = %279, %230, %144
  %295 = load i32, i32* %4, align 4
  ret i32 %295
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @be16_to_cpu(i64) #1

declare dso_local i32 @xfs_attr_leaf_order(%struct.TYPE_20__*, %struct.TYPE_20__*) #1

declare dso_local i32 @xfs_dir2_leafn_order(%struct.TYPE_20__*, %struct.TYPE_20__*) #1

declare dso_local i32 @xfs_da_node_order(%struct.TYPE_20__*, %struct.TYPE_20__*) #1

declare dso_local i32 @trace_xfs_da_link_before(%struct.TYPE_24__*) #1

declare dso_local i8* @cpu_to_be32(i64) #1

declare dso_local i32 @xfs_da_read_buf(i32, i32, i64, i32, %struct.TYPE_20__**, i32) #1

declare dso_local i64 @be32_to_cpu(i8*) #1

declare dso_local i32 @xfs_da_log_buf(i32, %struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @xfs_da_buf_done(%struct.TYPE_20__*) #1

declare dso_local i32 @trace_xfs_da_link_after(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
