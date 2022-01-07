; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2_node.c_xfs_dir2_leafn_moveents.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2_node.c_xfs_dir2_leafn_moveents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32* }
%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__, %struct.TYPE_16__* }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32 }

@XFS_DIR2_NULL_DATAPTR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*, %struct.TYPE_19__*, i32, %struct.TYPE_19__*, i32, i32)* @xfs_dir2_leafn_moveents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfs_dir2_leafn_moveents(%struct.TYPE_20__* %0, %struct.TYPE_19__* %1, i32 %2, %struct.TYPE_19__* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_18__*, align 8
  %14 = alloca %struct.TYPE_18__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %7, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_19__* %3, %struct.TYPE_19__** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %12, align 4
  %22 = call i32 @trace_xfs_dir2_leafn_moveents(%struct.TYPE_20__* %18, i32 %19, i32 %20, i32 %21)
  %23 = load i32, i32* %12, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %6
  br label %220

26:                                               ; preds = %6
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %16, align 8
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %31, align 8
  store %struct.TYPE_18__* %32, %struct.TYPE_18__** %14, align 8
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %34, align 8
  store %struct.TYPE_18__* %35, %struct.TYPE_18__** %13, align 8
  %36 = load i32, i32* %11, align 4
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @be16_to_cpu(i32 %40)
  %42 = icmp slt i32 %36, %41
  br i1 %42, label %43, label %83

43:                                               ; preds = %26
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %45, align 8
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %12, align 4
  %49 = add nsw i32 %47, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i64 %50
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %53, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i64 %56
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @be16_to_cpu(i32 %61)
  %63 = load i32, i32* %11, align 4
  %64 = sub nsw i32 %62, %63
  %65 = sext i32 %64 to i64
  %66 = mul i64 %65, 4
  %67 = trunc i64 %66 to i32
  %68 = call i32 @memmove(%struct.TYPE_16__* %51, %struct.TYPE_16__* %57, i32 %67)
  %69 = load i32*, i32** %16, align 8
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %12, align 4
  %73 = add nsw i32 %71, %72
  %74 = load i32, i32* %12, align 4
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @be16_to_cpu(i32 %78)
  %80 = add nsw i32 %74, %79
  %81 = sub nsw i32 %80, 1
  %82 = call i32 @xfs_dir2_leaf_log_ents(i32* %69, %struct.TYPE_19__* %70, i32 %73, i32 %81)
  br label %83

83:                                               ; preds = %43, %26
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %117

89:                                               ; preds = %83
  %90 = load i32, i32* %9, align 4
  store i32 %90, i32* %17, align 4
  store i32 0, i32* %15, align 4
  br label %91

91:                                               ; preds = %113, %89
  %92 = load i32, i32* %17, align 4
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* %12, align 4
  %95 = add nsw i32 %93, %94
  %96 = icmp slt i32 %92, %95
  br i1 %96, label %97, label %116

97:                                               ; preds = %91
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %99, align 8
  %101 = load i32, i32* %17, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i64 @be32_to_cpu(i32 %105)
  %107 = load i64, i64* @XFS_DIR2_NULL_DATAPTR, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %97
  %110 = load i32, i32* %15, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %15, align 4
  br label %112

112:                                              ; preds = %109, %97
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %17, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %17, align 4
  br label %91

116:                                              ; preds = %91
  br label %118

117:                                              ; preds = %83
  store i32 0, i32* %15, align 4
  br label %118

118:                                              ; preds = %117, %116
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %120, align 8
  %122 = load i32, i32* %11, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i64 %123
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %126, align 8
  %128 = load i32, i32* %9, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i64 %129
  %131 = load i32, i32* %12, align 4
  %132 = sext i32 %131 to i64
  %133 = mul i64 %132, 4
  %134 = trunc i64 %133 to i32
  %135 = call i32 @memcpy(%struct.TYPE_16__* %124, %struct.TYPE_16__* %130, i32 %134)
  %136 = load i32*, i32** %16, align 8
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %138 = load i32, i32* %11, align 4
  %139 = load i32, i32* %11, align 4
  %140 = load i32, i32* %12, align 4
  %141 = add nsw i32 %139, %140
  %142 = sub nsw i32 %141, 1
  %143 = call i32 @xfs_dir2_leaf_log_ents(i32* %136, %struct.TYPE_19__* %137, i32 %138, i32 %142)
  %144 = load i32, i32* %9, align 4
  %145 = load i32, i32* %12, align 4
  %146 = add nsw i32 %144, %145
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @be16_to_cpu(i32 %150)
  %152 = icmp slt i32 %146, %151
  br i1 %152, label %153, label %181

153:                                              ; preds = %118
  %154 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %155 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %154, i32 0, i32 1
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %155, align 8
  %157 = load i32, i32* %9, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i64 %158
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 1
  %162 = load %struct.TYPE_16__*, %struct.TYPE_16__** %161, align 8
  %163 = load i32, i32* %9, align 4
  %164 = load i32, i32* %12, align 4
  %165 = add nsw i32 %163, %164
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i64 %166
  %168 = load i32, i32* %12, align 4
  %169 = sext i32 %168 to i64
  %170 = mul i64 %169, 4
  %171 = trunc i64 %170 to i32
  %172 = call i32 @memmove(%struct.TYPE_16__* %159, %struct.TYPE_16__* %167, i32 %171)
  %173 = load i32*, i32** %16, align 8
  %174 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %175 = load i32, i32* %9, align 4
  %176 = load i32, i32* %9, align 4
  %177 = load i32, i32* %12, align 4
  %178 = add nsw i32 %176, %177
  %179 = sub nsw i32 %178, 1
  %180 = call i32 @xfs_dir2_leaf_log_ents(i32* %173, %struct.TYPE_19__* %174, i32 %175, i32 %179)
  br label %181

181:                                              ; preds = %153, %118
  %182 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %183 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %183, i32 0, i32 0
  %185 = load i32, i32* %12, align 4
  %186 = sub nsw i32 0, %185
  %187 = call i32 @be16_add_cpu(i32* %184, i32 %186)
  %188 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %189 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %189, i32 0, i32 1
  %191 = load i32, i32* %15, align 4
  %192 = sub nsw i32 0, %191
  %193 = call i32 @be16_add_cpu(i32* %190, i32 %192)
  %194 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %195 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %195, i32 0, i32 0
  %197 = load i32, i32* %12, align 4
  %198 = call i32 @be16_add_cpu(i32* %196, i32 %197)
  %199 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %200 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %200, i32 0, i32 1
  %202 = load i32, i32* %15, align 4
  %203 = call i32 @be16_add_cpu(i32* %201, i32 %202)
  %204 = load i32*, i32** %16, align 8
  %205 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %206 = call i32 @xfs_dir2_leaf_log_header(i32* %204, %struct.TYPE_19__* %205)
  %207 = load i32*, i32** %16, align 8
  %208 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %209 = call i32 @xfs_dir2_leaf_log_header(i32* %207, %struct.TYPE_19__* %208)
  %210 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %211 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %214 = call i32 @xfs_dir2_leafn_check(i32 %212, %struct.TYPE_19__* %213)
  %215 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %216 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %219 = call i32 @xfs_dir2_leafn_check(i32 %217, %struct.TYPE_19__* %218)
  br label %220

220:                                              ; preds = %181, %25
  ret void
}

declare dso_local i32 @trace_xfs_dir2_leafn_moveents(%struct.TYPE_20__*, i32, i32, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @memmove(%struct.TYPE_16__*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @xfs_dir2_leaf_log_ents(i32*, %struct.TYPE_19__*, i32, i32) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_16__*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @be16_add_cpu(i32*, i32) #1

declare dso_local i32 @xfs_dir2_leaf_log_header(i32*, %struct.TYPE_19__*) #1

declare dso_local i32 @xfs_dir2_leafn_check(i32, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
