; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_recovery.c_load_segment_summary.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_recovery.c_load_segment_summary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_sb_info = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.nilfs_segsum_info = type { i64, i64, i64, i64 }
%struct.buffer_head = type { i64 }
%struct.nilfs_segment_summary = type { i32, i32, i32 }

@NILFS_SEG_FAIL_IO = common dso_local global i32 0, align 4
@NILFS_SEGSUM_MAGIC = common dso_local global i64 0, align 8
@NILFS_SEG_FAIL_MAGIC = common dso_local global i32 0, align 4
@NILFS_SEG_FAIL_SEQ = common dso_local global i32 0, align 4
@NILFS_SEG_FAIL_CHECKSUM_FULL = common dso_local global i32 0, align 4
@NILFS_SEG_FAIL_CHECKSUM_SEGSUM = common dso_local global i32 0, align 4
@NILFS_SEG_FAIL_CONSISTENCY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nilfs_sb_info*, i32, i64, %struct.nilfs_segsum_info*, i32)* @load_segment_summary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_segment_summary(%struct.nilfs_sb_info* %0, i32 %1, i64 %2, %struct.nilfs_segsum_info* %3, i32 %4) #0 {
  %6 = alloca %struct.nilfs_sb_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.nilfs_segsum_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca %struct.nilfs_segment_summary*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.nilfs_sb_info* %0, %struct.nilfs_sb_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store %struct.nilfs_segsum_info* %3, %struct.nilfs_segsum_info** %9, align 8
  store i32 %4, i32* %10, align 4
  %19 = load i32, i32* @NILFS_SEG_FAIL_IO, align 4
  store i32 %19, i32* %18, align 4
  %20 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %6, align 8
  %21 = getelementptr inbounds %struct.nilfs_sb_info, %struct.nilfs_sb_info* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call %struct.buffer_head* @sb_bread(%struct.TYPE_4__* %22, i32 %23)
  store %struct.buffer_head* %24, %struct.buffer_head** %11, align 8
  %25 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %26 = icmp ne %struct.buffer_head* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %5
  br label %128

28:                                               ; preds = %5
  %29 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %30 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.nilfs_segment_summary*
  store %struct.nilfs_segment_summary* %32, %struct.nilfs_segment_summary** %12, align 8
  %33 = load %struct.nilfs_segment_summary*, %struct.nilfs_segment_summary** %12, align 8
  %34 = getelementptr inbounds %struct.nilfs_segment_summary, %struct.nilfs_segment_summary* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @le32_to_cpu(i32 %35)
  %37 = load i64, i64* @NILFS_SEGSUM_MAGIC, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %28
  %40 = load i32, i32* @NILFS_SEG_FAIL_MAGIC, align 4
  store i32 %40, i32* %18, align 4
  br label %125

41:                                               ; preds = %28
  %42 = load %struct.nilfs_segsum_info*, %struct.nilfs_segsum_info** %9, align 8
  %43 = load %struct.nilfs_segment_summary*, %struct.nilfs_segment_summary** %12, align 8
  %44 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %6, align 8
  %45 = getelementptr inbounds %struct.nilfs_sb_info, %struct.nilfs_sb_info* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @store_segsum_info(%struct.nilfs_segsum_info* %42, %struct.nilfs_segment_summary* %43, i32 %48)
  %50 = load i64, i64* %8, align 8
  %51 = load %struct.nilfs_segsum_info*, %struct.nilfs_segsum_info** %9, align 8
  %52 = getelementptr inbounds %struct.nilfs_segsum_info, %struct.nilfs_segsum_info* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %50, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %41
  %56 = load i32, i32* @NILFS_SEG_FAIL_SEQ, align 4
  store i32 %56, i32* %18, align 4
  br label %125

57:                                               ; preds = %41
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %78

