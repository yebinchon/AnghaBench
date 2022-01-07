; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2_block.c_xfs_dir2_block_lookup_int.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2_block.c_xfs_dir2_block_lookup_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i32, i32, i32, i32*, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { %struct.TYPE_22__*, i32 }
%struct.TYPE_22__ = type { i32 (%struct.TYPE_29__*, i32, i32)* }
%struct.TYPE_28__ = type { i32* }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_26__ = type { i32, i32 }

@XFS_DATA_FORK = common dso_local global i32 0, align 4
@XFS_DA_OP_OKNOENT = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@XFS_DIR2_NULL_DATAPTR = common dso_local global i32 0, align 4
@XFS_CMP_DIFFERENT = common dso_local global i32 0, align 4
@XFS_CMP_EXACT = common dso_local global i32 0, align 4
@XFS_CMP_CASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_29__*, %struct.TYPE_28__**, i32*)* @xfs_dir2_block_lookup_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_dir2_block_lookup_int(%struct.TYPE_29__* %0, %struct.TYPE_28__** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_29__*, align 8
  %6 = alloca %struct.TYPE_28__**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_25__*, align 8
  %11 = alloca %struct.TYPE_28__*, align 8
  %12 = alloca %struct.TYPE_27__*, align 8
  %13 = alloca %struct.TYPE_26__*, align 8
  %14 = alloca %struct.TYPE_24__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_23__*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %5, align 8
  store %struct.TYPE_28__** %1, %struct.TYPE_28__*** %6, align 8
  store i32* %2, i32** %7, align 8
  %23 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %23, i32 0, i32 4
  %25 = load %struct.TYPE_24__*, %struct.TYPE_24__** %24, align 8
  store %struct.TYPE_24__* %25, %struct.TYPE_24__** %14, align 8
  %26 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %21, align 8
  %29 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %30 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_23__*, %struct.TYPE_23__** %30, align 8
  store %struct.TYPE_23__* %31, %struct.TYPE_23__** %20, align 8
  %32 = load i32*, i32** %21, align 8
  %33 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %34 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %35 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @XFS_DATA_FORK, align 4
  %38 = call i32 @xfs_da_read_buf(i32* %32, %struct.TYPE_24__* %33, i32 %36, i32 -1, %struct.TYPE_28__** %11, i32 %37)
  store i32 %38, i32* %15, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %3
  %41 = load i32, i32* %15, align 4
  store i32 %41, i32* %4, align 4
  br label %233

42:                                               ; preds = %3
  %43 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %44 = icmp ne %struct.TYPE_28__* %43, null
  %45 = zext i1 %44 to i32
  %46 = call i32 @ASSERT(i32 %45)
  %47 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  store i32* %49, i32** %9, align 8
  %50 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %51 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %52 = call i32 @xfs_dir2_data_check(%struct.TYPE_24__* %50, %struct.TYPE_28__* %51)
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %54 = load i32*, i32** %9, align 8
  %55 = call %struct.TYPE_27__* @xfs_dir2_block_tail_p(%struct.TYPE_23__* %53, i32* %54)
  store %struct.TYPE_27__* %55, %struct.TYPE_27__** %12, align 8
  %56 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %57 = call %struct.TYPE_25__* @xfs_dir2_block_leaf_p(%struct.TYPE_27__* %56)
  store %struct.TYPE_25__* %57, %struct.TYPE_25__** %10, align 8
  store i32 0, i32* %18, align 4
  %58 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @be32_to_cpu(i32 %60)
  %62 = sub nsw i32 %61, 1
  store i32 %62, i32* %17, align 4
  br label %63

63:                                               ; preds = %113, %42
  %64 = load i32, i32* %18, align 4
  %65 = load i32, i32* %17, align 4
  %66 = icmp sle i32 %64, %65
  %67 = zext i1 %66 to i32
  %68 = call i32 @ASSERT(i32 %67)
  %69 = load i32, i32* %18, align 4
  %70 = load i32, i32* %17, align 4
  %71 = add nsw i32 %69, %70
  %72 = ashr i32 %71, 1
  store i32 %72, i32* %19, align 4
  %73 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %74 = load i32, i32* %19, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @be32_to_cpu(i32 %78)
  store i32 %79, i32* %16, align 4
  %80 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp eq i32 %79, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %63
  br label %114

85:                                               ; preds = %63
  %86 = load i32, i32* %16, align 4
  %87 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp slt i32 %86, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %85
  %92 = load i32, i32* %19, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %18, align 4
  br label %97

94:                                               ; preds = %85
  %95 = load i32, i32* %19, align 4
  %96 = sub nsw i32 %95, 1
  store i32 %96, i32* %17, align 4
  br label %97

97:                                               ; preds = %94, %91
  %98 = load i32, i32* %18, align 4
  %99 = load i32, i32* %17, align 4
  %100 = icmp sgt i32 %98, %99
  br i1 %100, label %101, label %113

101:                                              ; preds = %97
  %102 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @XFS_DA_OP_OKNOENT, align 4
  %106 = and i32 %104, %105
  %107 = call i32 @ASSERT(i32 %106)
  %108 = load i32*, i32** %21, align 8
  %109 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %110 = call i32 @xfs_da_brelse(i32* %108, %struct.TYPE_28__* %109)
  %111 = load i32, i32* @ENOENT, align 4
  %112 = call i32 @XFS_ERROR(i32 %111)
  store i32 %112, i32* %4, align 4
  br label %233

113:                                              ; preds = %97
  br label %63

114:                                              ; preds = %84
  br label %115

115:                                              ; preds = %133, %114
  %116 = load i32, i32* %19, align 4
  %117 = icmp sgt i32 %116, 0
  br i1 %117, label %118, label %131

118:                                              ; preds = %115
  %119 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %120 = load i32, i32* %19, align 4
  %121 = sub nsw i32 %120, 1
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %119, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @be32_to_cpu(i32 %125)
  %127 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp eq i32 %126, %129
  br label %131

131:                                              ; preds = %118, %115
  %132 = phi i1 [ false, %115 ], [ %130, %118 ]
  br i1 %132, label %133, label %136

133:                                              ; preds = %131
  %134 = load i32, i32* %19, align 4
  %135 = add nsw i32 %134, -1
  store i32 %135, i32* %19, align 4
  br label %115

136:                                              ; preds = %131
  br label %137

137:                                              ; preds = %211, %136
  %138 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %139 = load i32, i32* %19, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @be32_to_cpu(i32 %143)
  store i32 %144, i32* %8, align 4
  %145 = load i32, i32* @XFS_DIR2_NULL_DATAPTR, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %137
  br label %193

148:                                              ; preds = %137
  %149 = load i32*, i32** %9, align 8
  %150 = bitcast i32* %149 to i8*
  %151 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %152 = load i32, i32* %8, align 4
  %153 = call i32 @xfs_dir2_dataptr_to_off(%struct.TYPE_23__* %151, i32 %152)
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8, i8* %150, i64 %154
  %156 = bitcast i8* %155 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %156, %struct.TYPE_26__** %13, align 8
  %157 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %158 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_22__*, %struct.TYPE_22__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %159, i32 0, i32 0
  %161 = load i32 (%struct.TYPE_29__*, i32, i32)*, i32 (%struct.TYPE_29__*, i32, i32)** %160, align 8
  %162 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %163 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %164 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %167 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 %161(%struct.TYPE_29__* %162, i32 %165, i32 %168)
  store i32 %169, i32* %22, align 4
  %170 = load i32, i32* %22, align 4
  %171 = load i32, i32* @XFS_CMP_DIFFERENT, align 4
  %172 = icmp ne i32 %170, %171
  br i1 %172, label %173, label %192

173:                                              ; preds = %148
  %174 = load i32, i32* %22, align 4
  %175 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = icmp ne i32 %174, %177
  br i1 %178, label %179, label %192

179:                                              ; preds = %173
  %180 = load i32, i32* %22, align 4
  %181 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %181, i32 0, i32 2
  store i32 %180, i32* %182, align 8
  %183 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %184 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %6, align 8
  store %struct.TYPE_28__* %183, %struct.TYPE_28__** %184, align 8
  %185 = load i32, i32* %19, align 4
  %186 = load i32*, i32** %7, align 8
  store i32 %185, i32* %186, align 4
  %187 = load i32, i32* %22, align 4
  %188 = load i32, i32* @XFS_CMP_EXACT, align 4
  %189 = icmp eq i32 %187, %188
  br i1 %189, label %190, label %191

190:                                              ; preds = %179
  store i32 0, i32* %4, align 4
  br label %233

191:                                              ; preds = %179
  br label %192

192:                                              ; preds = %191, %173, %148
  br label %193

193:                                              ; preds = %192, %147
  %194 = load i32, i32* %19, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %19, align 4
  %196 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %197 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @be32_to_cpu(i32 %198)
  %200 = icmp slt i32 %195, %199
  br i1 %200, label %201, label %211

201:                                              ; preds = %193
  %202 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %203 = load i32, i32* %19, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @be32_to_cpu(i32 %207)
  %209 = load i32, i32* %16, align 4
  %210 = icmp eq i32 %208, %209
  br label %211

211:                                              ; preds = %201, %193
  %212 = phi i1 [ false, %193 ], [ %210, %201 ]
  br i1 %212, label %137, label %213

213:                                              ; preds = %211
  %214 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @XFS_DA_OP_OKNOENT, align 4
  %218 = and i32 %216, %217
  %219 = call i32 @ASSERT(i32 %218)
  %220 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 8
  %223 = sext i32 %222 to i64
  %224 = load i64, i64* @XFS_CMP_CASE, align 8
  %225 = icmp eq i64 %223, %224
  br i1 %225, label %226, label %227

226:                                              ; preds = %213
  store i32 0, i32* %4, align 4
  br label %233

227:                                              ; preds = %213
  %228 = load i32*, i32** %21, align 8
  %229 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %230 = call i32 @xfs_da_brelse(i32* %228, %struct.TYPE_28__* %229)
  %231 = load i32, i32* @ENOENT, align 4
  %232 = call i32 @XFS_ERROR(i32 %231)
  store i32 %232, i32* %4, align 4
  br label %233

233:                                              ; preds = %227, %226, %190, %101, %40
  %234 = load i32, i32* %4, align 4
  ret i32 %234
}

declare dso_local i32 @xfs_da_read_buf(i32*, %struct.TYPE_24__*, i32, i32, %struct.TYPE_28__**, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_dir2_data_check(%struct.TYPE_24__*, %struct.TYPE_28__*) #1

declare dso_local %struct.TYPE_27__* @xfs_dir2_block_tail_p(%struct.TYPE_23__*, i32*) #1

declare dso_local %struct.TYPE_25__* @xfs_dir2_block_leaf_p(%struct.TYPE_27__*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @xfs_da_brelse(i32*, %struct.TYPE_28__*) #1

declare dso_local i32 @XFS_ERROR(i32) #1

declare dso_local i32 @xfs_dir2_dataptr_to_off(%struct.TYPE_23__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
