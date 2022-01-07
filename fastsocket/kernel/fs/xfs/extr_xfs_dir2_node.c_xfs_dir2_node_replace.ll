; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2_node.c_xfs_dir2_node_replace.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2_node.c_xfs_dir2_node_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64, i32, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_21__ = type { i64, i64, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { %struct.TYPE_29__* }
%struct.TYPE_29__ = type { %struct.TYPE_26__, %struct.TYPE_30__* }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_32__ = type { i32, %struct.TYPE_28__, %struct.TYPE_27__, %struct.TYPE_23__*, i32, i32, %struct.TYPE_22__* }
%struct.TYPE_28__ = type { i32, %struct.TYPE_21__* }
%struct.TYPE_27__ = type { %struct.TYPE_24__* }

@EEXIST = common dso_local global i32 0, align 4
@XFS_DIR2_LEAFN_MAGIC = common dso_local global i64 0, align 8
@XFS_DIR2_DATA_MAGIC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_dir2_node_replace(%struct.TYPE_22__* %0) #0 {
  %2 = alloca %struct.TYPE_22__*, align 8
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.TYPE_29__*, align 8
  %5 = alloca %struct.TYPE_31__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_29__*, align 8
  %10 = alloca %struct.TYPE_30__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_32__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %2, align 8
  %13 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %14 = call i32 @trace_xfs_dir2_node_replace(%struct.TYPE_22__* %13)
  %15 = call %struct.TYPE_32__* (...) @xfs_da_state_alloc()
  store %struct.TYPE_32__* %15, %struct.TYPE_32__** %12, align 8
  %16 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %17 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %18 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %17, i32 0, i32 6
  store %struct.TYPE_22__* %16, %struct.TYPE_22__** %18, align 8
  %19 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %24 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %25 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %24, i32 0, i32 3
  store %struct.TYPE_23__* %23, %struct.TYPE_23__** %25, align 8
  %26 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %27 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %26, i32 0, i32 3
  %28 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %31, i32 0, i32 5
  store i32 %30, i32* %32, align 4
  %33 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %33, i32 0, i32 3
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 8
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %8, align 8
  %43 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %44 = call i32 @xfs_da_node_lookup_int(%struct.TYPE_32__* %43, i32* %11)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %1
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %11, align 4
  br label %49

49:                                               ; preds = %47, %1
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* @EEXIST, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %137

53:                                               ; preds = %49
  %54 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %56, align 8
  %58 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sub nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i64 %63
  store %struct.TYPE_21__* %64, %struct.TYPE_21__** %3, align 8
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @XFS_DIR2_LEAFN_MAGIC, align 8
  %69 = icmp eq i64 %67, %68
  %70 = zext i1 %69 to i32
  %71 = call i32 @ASSERT(i32 %70)
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_24__*, %struct.TYPE_24__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_29__*, %struct.TYPE_29__** %75, align 8
  store %struct.TYPE_29__* %76, %struct.TYPE_29__** %9, align 8
  %77 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_30__*, %struct.TYPE_30__** %78, align 8
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %79, i64 %82
  store %struct.TYPE_30__* %83, %struct.TYPE_30__** %10, align 8
  %84 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @ASSERT(i32 %86)
  %88 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_24__*, %struct.TYPE_24__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_29__*, %struct.TYPE_29__** %92, align 8
  store %struct.TYPE_29__* %93, %struct.TYPE_29__** %4, align 8
  %94 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i64 @be32_to_cpu(i32 %97)
  %99 = load i64, i64* @XFS_DIR2_DATA_MAGIC, align 8
  %100 = icmp eq i64 %98, %99
  %101 = zext i1 %100 to i32
  %102 = call i32 @ASSERT(i32 %101)
  %103 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %104 = bitcast %struct.TYPE_29__* %103 to i8*
  %105 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %106 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %105, i32 0, i32 3
  %107 = load %struct.TYPE_23__*, %struct.TYPE_23__** %106, align 8
  %108 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @be32_to_cpu(i32 %110)
  %112 = call i32 @xfs_dir2_dataptr_to_off(%struct.TYPE_23__* %107, i64 %111)
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %104, i64 %113
  %115 = bitcast i8* %114 to %struct.TYPE_31__*
  store %struct.TYPE_31__* %115, %struct.TYPE_31__** %5, align 8
  %116 = load i64, i64* %8, align 8
  %117 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i64 @be64_to_cpu(i32 %119)
  %121 = icmp ne i64 %116, %120
  %122 = zext i1 %121 to i32
  %123 = call i32 @ASSERT(i32 %122)
  %124 = load i64, i64* %8, align 8
  %125 = call i32 @cpu_to_be64(i64 %124)
  %126 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 4
  %128 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %132 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_24__*, %struct.TYPE_24__** %133, align 8
  %135 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %136 = call i32 @xfs_dir2_data_log_entry(i32 %130, %struct.TYPE_24__* %134, %struct.TYPE_31__* %135)
  store i32 0, i32* %11, align 4
  br label %155

137:                                              ; preds = %49
  %138 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %139 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %154

142:                                              ; preds = %137
  %143 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %147 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_24__*, %struct.TYPE_24__** %148, align 8
  %150 = call i32 @xfs_da_brelse(i32 %145, %struct.TYPE_24__* %149)
  %151 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %152 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %152, i32 0, i32 0
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %153, align 8
  br label %154

154:                                              ; preds = %142, %137
  br label %155

155:                                              ; preds = %154, %53
  store i32 0, i32* %7, align 4
  br label %156

156:                                              ; preds = %185, %155
  %157 = load i32, i32* %7, align 4
  %158 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %159 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = icmp slt i32 %157, %161
  br i1 %162, label %163, label %188

163:                                              ; preds = %156
  %164 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %165 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %168 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %168, i32 0, i32 1
  %170 = load %struct.TYPE_21__*, %struct.TYPE_21__** %169, align 8
  %171 = load i32, i32* %7, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %173, i32 0, i32 2
  %175 = load %struct.TYPE_24__*, %struct.TYPE_24__** %174, align 8
  %176 = call i32 @xfs_da_brelse(i32 %166, %struct.TYPE_24__* %175)
  %177 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %178 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %178, i32 0, i32 1
  %180 = load %struct.TYPE_21__*, %struct.TYPE_21__** %179, align 8
  %181 = load i32, i32* %7, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %183, i32 0, i32 2
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %184, align 8
  br label %185

185:                                              ; preds = %163
  %186 = load i32, i32* %7, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %7, align 4
  br label %156

188:                                              ; preds = %156
  %189 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %190 = call i32 @xfs_da_state_free(%struct.TYPE_32__* %189)
  %191 = load i32, i32* %11, align 4
  ret i32 %191
}

declare dso_local i32 @trace_xfs_dir2_node_replace(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_32__* @xfs_da_state_alloc(...) #1

declare dso_local i32 @xfs_da_node_lookup_int(%struct.TYPE_32__*, i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @xfs_dir2_dataptr_to_off(%struct.TYPE_23__*, i64) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i32 @cpu_to_be64(i64) #1

declare dso_local i32 @xfs_dir2_data_log_entry(i32, %struct.TYPE_24__*, %struct.TYPE_31__*) #1

declare dso_local i32 @xfs_da_brelse(i32, %struct.TYPE_24__*) #1

declare dso_local i32 @xfs_da_state_free(%struct.TYPE_32__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