60:                                               ; preds = %57
  store i64 4, i64* %13, align 8
  %61 = load %struct.nilfs_segsum_info*, %struct.nilfs_segsum_info** %9, align 8
  %62 = getelementptr inbounds %struct.nilfs_segsum_info, %struct.nilfs_segsum_info* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %6, align 8
  %65 = getelementptr inbounds %struct.nilfs_sb_info, %struct.nilfs_sb_info* %64, i32 0, i32 1
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = shl i64 %63, %68
  store i64 %69, i64* %15, align 8
  %70 = load %struct.nilfs_segsum_info*, %struct.nilfs_segsum_info** %9, align 8
  %71 = getelementptr inbounds %struct.nilfs_segsum_info, %struct.nilfs_segsum_info* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %14, align 8
  %73 = load %struct.nilfs_segment_summary*, %struct.nilfs_segment_summary** %12, align 8
  %74 = getelementptr inbounds %struct.nilfs_segment_summary, %struct.nilfs_segment_summary* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @le32_to_cpu(i32 %75)
  store i64 %76, i64* %17, align 8
  %77 = load i32, i32* @NILFS_SEG_FAIL_CHECKSUM_FULL, align 4
  store i32 %77, i32* %18, align 4
  br label %90

78:                                               ; preds = %57
  store i64 8, i64* %13, align 8
  %79 = load %struct.nilfs_segsum_info*, %struct.nilfs_segsum_info** %9, align 8
  %80 = getelementptr inbounds %struct.nilfs_segsum_info, %struct.nilfs_segsum_info* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %15, align 8
  %82 = load %struct.nilfs_segsum_info*, %struct.nilfs_segsum_info** %9, align 8
  %83 = getelementptr inbounds %struct.nilfs_segsum_info, %struct.nilfs_segsum_info* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %14, align 8
  %85 = load %struct.nilfs_segment_summary*, %struct.nilfs_segment_summary** %12, align 8
  %86 = getelementptr inbounds %struct.nilfs_segment_summary, %struct.nilfs_segment_summary* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @le32_to_cpu(i32 %87)
  store i64 %88, i64* %17, align 8
  %89 = load i32, i32* @NILFS_SEG_FAIL_CHECKSUM_SEGSUM, align 4
  store i32 %89, i32* %18, align 4
  br label %90

90:                                               ; preds = %78, %60
  %91 = load i64, i64* %14, align 8
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %101, label %93

93:                                               ; preds = %90
  %94 = load i64, i64* %14, align 8
  %95 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %6, align 8
  %96 = getelementptr inbounds %struct.nilfs_sb_info, %struct.nilfs_sb_info* %95, i32 0, i32 0
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp ugt i64 %94, %99
  br label %101

101:                                              ; preds = %93, %90
  %102 = phi i1 [ true, %90 ], [ %100, %93 ]
  %103 = zext i1 %102 to i32
  %104 = call i64 @unlikely(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %101
  %107 = load i32, i32* @NILFS_SEG_FAIL_CONSISTENCY, align 4
  store i32 %107, i32* %18, align 4
  br label %125

108:                                              ; preds = %101
  %109 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %6, align 8
  %110 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %111 = load i64, i64* %13, align 8
  %112 = load i64, i64* %15, align 8
  %113 = load i32, i32* %7, align 4
  %114 = load i64, i64* %14, align 8
  %115 = call i64 @calc_crc_cont(%struct.nilfs_sb_info* %109, %struct.buffer_head* %110, i64* %16, i64 %111, i64 %112, i32 %113, i64 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %108
  %118 = load i32, i32* @NILFS_SEG_FAIL_IO, align 4
  store i32 %118, i32* %18, align 4
  br label %125

119:                                              ; preds = %108
  %120 = load i64, i64* %16, align 8
  %121 = load i64, i64* %17, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %119
  store i32 0, i32* %18, align 4
  br label %124

124:                                              ; preds = %123, %119
  br label %125

125:                                              ; preds = %124, %117, %106, %55, %39
  %126 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %127 = call i32 @brelse(%struct.buffer_head* %126)
  br label %128

128:                                              ; preds = %125, %27
  %129 = load i32, i32* %18, align 4
  ret i32 %129
}

declare dso_local %struct.buffer_head* @sb_bread(%struct.TYPE_4__*, i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @store_segsum_info(%struct.nilfs_segsum_info*, %struct.nilfs_segment_summary*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @calc_crc_cont(%struct.nilfs_sb_info*, %struct.buffer_head*, i64*, i64, i64, i32, i64) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
