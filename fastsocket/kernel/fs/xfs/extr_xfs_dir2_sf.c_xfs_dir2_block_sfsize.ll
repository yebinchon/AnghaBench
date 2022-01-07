; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2_sf.c_xfs_dir2_block_sfsize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2_sf.c_xfs_dir2_block_sfsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32* }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32, i8*, i32 }

@XFS_DIR2_NULL_DATAPTR = common dso_local global i32 0, align 4
@XFS_DIR2_MAX_SHORT_INUM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_dir2_block_sfsize(%struct.TYPE_12__* %0, i32* %1, %struct.TYPE_13__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %7, align 8
  store i64 0, i64* %19, align 8
  store i32 0, i32* %20, align 4
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %17, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %11, align 4
  %24 = load i32*, i32** %17, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = call %struct.TYPE_16__* @xfs_dir2_block_tail_p(i32* %24, i32* %25)
  store %struct.TYPE_16__* %26, %struct.TYPE_16__** %10, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %28 = call %struct.TYPE_14__* @xfs_dir2_block_leaf_p(%struct.TYPE_16__* %27)
  store %struct.TYPE_14__* %28, %struct.TYPE_14__** %9, align 8
  store i32 0, i32* %13, align 4
  br label %29

29:                                               ; preds = %144, %3
  %30 = load i32, i32* %13, align 4
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @be32_to_cpu(i32 %33)
  %35 = icmp slt i32 %30, %34
  br i1 %35, label %36, label %147

36:                                               ; preds = %29
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %38 = load i32, i32* %13, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @be32_to_cpu(i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* @XFS_DIR2_NULL_DATAPTR, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  br label %144

47:                                               ; preds = %36
  %48 = load i32*, i32** %6, align 8
  %49 = bitcast i32* %48 to i8*
  %50 = load i32*, i32** %17, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @xfs_dir2_dataptr_to_off(i32* %50, i32 %51)
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %49, i64 %53
  %55 = bitcast i8* %54 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %55, %struct.TYPE_15__** %12, align 8
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %68

60:                                               ; preds = %47
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 0
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 46
  br label %68

68:                                               ; preds = %60, %47
  %69 = phi i1 [ false, %47 ], [ %67, %60 ]
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %15, align 4
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp eq i32 %73, 2
  br i1 %74, label %75, label %91

75:                                               ; preds = %68
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 0
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 46
  br i1 %82, label %83, label %91

83:                                               ; preds = %75
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 1
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 46
  br label %91

91:                                               ; preds = %83, %75, %68
  %92 = phi i1 [ false, %75 ], [ false, %68 ], [ %90, %83 ]
  %93 = zext i1 %92 to i32
  store i32 %93, i32* %16, align 4
  %94 = load i32, i32* %15, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %107, label %96

96:                                               ; preds = %91
  %97 = load i32, i32* %16, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %107, label %99

99:                                               ; preds = %96
  %100 = load i32, i32* %11, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %11, align 4
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %18, align 4
  %106 = add nsw i32 %105, %104
  store i32 %106, i32* %18, align 4
  br label %116

107:                                              ; preds = %96, %91
  %108 = load i32, i32* %16, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %107
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = call i64 @be64_to_cpu(i32 %113)
  store i64 %114, i64* %19, align 8
  br label %115

115:                                              ; preds = %110, %107
  br label %116

116:                                              ; preds = %115, %99
  %117 = load i32, i32* %14, align 4
  %118 = call i32 @xfs_dir2_sf_hdr_size(i32 %117)
  %119 = load i32, i32* %11, align 4
  %120 = add nsw i32 %118, %119
  %121 = load i32, i32* %11, align 4
  %122 = mul nsw i32 %121, 4
  %123 = add nsw i32 %120, %122
  %124 = load i32, i32* %18, align 4
  %125 = add nsw i32 %123, %124
  %126 = load i32, i32* %14, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %116
  %129 = load i32, i32* %11, align 4
  %130 = mul nsw i32 4, %129
  br label %134

131:                                              ; preds = %116
  %132 = load i32, i32* %11, align 4
  %133 = mul nsw i32 4, %132
  br label %134

134:                                              ; preds = %131, %128
  %135 = phi i32 [ %130, %128 ], [ %133, %131 ]
  %136 = add nsw i32 %125, %135
  store i32 %136, i32* %20, align 4
  %137 = load i32, i32* %20, align 4
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %139 = call i32 @XFS_IFORK_DSIZE(%struct.TYPE_12__* %138)
  %140 = icmp sgt i32 %137, %139
  br i1 %140, label %141, label %143

141:                                              ; preds = %134
  %142 = load i32, i32* %20, align 4
  store i32 %142, i32* %4, align 4
  br label %160

143:                                              ; preds = %134
  br label %144

144:                                              ; preds = %143, %46
  %145 = load i32, i32* %13, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %13, align 4
  br label %29

147:                                              ; preds = %29
  %148 = load i32, i32* %11, align 4
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 0
  store i32 %148, i32* %150, align 4
  %151 = load i32, i32* %14, align 4
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 1
  store i32 %151, i32* %153, align 4
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %155 = bitcast %struct.TYPE_13__* %154 to i32*
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 2
  %158 = call i32 @xfs_dir2_sf_put_inumber(i32* %155, i64* %19, i32* %157)
  %159 = load i32, i32* %20, align 4
  store i32 %159, i32* %4, align 4
  br label %160

160:                                              ; preds = %147, %141
  %161 = load i32, i32* %4, align 4
  ret i32 %161
}

declare dso_local %struct.TYPE_16__* @xfs_dir2_block_tail_p(i32*, i32*) #1

declare dso_local %struct.TYPE_14__* @xfs_dir2_block_leaf_p(%struct.TYPE_16__*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @xfs_dir2_dataptr_to_off(i32*, i32) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i32 @xfs_dir2_sf_hdr_size(i32) #1

declare dso_local i32 @XFS_IFORK_DSIZE(%struct.TYPE_12__*) #1

declare dso_local i32 @xfs_dir2_sf_put_inumber(i32*, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
